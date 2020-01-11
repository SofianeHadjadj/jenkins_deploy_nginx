# ngnixdeploy
Deploy ngnix on docker container through Kubernetes using Jenkinsfile

Prerequisites 

	1) Install Jenkins version Jenkins 2.190.1 on development server 
	2) Install Java 1.8 version on  development server
	3) Install docker 18.06.1-ce on development server
	4) Install Kubernetes on development server 


Installation process

	1) yum update -y
	2) sudo yum install docker -y
	3) systemctl start docker.service
	4) systemctl enable docker.service
	5) yum install java-1.8.0-openjdk
	6) wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo
	7) rpm --import http://pkg.jenkins-ci.org/redhat-stable/jenkins-ci.org.key
	8) yum install jenkins
	9) service jenkins start
	10) systemctl start jenkins.service
	11) systemctl enable jenkins.service
