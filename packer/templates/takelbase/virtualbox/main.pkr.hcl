source "virtualbox-iso" "takelage" {
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
  disk_size               = 81920
  guest_additions_path    = "VBoxGuestAdditions_{{ .Version }}.iso"
  guest_os_type           = "Debian_64"
  headless                = true
  http_directory          = "${var.packer_template_dir}/http"
  iso_checksum            = "sha256:e307d0e583b4a8f7e5b436f8413d4707dd4242b70aea61eb08591dc0378522f3"
  iso_urls                = [
    "iso/debian-11.5.0-amd64-netinst.iso",
    "https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/debian-11.4.0-amd64-netinst.iso"
  ]
  shutdown_command        = "echo 'vagrant'|sudo -S shutdown -P now"
  ssh_password            = "vagrant"
  ssh_port                = 22
  ssh_timeout             = "3600s"
  ssh_username            = "vagrant"
  vboxmanage              = [
    ["modifyvm", "{{ .Name }}", "--memory", "2048"],
    ["modifyvm", "{{ .Name }}", "--cpus", "2"]
  ]
  virtualbox_version_file = ".vbox_version"
  vm_name                 = "packer-debian-11-amd64"
}

build {
  sources = ["source.virtualbox-iso.takelage"]

  provisioner "shell" {
    execute_command = "echo 'vagrant' | {{ .Vars }} sudo -S -E bash -eux '{{ .Path }}'"
    scripts         = [
      "${var.packer_template_dir}/bin/ssh.sh",
      "${var.packer_template_dir}/bin/sudo.sh",
      "${var.packer_template_dir}/bin/apt.sh",
      "${var.packer_template_dir}/bin/systemd.sh",
      "${var.packer_template_dir}/bin/guest.sh",
      "${var.packer_template_dir}/bin/cleanup.sh",
      "${var.packer_template_dir}/bin/minimize.sh",
    ]
  }

  post-processor "vagrant" {
    output = "images/vbox/${var.target_user}-${var.target_repo}/package.box"
  }
}
