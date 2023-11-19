locals {
    virtual_machines = {
        "jasonTest" = { region = "mex", user_data = "scripts/lbWireguardServer.sh"},
        
    }
}

resource "vultr_ssh_key" "root" {
  name = "Root SSH key"
  ssh_key = "${file("vps.pub")}"
}

resource "vultr_instance" "vm" {
    for_each = local.virtual_machines
    hostname = each.key
    label = each.key
    plan = "vc2-1c-1gb"
    os_id = "1743"
    region = each.value.region
    user_data = "${file(each.value.user_data)}"
    ssh_key_ids = ["${vultr_ssh_key.root.id}"]
}


