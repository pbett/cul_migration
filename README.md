# cul_migration
Scripts and notes to aid migration away from CiteULike

We might need to migrate away from CiteULike, as it's increasingly broken and unsupported.

While it's straightforward to export your CuL library as a BiBTeX file
* Click on MyCiteULike --> Export, taking you to a page like http://www.citeulike.org/profile/pbett/export

there remains the question of how to get at all the file you've uploaded as attachments.

I've made a little bash script `get_cul_attachments.sh` that parses the libray BiBTeX file for your attachments, and sets off a  `wget` command to download each one to disk.

You need to log into CiteULike first though, which means having an appropriate cookie somewhere. I've got another script, `cul_login.sh`,  which does another `wget` command to generate the cookie. You'll need to edit that to use your own username and password before you run it.

