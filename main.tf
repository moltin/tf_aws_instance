# Create ec2 instance
resource "aws_instance" "ec2_instance" {
    ami = "${lookup(var.machine_ami, var.ami_os)}"
    instance_type = "${var.instance_type}"
    key_name = "${var.key_name}"
    count = "${var.server_count}"

    vpc_security_group_ids = ["${split(",", var.security_groups)}"]
    subnet_id = "${var.subnet_id}"

    connection {
        user = "${var.key_user}"
        key_file = "${var.key_path}"
    }

    tags {
        Name = "${var.namespace}-${var.version}-ec2_instance-${count.index}"
        "Type" = "${var.namespace}"
        "version" = "${var.version}"
    }

    # Create the various file locations for the file provisioner and chown
    provisioner "remote-exec" {
        inline = [
            "${var.remote_exec_command}"
        ]
    }
}
