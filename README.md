# Multi-Docker Fibonacci Sequence Calculator

[![Build Status](https://travis-ci.org/AndLydakis/FibCalc.svg?branch=master)](https://travis-ci.org/AndLydakis/FibCalc)

Part of [this course](https://github.com/AndLydakis/DockerK8s)

* React/Express App
* Postgres DB maintains keys already calculated
* Redis maintains results indices-value pairs, or contacts Node.js worker to calculate new values

### Project Overview
![Project overview](resources/aws_project.jpg)  

### Project Flow

![Project Flow 1](resources/app_flow.jpg)  

![Project Flow 2](resources/app_flow_2.jpg)    

### End Deployed Structure

![Deployed](resources/k8s_deploy.jpg) 


#### Environment Vars

![Deployed](resources/k8s_env_vars.jpg)  
* Yellow: Constant Values
* Red: URL vals that tell multi-server and multi-worker how to connect to services

### Volumes  

![volumes_1](resources/k8s_volumes_1.jpg)   

![volumes_2](resources/k8s_volumes_4.jpg)   

If the pod is destroyed the volume is destroyed

![volumes_3](resources/k8s_volumes_3.jpg)  
    
### Don't have multiple postgres containers accessing the same volume by incrementing ```replicas```  

# Ingress Controller
* routing rules to get traffic to services  

![ingress_1](resources/k8s_ingress_1.jpg)

![ingress_2](resources/k8s_ingress_2.jpg)

![load_balancing](resources/k8s_load_bal.jpg)

### This project uses [ingress-nginx](https://github.com/kubernetes/ingress-nginx)  

#### After Deployment go to Google cloud dashboard -> Clusters -> Services  

### Travis workflow:
![Travis Workflow](resources/travis_flow.jpg)

### EBS file
* [Dockerrun.aws.json](./Dockerrun.aws.json) -> config file for Elastic Beanstalk, similar to docker-compose

![AWS config](resources/aws_config.jpg)

![ecs_1](resources/ebs_ecs_1.jpg)  

### [ECS Documentation (container definitions)](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html)  

![ecs_links](resources/ecs_links.jpg)  