#how to run
#wget -O - https://raw.githubusercontent.com/ImmLearning/AWSProjects/master/hardening.sh | bash
#!/bin/sh
#"CentOS 7 with below packages"
yum update -y && yum upgrade -y
yum install -y wget elinks telnet vim bc tree bash-completion bash-completion-extras screen curl yum-utils net-tools git openssl pstree mongodb-org-shell lsof 
echo "done hardening"
echo "enabling MFA"
yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum install -y google-authenticator
echo -e " \n google-authenticator "

#more details
#https://www.digitalocean.com/community/tutorials/how-to-set-up-multi-factor-authentication-for-ssh-on-centos-7
#usermod -aG wheel USERNAME
