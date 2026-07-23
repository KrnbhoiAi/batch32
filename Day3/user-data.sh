#!/bin/bash

dnf update -y

dnf install httpd -y

systemctl enable httpd

systemctl start httpd

echo "<h1>Welcome from Terraform $HOSTNAME</h1>" > /var/www/html/index.html
