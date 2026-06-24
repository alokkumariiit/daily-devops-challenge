#!/bin/bash

zip -r /archives/website_backup.zip /var/www/html

scp /archives/website_backup.zip user@storage-server:/archives/