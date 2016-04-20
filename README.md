Kubernetes Demo
===============

Prerequisites
-------------
Clone this repo locally to make things a bit easier.

We assume you have the following packages installed:
```
bash
wget
```

We also assume you want to spin this cluster up in AWS. You can modify `up.sh` if you wish to use vagrant, gce...

Start up
--------

First, begin by spinning up your own Kubernetes cluster (utilizing the K8s get kube method):

`up.sh`

Once this completes, you'll have a K8s cluster setup and a new `kubernetes` directory
in the present directory.

We also take care of adding kubectl to your PATH however for a more long term way,
you should handle this yourself.

Demo
----

We borrowed the Wordpress demo from Kubernetes.  This allows us to easily spin up a
MySQL server and a frontend Wordpress instance, both backed by EBS volumes

Begin by creating 2 ebs volumes in your preferred region and modifying the
`wordpress.yaml` and `mysql.yaml` files to include the volumes

Startup demo by running:
```
kubectl create -f .
```

You may want to modify the ELB to speed up instances being added.

Tear down
---------

Simply use our tear down script:

`down.sh`

Note
----

This is barely tested on MacOS.  If you see issues, feel free to submit a PR or open an issue! Although it should work on Linux, it has not yet been tested on Linux.
