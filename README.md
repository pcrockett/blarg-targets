# blarg-targets

My personal [blarg](https://github.com/pcrockett/blarg) module with a collection of
reusable targets. To incorporate into your own blarg project:

```ini
# in blarg.conf

[module.pcrockett]
location = https://github.com/pcrockett/blarg-targets.git
ref = main  # <-- don't use main; see <https://github.com/pcrockett/blarg-targets/releases>
```

Then in your own targets you can use, for example:

```bash
depends_on @pcrockett:archlinux/iptables-firewall/main
```
