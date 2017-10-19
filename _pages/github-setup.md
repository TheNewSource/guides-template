---
title: GitHub setup
---
Work your way through these steps to prepare your GitHub repository:

* Table of contents
{:toc}

### Create a new local repository

Once you've got the `_config.yml` file up to date, run `./go detach` to remove
all the pages and images that came with this template—make sure you didn't reuse
any of the file names from the template!—and create a new local Git repository
for your guide:

```shell
$ ./go detach

INFO   Clearing Guides Template files
RUN    rm -f _pages/add-a-new-page/make-a-child-page.md ...
INFO   Removing `./go detach` command
RUN    rm scripts/detach
INFO   Removing old git repository
RUN    rm -rf .git
INFO   Creating a new git repository
RUN    git init
INFO   Creating 'pages' branch
RUN    git checkout -b pages
INFO   Updating navigation menu
RUN    ./go update nav
INFO   Adding files for initial commit
RUN    git add .
INFO   All done! Run `git commit` to create your first commit.
```

Then execute `git commit -m 'Initial commit'` to begin the commit history for
your new Guide! (Unless you're Git savvy and would like to tweak things a bit
first.)

### Set up SSH access

You may want to [set up SSH access to GitHub][gh-ssh] if you haven't already—
this way you won't need to enter your password and two-factor authentication
code every time you push changes to GitHub.

[gh-ssh]: https://help.github.com/articles/connecting-to-github-with-ssh/

### Create a new repository

Now you're ready to create a new GitHub repository! You'll want to set the
`Public` attribute under the **Team** section and add a fitting `Description`.

Do _not_ select **Initialize this repository with a README**, **Add
.gitignore**, or **Add a license**. Instead, update the `README.md` file in your
own, local repository, as necessary. Your local repository also already has
`.gitignore` and `LICENSE.md` files.

After submitting the form to create a new repository, you'll see GitHub's
instructions to create a local repository and push your changes up to it. You
can ignore these instructions. Instead, do the following, replacing `MY-ID` with
your GitHub username or organization and `MY-NEW-GUIDE` with the name of your
guide's repository:

```
# If you have SSH set up:
$ git remote add origin git@github.com:MY-ID/MY-NEW-GUIDE.git

# Otherwise:
$ git remote add origin https://github.com/MY-ID/MY-NEW-GUIDE.git

$ git push -u origin pages
```

Note that you can update the description and add a website link to the
repository after creating it:

![Setting the description and website of the GitHub repository][gh-desc]


### Next steps

Once you've finished the steps to create your new guide repo and push it
to GitHub, click the _Post your guide_ entry in the table of contents for the
final steps to publish your guide.

[gh-desc]: {{ site.baseurl }}{% link images/description.png %} "GitHub repo description and website"
