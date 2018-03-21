provider "aws" {
  access_key = "*****************"
  secret_key = "***********************"
  region     = "us-west-2" 
}
resource "aws_instance" "sample" {
  ami="ami-d99506a1"
  instance_type="t2.micro"
  key_name="ec2"
  security_groups=["default"]
  tags{
   Name="terraform-instance"
   }
}  
