Scenario 03

How to build a docker image using a maven plugin.

1. Build webapp with Tomcat.

	mvn clean package docker:build

2. Run to create the docker image with public port.

	docker run -d -p 45001:8080 af-sample-webapp

How to use Kubernetes Deployments to deploy new revision

1. Create deployment.

	kubectl create -f tomcat-deployment.yaml

2. Apply changes to the deployment.

        kubectl apply -f tomcat-deployment.yaml
