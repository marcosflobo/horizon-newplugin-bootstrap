#!/bin/bash

# Bash script to bootstrap a new plugin skeleton for OpenStack Dashboard (Horizon)

# Documentation here http://docs.openstack.org/developer/horizon/tutorials/plugin.html#file-structure

# $1 Is the name of the plugin (eg. myplugin)
# $2 Is the name of the dashboard to link the plugin (eg. project)
# $3 Is the name of the panel for the plugin (eg. mypanel)

# Create dirs
mkdir -p ./$1/$1/{enabled,api,content,static,locale}
mkdir -p ./$1/$1/content/$3/templates/$3
mkdir -p ./$1/$1/static/dashboard/$2/$1/$3
mkdir -p ./$1/$1/locale/en/LC_MESSAGES

# create files
touch ./$1/{setup.py,setup.cfg,LICENSE,MANIFEST.in,README.rst,babel-django.cfg,babel-djangojs.cfg}
touch ./$1/$1/__init__.py
touch ./$1/$1/enabled/_6969_$1.py
touch ./$1/$1/api/{__init__.py,$1_rest_api.py,$1service.py}
touch ./$1/$1/content/__init__.py
touch ./$1/$1/content/$3/{__init__.py,panel.py,tests.py,urls.py,views.py}
touch ./$1/$1/content/$3/templates/$3/index.html
touch ./$1/$1/static/dashboard/$2/$1/$3/{$3.html,$3.js,$3.scss}
touch ./$1/$1/locale/en/LC_MESSAGES/{django.po,djangojs.po}
