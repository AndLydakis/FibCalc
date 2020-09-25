# Extremely Overengineered Fibonacci Sequence Calculator

Part of [this course](https://github.com/AndLydakis/DockerK8s)

* React/Express App
* Postgres DB maintains keys already calculated
* Redis maintains results indices-value pairs, or contacts Node.js worker to calculate new values

To create client React app:
    * npx create-react-app client
    * delete auto created ```.git``` repo