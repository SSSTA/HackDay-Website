clean:
	rm ./*~ -r
	rm html -rf
html:
	python3 gen.py
