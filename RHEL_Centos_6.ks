# Kickstart file automatically generated by anaconda.

#version=DEVEL
install
cdrom
lang en_US.UTF-8
keyboard fr
network --onboot yes --device eth0 --bootproto static --ip 192.168.1.214 --netmask 255.255.255.0 --nameserver 8.8.8.8 --gateway 192.168.1.1 --noipv6 --hostname ansible0
rootpw  --iscrypted $6$F9BYjkRdcwoYRmxk$uQ3zIqZ5QxeTN4.W3Ic/xY91VP3uZSl1tdZzOzt3uZH/47t.2C0aJFa1wDXFHmhzGSWP0jKcVbHp481QoyAX90
firewall --service=ssh
authconfig --enableshadow --passalgo=sha512
selinux --enforcing
timezone --utc Etc/GMT
bootloader --location=partition --driveorder=sda --append="crashkernel=auto"
clearpart --drives=sda --all
autopart


# U03: It is needed to comment below 'repo' line
#repo --name="CentOS"  --baseurl=cdrom:sr0 --cost=100

%packages
@base
@console-internet
@core
@debugging
@directory-client
@hardware-monitoring
@java-platform
@large-systems
@network-file-system-client
@performance
@perl-runtime
@server-platform
@server-policy
@workstation-policy
pax
python-dmidecode
oddjob
sgpio
device-mapper-persistent-data
samba-winbind
certmonger
pam_krb5
krb5-workstation
perl-DBD-SQLite
%end


%post
mkdir -m0700 /root/.ssh/
cat <<EOF >/root/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABRme40WUpB+6JW8Qv6Jbw8mswyTLjgYGxh97Hp35vg3SBIrVfEoGw7jYwRmo2Xf5zMx1orxNcTUnvSGRusoY6CdR28129sfzsIxV7Zh9EMisDt6lXra+CdescSQG3UNiQ0KcIoS24N/zyImdkXkxrDeeqHPiw9FFNpAbFnwNQx7VCwiwJgjII2wVSYYYBcnpTRzqU8PL0HSU9xcDKn5n9iuD8pFAieF1nSP6k2e6E7hOuPEkIkSkemUedUS6t2BS+pUZqg4bbMDcSCz7OL0acjyvdHmlkcdjNJzPsEFdqZ7eKBTwkOFS3ot7brpRtG8AMjDKx0KQHUawm8S2vPW3RjhD4QB2osPpvmokKLyvP4mZy0II3RN9ga69nwntKEBGUbclAwBEQwUE0l0MhknLymVbABtbmllO54X8R940LTyVfXC92RXL/F3j5iJB91WtUwf5ODLB96rp09I4IJI31oEkW7r0cV2NbvusYSZBaD/PVZoV9h5i2oz8UospaGHjoce4cJG+ZOLKB/lUM778rXVL/oFFm2TRMEOH4x2yBq0EyJo4o+cOquWhj29FFCB2yylpWhpi42Nf80qXM0d7jKxwaKkS7R7ZdM1eAJ44B/gV57Msqiiw== U03 Takeshiba
EOF
chmod 0600 /root/.ssh/authorized_keys
restorecon -R /root/.ssh/
%end

