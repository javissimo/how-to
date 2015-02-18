Scripts are installed into `~/.irssi/scripts/` and loaded inside irssi with the command

`/script load scriptname.pl`

to have scripts load automatically on startup create a directory autorun inside scripts and link to the script from there:

``` bash
cd ~/.irssi/scripts/
mkdir autorun
cd autorun
ln -s ../scriptname.pl
```