# Deployment of Flask 'Hello world' app to GCP

## App
provided app.py is just a simple Flask 'Hello world!' app, exposed on port 8080.

## Docker
Dockerfile provided in container folder contains the definition of the used image

## Terraform
Terraform contains deployment scripts.\
3rd party module was not working properly and at the end the container has been deployed manually

## Deployment steps
1. Tagging created docker image:
![img](/img/gcp-docker.PNG)
2. Pushing the image to the gcp registry
![img](/img/gcp-registry.PNG)
![img](/img/gcp-registry2.PNG)
3. Creating VM in GCP
![img](/img/app01.PNG)
4. Setting up firewall rules and static external IP address
5. Running an app
![img](/img/app02.PNG)
![img](/img/app03.PNG)

App is still available on:
http://104.197.156.4:8080/

will be deleted until 22nd of January 2021