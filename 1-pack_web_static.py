#!/usr/bin/python3
""" a module to package web_static files """

from fabric.api import local
from time import strftime
from datetime import date


def do_pack():
     """ A script that generates archive the contents of web_static folder"""
     local("mkdir -p versions")
    result = local("tar -cvzf versions/web_static_{}.tgz web_static"
                   .format(datetime.strftime(datetime.now(), "%Y%m%d%H%M%S")),
                   capture=True)
    if result.failed:
        return None
    return result
