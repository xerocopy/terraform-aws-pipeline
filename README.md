
## 2025 host the dashboard on this website



test github push in cloud 9


# terraform_aws_pipeline

Description: This creates a aws code pipeline using terraform that is deployed in ECS. 



## To spin up the infrastructure

* create a local development environment (cloud9), when using systems other than unix WSL will be needed for terraform. 


* first export aws credentials to environment variables (every login)
```
export AWS_ACCESS_KEY_ID="AXXXXXXX"
export AWS_SECRET_ACCESS_KEY="XXXXXXXXXXXXXXXXXXXXXXX"
export AWS_DEFAULT_REGION="ap-southeast-2"
```

* create ssh keys for login (in to the repository), pull the resository to local
```
ssh-keygen -t rsa
```

* Initialize terraform workspace in create_state_bucket
```
terraform init
```
* Set up backend bucket in s3  
```
terraform apply
```

* Initialize terraform workspace in create_pipeline
```
terraform init
```
* Deploy pipline
```
terraform apply
```

* After you finish, switch off the infrustructuer to reduce the AWS cost
```
terraform destroy
```
* After website deployed in ECS, push the app code folder to code commit repo via git pull, git add -A, git commit -m "xx" and git push HTTPS
``` 

## Get ECS Image AMI for your region
```bash
aws ssm get-parameters --names /aws/service/ecs/optimized-ami/amazon-linux-2/recommended
```

## Configure git codecommit credentials
```
aws configure  # fill in credentials
git config --global credential.helper '!aws codecommit credential-helper $@'
git config --global credential.UseHttpPath true
```

## git commit and push
```
git clone https://git-codecommit.us-east-1.amazonaws.com/v1/repos/lab-repository
git add .
git commit -m "Initial Commit"
git push origin master
```


## To access the demo website from local machine
``` follow the terraform outputs from the create_pipeline folder
code_commit_repo = "https://git-codecommit.ap-southeast-2.amazonaws.com/v1/repos/MyPythonApp"
elb = "test-lb-tf-1059347699.ap-southeast-2.elb.amazonaws.com"
```


## Acctual Run cost:

~ AUD 123.37 per month (ec2 t2.medium + elb + cloudwatch) Dec2023

### The terraform_aws_pipeline repo is pushed to github

### The showcase_flask_app repo is connected to the aws code_commit_repo

to save the latest app changes, pull the repo from aws code_commit_repo (in showcase_flask_app dir), and navigate to main dir, push repo to github.

```

to push repository to github:

generate personal access token (github)

cd ./terraform-aws-pipeline-staff-website

git status

git add -A

git commit -m "update"

git config --gloabl user.name "xxxxx"

git config --gloabl user.email "xxxxx"

git push origin 2minerstechno_website_hosting

enter user name: (user name)

enter user password: (personal access key) (settings -> developer settings -> personal access token)



https://www.youtube.com/watch?v=ua6JvujMLY8


```




## Youtube Video demonstration
[Youtube link](https://youtu.be/nm16l3YN6ps)

