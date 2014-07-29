#!/usr/bin/python3
#encoding=utf-8
#Generate static HTML files

from jinja2 import Environment, FileSystemLoader
from os import mkdir
from os.path import exists

STATIC_PATH = "html"


def main():
    templates = ("apply.tpl", "index.tpl", "info.tpl", "403.tpl", "404.tpl", "405.tpl")
    env = Environment(loader=FileSystemLoader('templates'))
    if not exists(STATIC_PATH):
        mkdir(STATIC_PATH)
    for name in templates:
        with open('html/' + name[:-4] + ".html", "w") as html:
            template = env.get_template(name)
            html.write(template.render())


if __name__ == '__main__':
    main()


