# Terraform-POC.domainjoin

This TF file will deploy:
	
	- One resource group
	- One virtual netwrk (10.0.0.0/16)
	- One subnet (10.0.2.0/24)
	- Two Network cards 
	- Two Public IPs
	- One Win2012R2 (Domain Controller)
	- One Win2012R2 (domain member)
	
Default credentials:

	Username: myadmin
	Password: Password123

VMs' public IPs:

	DC: 10.0.2.4
	Client: 10.0.2.5

Output sample of "time terraform apply":

	Apply complete! Resources: 11 added, 0 changed, 0 destroyed.

	Outputs:

	Client_public_ip = 52.183.124.141
	DC_public_ip = 52.175.241.37

	real    24m40.636s
	user    0m1.198s
	sys     0m0.653s



