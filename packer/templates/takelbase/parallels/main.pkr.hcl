source "parallels-iso" "takelage" {
  boot_command            = [
    "<esc><wait>",
    "install <wait>",
    " preseed/url=http://{{ .HTTPIP }}:{{ .HTTPPort }}/preseed.cfg <wait>",
    "debian-installer=en_US.UTF-8 <wait>",
    "auto <wait>",
    "locale=en_US.UTF-8 <wait>",
    "kbd-chooser/method=de <wait>",
    "keyboard-configuration/xkb-keymap=de <wait>",
    "netcfg/get_hostname={{ .Name }} <wait>",
    "netcfg/get_domain=vagrantup.com <wait>",
    "fb=false <wait>",
    "debconf/frontend=noninteractive <wait>",
    "console-setup/ask_detect=false <wait>",
    "console-keymaps-at/keymap=de <wait>",
    "grub-installer/bootdev=/dev/sda <wait>",
    "<enter><wait>"
  ]
  boot_wait               = "5s"
  cpus                    = 2
  disk_size               = 81920
  guest_os_type           = "debian"
  http_directory          = "${var.packer_template_dir}/http"
  iso_checksum            = "sha256:7892981e1da216e79fb3a1536ce5ebab157afdd20048fe458f2ae34fbc26c19b"
  iso_urls                = [
    "iso/debian-11.3.0-amd64-netinst.iso",
    "https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/debian-11.3.0-amd64-netinst.iso"
  ]
  memory                  = "2048"
  parallels_tools_flavor  = "lin"
  shutdown_command        = "echo 'vagrant' | sudo -S shutdown -hP now"
  ssh_password            = "vagrant"
  ssh_timeout             = "3600s"
  ssh_username            = "vagrant"
  vm_name                 = "packer-debian-11-amd64"
}

build {
  sources = ["source.parallels-iso.takelage"]

  provisioner "shell" {
    execute_command = "echo 'vagrant' | {{ .Vars }} sudo -S -E bash -eux '{{ .Path }}'"
    scripts         = [
      "${var.packer_template_dir}/bin/ssh.sh",
      "${var.packer_template_dir}/bin/sudo.sh",
      "${var.packer_template_dir}/bin/apt.sh",
      "${var.packer_template_dir}/bin/systemd.sh",
      "${var.packer_template_dir}/bin/parallels.sh",
      "${var.packer_template_dir}/bin/cleanup.sh",
      "${var.packer_template_dir}/bin/minimize.sh",
    ]
  }

  post-processor "vagrant" {
    output = "images/pvm/${var.target_user}-${var.target_repo}/package.box"
  }
}
