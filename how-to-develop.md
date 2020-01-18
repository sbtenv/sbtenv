## Test with Vagrant

See also https://www.vagrantup.com/docs/index.html

Start a VM.

```shellsession
vagrant up ubuntu18
```

_You can get available VMs by the following command._

```shellsession
grep config.vm.define Vagrantfile
```

(optional)You can provision again the VM via the following command if needed.

```shellsession
vagrant provision ubuntu18
```

Run tests via `vagrant ssh`

```shellsession
vagrant ssh --command 'bats /vagrant/test/' ubuntu18
```

Shutdown the VM.

```shellsession
vagrant halt ubuntu18
```

Clear the all data on the VM.

```shellsession
vagrant destroy ubuntu18
```
