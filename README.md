# Guides Template

This is a skeleton repo containing a template for "Guides" documents. It uses
[Jekyll][] as the rendering system, and the
[`jekyll-theme-guides-mbland`][theme] Ruby gem for the theme.

[Jekyll]: https://jekyllrb.com/
[theme]:  https://rubygems.org/gems/jekyll-theme-guides-mbland

## Getting started

### Installing Ruby

You will need [Ruby][] version 2.3.3 or greater. To check whether it's already
installed on a UNIX-like system, open up a terminal window (e.g. Terminal on OS
X) and type `ruby -v` at the command prompt. For example, you should see
something similar to the following:

[Ruby]: https://www.ruby-lang.org/

```shell
$ ruby -v
ruby 2.3.3p222 (2016-11-21 revision 56859) [universal.x86_64-darwin17]
```

If the version number is less than 2.3.3, or instead you see something like:

```shell
$ ruby -v
-bash: ruby: command not found
```

Then Ruby is not installed, and you should choose one of the installation
methods below. [The "Installing Ruby" page of the official Ruby language web
site][ruby-install] explains how to do this in a number of ways across many
different systems.

* On macOS, consider using [Homebrew][]:
  ```shell
  $ brew update
  $ brew install ruby
  ```
* You may consider using a version manager such as [rbenv][] instead.

[ruby-install]: https://www.ruby-lang.org/en/documentation/installation/
[Homebrew]:     https://brew.sh/
[rbenv]:        https://github.com/rbenv/rbenv

### Installing Node.js

You will need [Node.js][] version v4.0.0 or greater. Node.js is used by the
[`jekyll_pages_api_search`][search] gem, integrated into the
`jekyll-theme-guides-mbland` gem, to build the [Lunr.js][] index.

[search]:  https://rubygems.org/gems/jekyll_pages_api_search
[Lunr.js]: https://lunrjs.com/

As with Ruby above, check which version you have via:

[Node.js]: https://nodejs.org/

```shell
$ node -v
v8.7.0
```

If you don't have version v4.0.0 or greater, or Node.js isn't installed, visit
the Node.js site and download a suitable version for your system.

* On macOS, consider using [Homebrew][]:
  ```shell
  $ brew update
  $ brew install node
  ```
* You may consider using a version manager such as [nvm][] instead.

[nvm]: https://github.com/creationix/nvm

### Cloning and serving the Guides Template locally

To create a new guide and serve it locally, where `MY-NEW-GUIDE` is the name
of your new repository:

```shell
$ git clone https://github.com/mbland/guides-template.git MY-NEW-GUIDE
$ cd MY-NEW-GUIDE
$ ./go serve
```

The `./go` script will check that your Ruby and Node version is supported,
install the [Bundler][] gem if it is not yet installed, install all the gems
needed by the template, and launch a running instance at
`http://localhost:4000/`.

[Bundler]: https://bundler.io/

### Follow the template instructions

The Guides Template at `http://localhost:4000/` will walk you through the rest
of the steps to edit and publish your guide.

## Feedback and contributions

Feel free to [comment on or file a new GitHub issue][issues] or otherwise ping
[@mbland](https://github.com/mbland) with any questions or comments you may
have, especially if the current documentation hasn't addressed your needs.

[issues]: https://github.com/mbland/guides-template/issues

If you'd care to contribute to this project, be it code fixes, documentation
updates, or new features, please read the [CONTRIBUTING](CONTRIBUTING.md) file.

## Open Source License

This software is made available as [Open Source software][oss-def] under the
[ISC License][].  For the text of the license, see the [LICENSE](LICENSE.md)
file.

[oss-def]:     https://opensource.org/osd-annotated
[isc license]: https://www.isc.org/downloads/software-support-policy/isc-license/

## Prior work

This repository was originally forked from [18F/guides-template][orig], the
content of which was derived from [CFPB/DOCter][].

[orig]: https://github.com/18F/guides-template
[CFPB/DOCter]: https://github.com/CFPB/DOCter
