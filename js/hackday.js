$(document).ready(function(){

  function submit(){
    var shows = [];
    var name = document.getElementById("name").value;
    var telephone = document.getElementById("telephone").value;
    var email = document.getElementById("email").value;
    var self_info = document.getElementById("self_info").value;
    var role = GetRadioValue("role");
    if((name=="")||(telephone=="")||(email=="")||(telephone!="" && checkTelephone(telephone)==false)||(email!="" && checkEmail(email)==false))
    {
      if(name=="")
      {
	shows.push('名字不能为空！<br/>');
      }
      if(telephone=="")
      {
	shows.push('手机号不可为空！<br/>');
      }
      if(email=="")
      {

        shows.push('邮箱不可为空<br/>');
      }
      if(telephone!="" && checkTelephone(telephone)==false)
      {
        shows.push('手机号码格式不正确！<br/>');
      }
      if(email!="" && checkEmail(email)==false)
      {
        shows.push('邮箱格式不正确！<br/>');
      }
      humane.log(shows);
    }
    else
    {
      $.ajax({
        url:'apply/submit',
        type:'POST',
        data:{
          name:name,
          telephone:telephone,
          email:email,
          role:role,
          self_info:self_info
        },
        success:function(data){
          if(data['success']){
            if(role === null){
              role = 'others';
            }
            var a = '<div class="person grey" id = "person-unique"><h3>'+name+'</h3><p>电话:'+telephone+'</p><p>email：'+email+'</p><h3 class="role">'+role+'</h3></div>';
            var b = '<div id = "modal-unique" class = "modal hide fade" tabindex = "-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"><div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button><h3 id="myModalLabel">'+name+'</h3></div><div class="modal-body"><p>'+self_info+'</p></div><div class="modal-footer"><button class="btn" data-dismiss="modal" aria-hidden="true">Close</button></div></div>';
            $('#person-bar').append(a);
            $('#modals').append(b);            
          }
          humane.log(data);
        }
      });
    }
  }
  function checkTelephone(tel)
  {
    if(!isNaN(tel))
    {
      if(tel.length==11 || tel.length==8 || tel.length==7)
      {
	return true;
      }
      else{
	return false;
      }
    }
    else{
      return false;
    }
  }


  function checkEmail(str)
  {
    var emailArray;  
    var patterns = /^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/; 
    emailArray=str.split(",");
    for(i=0;i<emailArray.length;i++)
    {
      if(patterns.test(emailArray[i]))//邮件地址符合
      {
        //alert(str+",邮件地址格式正确！");
        return true;
      }
      else   //邮件地址不符合
      {   
        return false;
      }
    }
  }

  function GetRadioValue(RadioName){
    
    var obj;    
    obj=document.getElementsByName(RadioName);
    if(obj!=null){
      var i;
      for(i=0;i<obj.length;i++){
        if(obj[i].checked){
          return obj[i].value;            
        }
      }
    }
    return null;
  }
  $('#submit_button').click(function(){
      submit();
  });
  $("#apply").hide();
  $("#apply-toggle").click(function(event){
    $("#apply").slideToggle();
  });
  humane.baseCls = "humane-bigbox";
  $(document).delegate('.person','click',function(event){
    $("#"+this.id.replace("person","modal")).modal("show");
  });
});

