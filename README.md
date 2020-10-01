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

To create client React app:
    * npx create-react-app client
    * delete auto created ```.git``` repo.
    
###Travis workflow:
![Travis Workflow](resources/travis_flow.jpg)