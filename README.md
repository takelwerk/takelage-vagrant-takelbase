[![license](https://img.shields.io/github/license/takelwerk/takelage-img-takelbase?color=blueviolet)](https://github.com/takelwerk/takelage-img-takelbase/blob/main/LICENSE)
[![hub.docker.com](https://img.shields.io/docker/v/takelwerk/takelbase/latest?label=hub.docker.com&color=blue)](https://hub.docker.com/r/takelwerk/takelbase)
[![deploy vbox](https://img.shields.io/github/actions/workflow/status/takelwerk/takelage-vagrant-takelbase/build_and_deploy_virtualbox_nightly.yml?label=deploy%20vbox)](https://github.com/takelwerk/takelage-vagrant-takelbase/blob/main/.github/workflows/build_and_deploy_virtualbox_nightly.yml)

# takelage-vagrant-takelbase

The 
[takelwerk/takelbase](https://app.vagrantup.com/takelwerk/boxes/takelbase)
vagrant boxes are created from a 
[debian netinst.iso](https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/).
They have been updated, sudo has been configured, 
the guest tools have been installed and 
the default vagrant ssh public key has been authorized.
It borrows a lot from the 
[bento project](https://github.com/chef/bento).

Currently, the base box is built automatically each night 
for the virtualbox provider
and sometimes manually for the parallels provider.

## Framework Versions

| App | Artifact |
| --- | -------- |
| *[takelage-doc](https://github.com/takelwerk/takelage-doc)* | [![License](https://img.shields.io/github/license/takelwerk/takelage-doc?color=blueviolet)](https://github.com/takelwerk/takelage-doc/blob/main/LICENSE) |
| *[takelage-dev](https://github.com/takelwerk/takelage-dev)* | [![hub.docker.com](https://img.shields.io/docker/v/takelwerk/takelage/latest?label=hub.docker.com&sort=semver&color=blue)](https://hub.docker.com/r/takelwerk/takelage) |
| *[takelage-pad](https://github.com/takelwerk/takelage-pad)* | [![hub.docker.com](https://img.shields.io/docker/v/takelwerk/takelpad/latest?label=hub.docker.com&sort=semver&color=blue)](https://hub.docker.com/r/takelwerk/takelpad) |
| *[takelage-cli](https://github.com/takelwerk/takelage-cli)* | [![rubygems.org](https://img.shields.io/gem/v/takeltau?label=rubygems.org&color=blue)](https://rubygems.org/gems/takeltau) |
| *[takelage-var](https://github.com/takelwerk/takelage-var)* | [![pypi,org](https://img.shields.io/pypi/v/pytest-takeltest?label=pypi.org&color=blue)](https://pypi.org/project/pytest-takeltest/) |
| *[takelage-img-takelslim](https://github.com/takelwerk/takelage-img-takelslim)* | [![hub.docker.com](https://img.shields.io/docker/v/takelwerk/takelslim/latest?label=hub.docker.com&color=blue)](https://hub.docker.com/r/takelwerk/takelslim) | 
| *[takelage-img-takelbase](https://github.com/takelwerk/takelage-img-takelbase)* | [![hub.docker.com](https://img.shields.io/docker/v/takelwerk/takelbase/latest?label=hub.docker.com&color=blue)](https://hub.docker.com/r/takelwerk/takelbase) | 
| *[takelage-img-takelruby](https://github.com/takelwerk/takelage-img-takelruby)* | [![hub.docker.com](https://img.shields.io/docker/v/takelwerk/takelruby/latest?label=hub.docker.com&color=blue)](https://hub.docker.com/r/takelwerk/takelruby) | 
| *[takelage-vagrant-takelbase](https://github.com/takelwerk/takelage-vagrant-takelbase)* | [![vagrantup.com](https://img.shields.io/badge/vagrantup.com-debian--bullseye-blue)](https://app.vagrantup.com/takelwerk/boxes/takelbase) | 

## Framework Status

| App | Deploy project | Test project | Test roles | Deploy vbox |
| --- | -------------- | ------------ | ---------- | ----------- |
| *[takelage-dev](https://github.com/takelwerk/takelage-dev)* | [![deploy project](https://img.shields.io/github/actions/workflow/status/takelwerk/takelage-dev/build_test_deploy_project_on_push.yml?label=deploy%20project)](https://github.com/takelwerk/takelage-dev/actions/workflows/build_test_deploy_project_on_push.yml) | [![test project](https://img.shields.io/github/actions/workflow/status/takelwerk/takelage-dev/build_test_project_nightly.yml?label=test%20project)](https://github.com/takelwerk/takelage-dev/actions/workflows/build_test_project_nightly.yml) | [![test roles](https://img.shields.io/github/actions/workflow/status/takelwerk/takelage-dev/build_test_roles_nightly.yml?label=test%20roles)](https://github.com/takelwerk/takelage-dev/actions/workflows/build_test_roles_nightly.yml) |
| *[takelage-pad](https://github.com/takelwerk/takelage-pad)* | [![deploy project](https://img.shields.io/github/actions/workflow/status/takelwerk/takelage-pad/build_test_deploy_project_on_push.yml?label=deploy%20project)](https://github.com/takelwerk/takelage-pad/actions/workflows/build_test_deploy_project_on_push.yml) | [![test project](https://img.shields.io/github/actions/workflow/status/takelwerk/takelage-pad/build_test_project_nightly.yml?label=test%20project)](https://github.com/takelwerk/takelage-pad/actions/workflows/build_test_project_nightly.yml) | [![test roles](https://img.shields.io/github/actions/workflow/status/takelwerk/takelage-pad/build_test_roles_nightly.yml?label=test%20roles)](https://github.com/takelwerk/takelage-pad/actions/workflows/build_test_roles_nightly.yml) | [![deploy vbox](https://img.shields.io/github/actions/workflow/status/takelwerk/takelage-pad/build_deploy_project_vbox_on_push.yml?label=deploy%20vbox)](https://github.com/takelwerk/takelage-pad/actions/workflows/build_deploy_project_vbox_on_push.yml) |
| *[takelage-cli](https://github.com/takelwerk/takelage-cli)* | [![deploy project](https://img.shields.io/github/actions/workflow/status/takelwerk/takelage-cli/build_test_deploy_project_on_push.yml?label=deploy%20project)](https://github.com/takelwerk/takelage-cli/actions/workflows/build_test_deploy_project_on_push.yml) | [![test project](https://img.shields.io/github/actions/workflow/status/takelwerk/takelage-cli/test_project_nightly.yml?label=test%20project)](https://github.com/takelwerk/takelage-cli/actions/workflows/test_project_nightly.yml) |
| *[takelage-var](https://github.com/takelwerk/takelage-var)* | [![deploy project](https://img.shields.io/github/actions/workflow/status/takelwerk/takelage-var/build_test_deploy_project_on_push.yml?label=deploy%20project)](https://github.com/takelwerk/takelage-var/actions/workflows/build_test_deploy_project_on_push.yml) | [![test project](https://img.shields.io/github/actions/workflow/status/takelwerk/takelage-var/build_test_project_nightly.yml?label=test%20project)](https://github.com/takelwerk/takelage-var/actions/workflows/build_test_project_nightly.yml) |
| *[takelage-img-takelslim](https://github.com/takelwerk/takelage-img-takelslim)* | [![deploy project](https://img.shields.io/github/actions/workflow/status/takelwerk/takelage-img-takelslim/build_deploy_takelslim_nightly.yml?label=deploy%20project)](https://github.com/takelwerk/takelage-img-takelslim/actions/workflows/build_deploy_takelslim_nightly.yml) |
| *[takelage-img-takelbase](https://github.com/takelwerk/takelage-img-takelbase)* | [![deploy project](https://img.shields.io/github/actions/workflow/status/takelwerk/takelage-img-takelbase/build_deploy_takelbase_nightly.yml?label=deploy%20project)](https://github.com/takelwerk/takelage-img-takelbase/actions/workflows/build_deploy_takelbase_nightly.yml) |
| *[takelage-img-takelruby](https://github.com/takelwerk/takelage-img-takelruby)* | [![deploy project](https://img.shields.io/github/actions/workflow/status/takelwerk/takelage-img-takelruby/build_deploy_takelruby_nightly.yml?label=deploy%20project)](https://github.com/takelwerk/takelage-img-takelruby/actions/workflows/build_deploy_takelruby_nightly.yml) |
| *[takelage-vagrant-takelbase](https://github.com/takelwerk/takelage-vagrant-takelbase)* | [![deploy vbox](https://img.shields.io/github/actions/workflow/status/takelwerk/takelage-vagrant-takelbase/build_and_deploy_virtualbox_nightly.yml?label=deploy%20vbox)](https://github.com/takelwerk/takelage-vagrant-takelbase/actions/workflows/build_and_deploy_virtualbox_nightly.yml) |
