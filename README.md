# Infrastructure and Configuration Management Workshop

*Here be dragons - THIS GUIDE IS NOT COMPLETE. PLEASE EXCUSE ANY TYPOS AND THE LACK OF INFORMATION*

Full workshop guide coming soon.

*Loading*
![comingsoon](/images/loading.png)



## Create Cloud9
We will be using AWS Cloud9 as our interaction plane with our Repositories. While it is possible to do it from your local workstation (or any place that supports git), for the sake of simplicity we will be using Cloud9.
To do this, go to the AWS Cloud9 dashboard in the `eu-west-1` region (Ireland) and create said environment. You can use all the *default* settings, just make sure that you launch it in a VPC that *has Internet Access*.

![cloud9](/images/cloud9.png)

### Configuring `git` on Cloud9

In order to use the native integration of CodeCommit and Cloud9 we need to setup git to use the AWS CodeCommit credential helper. 

The following commands should be sufficient to set this up - make sure to change the name and email address to match your own. 
```bash
#!/bin/bash

git config --global user.name "Alan Ford"
git config --global user.email alan.ford@flowershop.yu

git config --global credential.helper '!aws codecommit credential-helper $@'
git config --global credential.UseHttpPath true
```

## Create a S3 Bucket for our Ansible code.
We need to create a S3 bucket that will contain our Ansible code. Later on we will be using AWS Systems Manager to trigger the execution of Ansible playbooks, and the location of said playbooks will be in this S3 Bucket. 

No special configuration is required for this bucket - just take a note of the name.

---

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


