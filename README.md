# Infrastructure and Configuration Management Workshop

*Here be dragons*

Full workshop guide coming soon.

*Loading*
![comingsoon](/images/loading.png)



### Git commands for configuring CodeCommit with Cloud9
```bash
#!/bin/bash

git config --global user.name "Darko Meszaros"
git config --global user.email dmeszaro@amazon.de

git config --global credential.helper '!aws codecommit credential-helper $@'
git config --global credential.UseHttpPath true
```
