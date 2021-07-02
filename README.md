# minikub-with-ruby
This project helps you to deploy a small ruby server in Minikube.

Tools used: 
•	AWS for creation of EC2 machine and IAM user creation to run the CICD pipeline in gitlab
•	Gitlab used for Code repository and CICD tool
•	CloudFormation: For infrastructure deployment 
•	Docker 
•	Crated IAM user with programmatic access to run the pipeline

•	Step by step instruction to create ruby docker image.

1.	Create a file with name dockerfile
2.	Add the commends to install the dependencies and ruby version
3.	Add the commends to create a user
4.	Add commend to switch user directory from root to newly created user 
5.	Add necessary bundles 
6.	Add the commends to expose the application running port 
7.	Add the execute commend

•	Step by step instruction to install minikube in Linux EC2 machine.

1.	Create the CF formation script with VPC, Subnet, Security group, and Linux version
2.	Add the necessary commends to install the minikube while creation of EC2 machine
3.	Make sure the minikube image is mapped to the docker image which we created

•	Creation on CICD pipeline

1.	Declare the ECR repository detail to store the docker image which are created
2.	We are using the gitlab runners to build the docker images
3.	Declare the CICD stages
4.	Add the Docker install and build image commends in CI file
5.	Once Docker image is ready then add the commends to push it to ECR
6.	Deploy image stage Add the commends to deploy the EC2 intrastate

