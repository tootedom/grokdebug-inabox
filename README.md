# Local Grogdebug

A local vm install of https://github.com/nickethier/grokdebug.
To allow you to debug your logstash grok patterns without the need for 
navigating to http://grokdebug.herokuapp.com.  I.e you are on a train, plane, tube etc.

The project is basically a Vagrant (http://www.vagrantup.com/downloads.html) provisioning
script that creates a VM (virtual box), with ruby 2.1.1 and https://github.com/nickethier/grokdebug 
installed.

## Install Virtual box

Install Virtual box from https://www.virtualbox.org/wiki/Downloads
    
## Vagrant

Install vagrant from http://www.vagrantup.com/downloads.html

Then add the following box:

    vagrant box add centos65-x86_64-20131205 https://github.com/2creatives/vagrant-centos/releases/download/v6.5.1/centos65-x86_64-20131205.box

## Provisioning the grokdbug virtual machine

Clone this project, and cd into the cloned dir `cd grogdebug`

Within this directory execute `vagrant up`.  This will:

- download grokdebug from github
- download rvm
- download ruby 2.1.1 and compile it

Once the downloads are complete (could take upto 30mins, have a brew, in the mean time),
The provisioning will start ruby and grokdebug on port 80.  This will be accessible from your
host via portforwarding on port 8181.

You will be able to access grok debug on http://localhost:8181/ from your machine.
Enjoy. 
