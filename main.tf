resource "aws_instance" "app_server" {
  count         = var.instance_count
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = var.subnet_id

  tags = {
    Name  = element(var.instance_tags, count.index)
  }
  
  connection {
    host        = self.public_ip
    type        = "ssh"
    user        = "ubuntu"
    private_key = "${file("/home/jacky/.ssh/keytest.pem")}"    
  }

  provisioner "file" {
    source      = "install.sh"
    destination = "/tmp/install.sh"
  }

  provisioner "remote-exec"{
    inline = [
      "chmod +x /tmp/install.sh",
      "/tmp/install.sh args",
    ]
  }
}