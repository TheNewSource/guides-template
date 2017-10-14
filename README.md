# Guides Template

This is a skeleton repo containing a
[CFPB/DOCter](https://github.com/CFPB/DOCter)-based
[Jekyll](http://jekyllrb.com/) template for "Guides" documents.

## Getting started

### Installing Ruby

You will need [Ruby](https://www.ruby-lang.org) ( > version 2.1.5 ). To check
whether it's already installed on a UNIX-like system, open up a terminal
window (e.g. Terminal on OS X) and type `ruby -v` at the command prompt. For
example, you should see something similar to the following:

```shell
$ ruby -v
ruby 2.2.3p173 (2015-08-18 revision 51636) [x86_64-darwin14]
```

If the version number is less than 2.1.5, or instead you see something like:

```shell
$ ruby -v
-bash: ruby: command not found
```

Then Ruby is not installed, and you should choose one of the installation
methods below. [The "Installing Ruby" page of the official
Ruby language web
site](https://www.ruby-lang.org/en/documentation/installation/) explains how
to do this in a number of ways across many different systems.

#### Quickest Ruby install/upgrade for OS X

On OS X, you can use [Homebrew](http://brew.sh/) to install Ruby in
`/usr/local/bin`, which may require you to update your `$PATH` environment
variable:

```shell
$ brew update
$ brew install ruby
```

#### Optional: using a version manager

Whether or not Ruby is already installed, we strongly recommend using a Ruby
version manager such as [rbenv](https://github.com/sstephenson/rbenv) or
[rvm](https://rvm.io/) to help ensure that Ruby version upgrades don't mean
all your [gems](https://rubygems.org/) will need to be rebuilt.

### Cloning and serving the Guides Template locally

To create a new guide and serve it locally, where `MY-NEW-GUIDE` is the name
of your new repository:

```shell
$ git clone https://github.com/mbland/guides-template.git MY-NEW-GUIDE
$ cd MY-NEW-GUIDE
$ ./go serve
```

The `./go` script will check that your Ruby version is supported, install the
[Bundler gem](http://bundler.io/) if it is not yet installed, install all the
gems needed by the template, and launch a running instance on
`http://localhost:4000/`.

### Follow the template instructions

The Guides Template will walk you through the rest of the steps to edit and
publish your guide.

## Feedback and contributions

Feel free to [comment on or file a new GitHub issue][issues] or otherwise ping
[@mbland](https://github.com/mbland) with any questions or comments you may
have, especially if the current documentation hasn't addressed your needs.

[issues]: https://github.com/mbland/pages-server/issues

If you'd care to contribute to this project, be it code fixes, documentation
updates, or new features, please read the [CONTRIBUTING](CONTRIBUTING.md) file.

## Open Source License

This software is made available as [Open Source software][oss-def] under the
[ISC License][].  For the text of the license, see the [LICENSE](LICENSE.md)
file.

[oss-def]:     https://opensource.org/osd-annotated
[isc license]: https://www.isc.org/downloads/software-support-policy/isc-license/

## Prior work

This package was originally forked from [18F/guides-template][orig].

[orig]: https://github.com/18F/guides-template
