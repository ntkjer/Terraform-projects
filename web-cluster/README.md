## Info
This is a sample web cluster that has an Autoscaling Group, Elastic Load Balancer, and multiple EC2 instances.

## Requirements
Configure your [AWS access 
keys](http://docs.aws.amazon.com/general/latest/gr/aws-sec-cred-types.html#access-keys-and-secret-access-keys) as 
environment variables:
```
export AWS_ACCESS_KEY_ID=(your access key id)
export AWS_SECRET_ACCESS_KEY=(your secret access key)
```
or create a file called ```terraform.tfvars``` and reference access credentials through interpolation.

## Instructions

Validate the templates:

```
terraform plan
```

Deploy the code:

```
terraform apply
```

When the `apply` command completes, it will output the DNS name of the load balancer. To test the load balancer:

```
curl http://(elb_dns_name):8080/
```

Clean up when you're done:

```
terraform destroy
```