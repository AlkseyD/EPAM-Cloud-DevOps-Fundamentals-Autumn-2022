# Task 4 Work at AWS

## 1. Elevate a VM in EC2 AWS

In the AWS main menu, select "Service">"Compute">"EC2" at the top left, then click "Launch instances", and fill in the fields such as: Name, select OS, create a key pair, and select the type of instance.

![](Screenshots/1.jpg)

## 2. Create shapshot of instance

In the menu on the left, go to the section "Elastic Block Store"(I will continue to call abbreviated EBS) in the subsection "Volumes", and click "Create snapshot", and thus create a backup copy of our instance.

![](Screenshots/2.jpg)

![](Screenshots/3.jpg)

## 3. Create an additional disk and attaching it to the VM.

Create a new empty volume by clicking the "Create volume" button at the top right.

![](Screenshots/4.jpg)

![](Screenshots/5.jpg)

Log in using ssh key pair, we check if a new disk has appeared using the command `lsblk`.

![](Screenshots/6.jpg)

The disk is present but not connected to the instance, we can't write anything to it yet. First you need to make it available for use,
for this you first need to check if the file system is installed on the new volume.
This is done with `file -s`, if the output just shows "data", then there is no file system.

![](Screenshots/7.jpg)

To mount a filesystem, use the `mkfs -t` command followed by the name of the filesystem we want to mount and on which volume.
To mount a volume, you need to create a directory at the root, and mount the new volume to it.

![](Screenshots/8.jpg)

![](Screenshots/9.jpg)

## 4. Create a new instance, and attach disk_D to the new instance.

It is very important when creating and moving a volume that both VMs are in the same "Availability Zone".

![](Screenshots/10.jpg)

![](Screenshots/11.jpg)

![](Screenshots/12.jpg)

![](Screenshots/13.jpg)

## 5. Create a domain and domain name for your own website

Create an account on nic.ua, and go to your personal account.

![](Screenshots/14.jpg)

Click on the "Domains" > "register a domain". And come up with a domain name.

![](Screenshots/15.jpg)

Check if such a domain is already registered.

![](Screenshots/16.jpg)

Choose free

![](Screenshots/17.jpg)

After that, go to your personal account in "Name Servers", and select the newly created domain, and go to its settings.

![](Screenshots/18.jpg)

![](Screenshots/19.jpg)

Now in AWS, in the "Services" section, go to the "Networking & Content Delivery" subsection, and select "Route 53".

![](Screenshots/20.jpg)

After that, go to the "Hosted Zones" section and create a new host zone, enter the data from this zone in "DNS", in nic.ua

![](Screenshots/21.jpg)

## 6. Launch and configure a WordPress instancewith Amazon Lightsail

![](Screenshots/22.jpg)

![](Screenshots/23.jpg)

![](Screenshots/24.jpg)

![](Screenshots/25.jpg)

After installation, click either on the three dots and "connect", or on the CLI icon.

![](Screenshots/26.jpg)

![](Screenshots/27.jpg)

![](Screenshots/28.jpg)

![](Screenshots/29.jpg)

## 7. Work with S3 through a browser, and AWS CLI

![](Screenshots/30.jpg)

![](Screenshots/31.jpg)

![](Screenshots/32.jpg)

Enter "IAM" in the search for AWS services, and in the menu that opens, click create a new user, and give him Administrator rights.

![](Screenshots/33.jpg)

After that, download the file with access settings to your computer. Open "cmd" and type "aws configure"

![](Screenshots/34.jpg)

We can now upload files to the previously created bucket using the CLI.

![](Screenshots/35.jpg)

![](Screenshots/36.jpg)

## 8. Deploy Docker Containers on Amazon Elastic Container Service (Amazon ECS)

First, let's go to the EC2 instance, and install the docker there.

![](Screenshots/37.jpg)

I create a repository in ECR (Elastic Container Registry), and according to the instructions from AWS ECR, push application

![](Screenshots/38.jpg)

![](Screenshots/39.jpg)

![](Screenshots/40.jpg)

![](Screenshots/41.jpg)

After pushing the application, go to AWS Elastic Container Service (ECS), in the "Clusters" subsection, and create a cluster.

![](Screenshots/42.jpg)

![](Screenshots/43.jpg)

![](Screenshots/44.jpg)

Then after creating the cluster, go to "Task definition"

![](Screenshots/45.jpg)

After creating the containers in "Task definition" go back to "Clusters" and select "Run task".

![](Screenshots/46.jpg)

![](Screenshots/47.jpg)

![](Screenshots/48.jpg)

## 9. Run a Serverless "Hello, World!" with AWS Lambda

![](Screenshots/49.jpg)

![](Screenshots/50.jpg)

![](Screenshots/51.jpg)

![](Screenshots/52.jpg)

![](Screenshots/53.jpg)

## 10. creating a CV with S3

![](Screenshots/54.jpg)

![](Screenshots/55.jpg)

![](Screenshots/56.jpg)