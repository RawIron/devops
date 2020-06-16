## My Ubuntu Playbooks

[![Build Status](https://travis-ci.org/RawIron/devops-my-ubuntu.svg)](https://travis-ci.org/RawIron/devops-my-ubuntu)

Rebuild my Ubuntu laptop using Ansible playbooks. Just for the fun of it and to learn more about Ansible.
Also automate a bunch of setup steps, eg add a new git repo to my virtualenvwrapper and bind to a the project home.
A Vagrant box is used to test the Ansible playbooks.

First create a vagrant box
```
$ vagrant up
```

Run defined tests on the vagrant box.
```bash
laptop$ vagrant ssh --command "cd /vagrant; ./test.sh"
```

Then test the ansible playbooks on the vagrant box
* all tasks
```
$ vagrant ssh
vagrant$ cd /vagrant
vagrant$ ansible-playbook --inventory-file=hosts --connection=local site.yml
```

* one role at a time using the tags defined in `site.yml`
```
vagrant$ ansible-playbook --inventory-file=hosts --connection=local site.yml --tags "setup"
```

In my usual workflow I change the ansible script, for example add a new alias `aliases.zsh`, and then _deploy_ to my laptop with
```bash
laptop$ ansible-playbook --inventory-file=hosts --connection=local site.yml --tags="alias" --extra-vars 'as_root=no'
```

## Categories and the major software that I use

### devops
automate everything and so everything is reproducible.
it can be run again and again.
makes testing, load testing, building and deploying easy.
also great for scaling.
* virtualbox
* vagrant
* ansible
* docker

### aws
tools to access, manage and deploy.
* jungledisk
* s3cmd
* awscli
* rclone

### jvm development
* scala
* java runtime
* maven and sbt

### python development
great python packages to help writing great code.
use functional programming, TDD, dependency injection, database abstraction, database migration.
* virtualenv
* nose, pyvows, hypothesis
* toolz, pyrsistent, effect
* inject
* sqlalchemy, agnostic


### system programming
programming languages for high performance and system level access.
* dmd (d compiler)
* C, C++


### data analysis
wrangle, plot, predict, test hypothesis, estimate.

#### py-data
* anaconda
* numpy, scipy, sympy, Jupyter, Seaborn, scikit-learn


### development tools
write code with fully fledged IDE or lightweight editor. plugins can be used to extend the functionality.
* intellij idea
* vim
* sublime
* git
* meld

#### intellij plugins
* maven helper
* scala
* python
* elixir
* markdown support

#### sublime plugins
* Package Control
* SublimeLinter
* sublimelinter-pylint
* sublimelinter-json
* BracketHighlighter
* Sublime CodeIntel
* SublimeREPL

#### vim plugins
* YouCompleteMe
* syntastic
* UltiSnips
* NerdTree
* tagbar
* vim-fugitive
* vim-airline

### system tools
look under the hood.

#### performance
show and measure what is happening in the Linux kernel.

* SystemTap, perf_events, dtrace4linux, ktap, lttng
* strace, ftrace, ltrace, ss, sysdig, tiptop
* mpstat, vmstat, netstat, iostat


### user account

#### github repos
* create workspace(s) in HOME
* git clone projects into the workspace(s)

### office tools
communicate. create and manage documents, files.
* firefox
* libre office
* FocusWriter
* artha thesaurus
* Kazam
* Screenkey
* 7zip, bzip2
* Midnight Commander

#### firefox plugins
* FileZilla

### media
view and process photos, e-books, audio and video.
* rawtherapee
* vlc media player
* ripperX
* dvdrip
* OpenShot
* Calibre

### games
* pychess

### eye candy
give Linux the look-and-feel I like.
unfortunately haven`t figured out how to configure a "glass look"
  * all backgrounds are transparent, blurred
  * drop-down menu are transparent, blurred
  * ...

tools for UI tweaks. did a few tweaks.
* Compiz config manager (CCSM)
```
sudo apt-get install ccsm
```

Compiz config settings manager, Unity plugin
* set opacity for launcher
* set opacity for panel (or use Unity Tweak Tool)


browse and download a theme
```
gnome-look.org
sudo apt-get install arc-theme
```

set theme in Unity Tweak Tool
* current theme is `Arc-dark`


change desktop background
* ghost-in-the-shell

terminator
* transparency of background
