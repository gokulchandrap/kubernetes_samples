1) nginx installation

Install nginx externally on a machine or inside a node.

	Installation guide on Fedora

		http://www.if-not-true-then-false.com/2011/install-nginx-php-fpm-on-fedora-centos-red-hat-rhel/comment-page-2/

	Installation guide on ubuntu

		https://mediatemple.net/community/products/developer/204405534/install-nginx-on-ubuntu

2) Find the sample nginx configuration in nginx.conf 

3) How it works
	Browser				nginx				Web Server

	foo.bar.com/app/resource --> http://tomcat-service:30474/app/resource --> http://<container ip>:<container port>/app/resource 

4) TO BE DONE

	* DNS name resolution of services
	* try this with Ingress kind supported by Kubernetes
