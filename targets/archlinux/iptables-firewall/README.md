# iptables-firewall

A very basic firewall configuration that:

* blocks (most) incoming traffic
* allows all outgoing traffic
* for both ipv4 and ipv6

The only incoming traffic it allows through the firewall is DHCP and the ipv6
equivalent. It is also configured to be a "good citizen" where blocked connections get
rejection responses, instead of being silently ignored.

## Example usage:

Assuming [your blarg.conf file is setup](../../../README.md):

```bash
depends_on @pcrockett:archlinux/iptables-firewall/main
```

## Important Notes

* Assumes `iptables.service` and `ip6tables.service` exist on your machine (which they
  are by default on Arch)
* Will enable those services if necessary
* Assumes you have `sudo` access and are not running `blarg` as root
* Will blindly overwrite any existing rules in `/etc/iptables`, and will _continue_ to
  revert changes to those rules every time this is run
