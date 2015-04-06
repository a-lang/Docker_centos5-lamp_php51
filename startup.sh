#!/usr/bin/env bash
#===============================================================================
#
# AUTHOR: A-Lang <alang.hsu@gmail.com>
#
#===============================================================================
echo "Starting mysql:"
service mysqld start
echo "Starting Apache:"
service httpd start

