CWD=$(shell pwd)

install:
		pip install -r requirements.txt

html:
		mkdir -p html
		markdown_py 2012_06_roommate.md > html/2012_06_roommate.html

preview: html
		google-chrome file://$(CWD)/html/2012_06_roommate.html
