output "public_ip" {
    value = {
        for k, vm in vultr_instance.vm : k => vm.main_ip
    }
}