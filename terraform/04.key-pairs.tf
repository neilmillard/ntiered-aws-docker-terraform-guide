/* the command to generate a new keypair
ssh-keygen -t rsa -C "insecure-deployer" -P '' -f ssh/insecure-deployer
*/
resource "aws_key_pair" "deployer" {
  key_name   = "deployer-airpair-example" 
  public_key = "${file(\"ssh/insecure-deployer.pub\")}"
}

