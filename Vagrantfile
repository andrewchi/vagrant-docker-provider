# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.hostname = "ubuntu-x86"

  ############################################################
  # Provider for Docker on Intel or ARM (aarch64)
  ############################################################
  config.vm.provider :docker do |docker, override|
    override.vm.box = nil
    docker.image = "andrchi/vagrant-provider:ubuntu-x86"
    docker.remains_running = true
    docker.has_ssh = true
    docker.privileged = true
    docker.volumes = ["/sys/fs/cgroup:/sys/fs/cgroup:rw"]
    docker.create_args = ["--cgroupns=host"]
    # Uncomment to force ARM64 (e.g., even if host is Intel)
    # docker.create_args = ["--platform=linux/arm64", "--cgroupns=host"]
    # Uncomment to force Intel (e.g., even if host is Apple Silicon)
    docker.create_args = ["--platform=linux/amd64", "--cgroupns=host"]
    # Uncomment to force s390x, a Big-Endian architecture
    #docker.create_args = ["--platform=linux/s390x", "--cgroupns=host"]
  end

  # Install Docker and pull an image
  # config.vm.provision :docker do |d|
  #   d.pull_images "alpine:latest"
  # end

end
