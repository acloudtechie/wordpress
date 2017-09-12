#!/bin/bash
sudo yum update -y
sudo yum install -y httpd24 php70 php70-mysqlnd
sudo service httpd start
sudo chkconfig httpd on