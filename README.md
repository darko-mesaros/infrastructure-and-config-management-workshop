# Infrastructure and Configuration Management Workshop

*Here be dragons*

Full workshop guide coming soon.

*Loading*
![comingsoon](/images/loading.png)



## Create Cloud9
We will be using AWS Cloud9 as our interaction plane with our Repositories. While it is possible to do it from your local workstation (or any place that supports git), for the sake of simplicity we will be using Cloud9.
To do this, go to the AWS Cloud9 dashboard in the `eu-west-1` region (Ireland) and create said environment. You can use all the *default* settings, just make sure that you launch it in a VPC that *has Internet Access*.

![cloud9](/images/cloud9.png)

### Git commands for configuring CodeCommit with Cloud9
```bash
#!/bin/bash

git config --global user.name "Darko Meszaros"
git config --global user.email dmeszaro@amazon.de

git config --global credential.helper '!aws codecommit credential-helper $@'
git config --global credential.UseHttpPath true
```

## Create an S3 Bucket - This will be used for ansible

## Create the automation pipeline for CloudFormation
- Create Code commit
- Commit some code there (the cloudformation templates) - Via cloud9
- Create CodePipeline with these steps:
  - CodeCommit as Source
  - CodeBuild as build
  - CloudFormation as Deploy
    - Make sure to use the Advanced options for the parameters `Key` and bucket

## Create the automation pipeline for Ansible
- Create Code commit
- Commit some code there (the ansible templates) - Via cloud9
- Create CodePipeline with these steps:
  - CodeCommit as Source
  - CodeBuild as build
  - S3 as Deploy - make sure to use the S3 Bucket create
~


