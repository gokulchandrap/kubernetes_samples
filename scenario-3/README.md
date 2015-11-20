1.Build webapp with Tomcat.
	mvn clean package docker:build


	docker run -d -p 45001:8080 af-sample-webapp

Deployment

	kubectl create -f 
        kubectl apply -f
