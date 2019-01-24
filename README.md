# devops

### Scope of this Project

  Setup jenkins build server in AWS or local machine and setup a jenkins job to compile and test a Java project.

### Implementation Steps

```
Create a infrastructure either in AWS (using terraform) or in local infrastructure (using Vagrant)
```
```
Deploy Jenkins server using Ansible
```
```
Install required plugins (Git, Maven Integration, PMD, FindBugs, CheckStyle, Static Analysis Collector)
```
```
Create a job to pull the code from git repository (by polling in periodic interval) and build.
```
```
Publish Code quality & Unit Test results.
```
