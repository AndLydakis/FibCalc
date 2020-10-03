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

![End Structure](resources/aws_struct.jpg)  

![End Structure_1](resources/aws_struct_1.jpg)  

![End Structure_2](resources/aws_struct_2.jpg)  

![VPCs](resources/vpc.jpg)  

To create client React app:
    * npx create-react-app client
    * delete auto created ```.git``` repo.
    
### Travis workflow:
![Travis Workflow](resources/travis_flow.jpg)

### EBS file
* [Dockerrun.aws.json](./Dockerrun.aws.json) -> config file for Elastic Beanstalk, similar to docker-compose

![AWS config](resources/aws_config.jpg)

![ecs_1](resources/ebs_ecs_1.jpg)  

### [ECS Documentation (container definitions)](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html)  

![ecs_links](resources/ecs_links.jpg)  