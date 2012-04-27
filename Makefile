CWD=$(shell pwd)

install: requirements.txt
		pip install -r requirements.txt

html: *.md
		mkdir -p html
		markdown_py 2012_06_roommate.md > html/2012_06_roommate.html

preview: html
		google-chrome file://$(CWD)/html/2012_06_roommate.html
