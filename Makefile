clean:
	rm ./*~ -r
	rm html -rf
	rm __pycache__ -rf
html:
	python3 gen.py
