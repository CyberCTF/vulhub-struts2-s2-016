#!/bin/sh
# The index action is mapped by Struts2 and renders its Hello world page.
set -e
curl -fsS http://struts2:8080/index.action | grep -q 'Hello world'
