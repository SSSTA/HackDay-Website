#encoding=utf-8
from flask import Flask, request, render_template
from pymongo import MongoClient

app = Flask(__name__)
mongo = MongoClient()
hackday_db = mongo.hackday

@app.route('/hackers.html')
def show_hackers():
    hackers = hackday_db.hacker.find()
    count = hackers.count()
    return render_template('hackers.tpl', hackers=hackers, count=count)

@app.route('/showtime.html')
def showtime():
    productions = hackday_db.production.find()
    count = productions.count()
    return render_template('showtime.tpl', productions=productions, count=count)

@app.route('/apply.html', methods=["POST"])
def handle_apply():
    pass


@app.route('/confirm.html')
def handle_confirm():
    pass

def main():
    app.run(debug=True)

if __name__ == '__main__':
    main()
