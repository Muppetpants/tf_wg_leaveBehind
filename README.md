# tf_wg_leaveBehind


Simply hard-coded some values from angristan's wireguard script for a quick single-cert wg server. 

```bash
# Clone repo
git clone https://github.com/Muppetpants/tf_wg_leaveBehind.git
# Initialize terraform
terraform init
# Add public key to directory (currently hard coded as vps.pub)
# Add terraform.tfvars file containing the vult api to directory
# Example below: 
# VULTR_API_KEY = "ABCD..."
# Update PoP (currently Mexico) in line 3 of vultr_instance.tf and Plan (currently vc2-1c-1gb) line 17.
terraform plan
terraform apply
# Enter 'yes' when promoted
```

After completing, SSH into VPS and retrieve single wireguard leavebehind.conf file for installation onto client device. 


