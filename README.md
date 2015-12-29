# bomsaway

###### Make BOMs go away because they are ugly and ruining my jekyll site

This is a utility to remove BOMs, there are other methods as well, perhaps the simplest using sed to remove all BOMs from some markdown files in a directory

```
sed -i '1 s/\xEF\xBB\xBF//' *.md
```

or in VIM you can set nobomb:

```
:set nobomb 
```

but I ran across this shellscript and immediately wanted it installed on all my machines, so why not give it a repo and a quick website so this thing can be readily available. 

Originally seen [here](http://thegreyblog.blogspot.de/2010/09/shell-script-to-find-and-remove-bom.html)

[Enrico Maria Crisostomo](https://plus.google.com/+EnricoMariaCrisostomo?prsrc=5) named it bom-remove, but that's a little dry for my taste.  How about something like BOMBS AWAY!  Remove caps, the B and space and you got bomsaway

### Examples

Assuming the script is in your $PATH and it's called bomsaway, you can "clean" a bunch of files invoking it this way:

```
$ bomsaway file-to-clean ...
```

If you want to clean the files in an entire directory, you can use the following syntax:

```
$ bomsaway -r dir-to-clean ...
```

If your sed installation is not in your $PATH or you have to use an alternate version, you can invoke the script with the following syntax:

```
$ bomsaway -s path/to/sed file-to-clean ...
```

If you want to clean a directory in which other file systems might be mounted, you can use the -x option so that the script does not descend them:

```
$ bomsaway -xr dir-to-clean ...
```


# Install

##### oneliner (it’s how I install myself so I’m leaving this up top)

```
curl https://raw.githubusercontent.com/joshuacox/bomsaway/master/bootstrapbomsaway.sh|bash
```

##### manual install

just copy the wanted files somewhere into your path

alternatively, if you want to install them all to `/usr/local/bin/`, then

```
sudo make install
```

##### Ansible install

or you can add hosts to a bomsaway list in your ansible hosts file like so

```
examplehost1 ansible_ssh_port=2222 ansible_ssh_host=1.2.3.4 ansible_ssh_user=root
examplehost2 ansible_ssh_port=2222 ansible_ssh_host=1.2.3.5 ansible_ssh_user=root

[bomsaway]
exampleHost1
exampleHost2
```
and use ansible to install to those hosts

```
make play
```

look at the included Makefile (as you should every Makefile for that matter before you `sudo make anything`)
it merely uses the install command to copy the scripts to `/usr/local/bin` with mode 0755

## bomsawaywebsite 
[joshuacox.github.io/bomsaway](http://joshuacox.github.io/bomsaway)

### ohter related errata
[joshuacox.github.io](http://joshuacox.github.io/)
