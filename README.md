
test deployment in cloud 9


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

* In case getting an InvalidClientTokenId Error, set up private subnet to allow cloud9 to interact with other AWS services
```
https://docs.aws.amazon.com/cloud9/latest/user-guide/security-iam.html#auth-and-access-control-temporary-managed-credentials

push repository to github

generate personal access token 

cd ./terraform-aws-pipeline-staff-website

git status

git add -A



https://www.youtube.com/watch?v=ua6JvujMLY8


```


* After you finish, switch off the infrustructuer to reduce the AWS cost
```
terraform destroy
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






## Youtube Video demonstration
[Youtube link](https://youtu.be/nm16l3YN6ps)

