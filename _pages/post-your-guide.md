---
title: Post your guide
---
Work your way through these steps to set up automated publishing for your new guide:

* Table of contents
{:toc}

### Set the default branch

_Note: If your repository is not just a Jekyll site — for example, if it's a
project repository with a `pages` branch for documentation — you can ignore this
step._

You also need to set `pages` branch as the default. First, click the
**Settings** page button on the right side of the screen:

![GitHub settings page button][gh-settings]

This will present you with the **Options** page. In the **Settings** section,
select `pages` from the **Default branch** drop-down menu:

![GitHub default branch option][gh-default]

Deleting the original `master` branch, both on GitHub and locally, is left as
an exercise for the reader. Doing so will help avoid confusion in the long run
but isn't strictly necessary.

### Create the publishing webhook

**If your organization has set an organization-wide GitHub webhook, you can skip
this step!** There is no need to set up a repo-specific webhook in such a case.

Go into the **Webhooks & Services** section of the **Settings** section and
click the **Add webhook** button. On the following screen,

* set the **Payload URL** to the webhook receiving endpoint where your instance
  of [pages-server] is running,
* leave the **Secret** field blank, and
* click **Update webhook**:

[pages-server]: https://github.com/mbland/pages-server

![Setting the GitHub webhook][gh-webhook]

### Trigger a build

With the webhook in place, push any update to the `pages` branch of your
GitHub repository. Within seconds, your guide should appear on your
pages-server host at `https://PAGES-HOST/MY-NEW-GUIDE`. Your guide is now live!

### Add the new guide to the Guides list

You've reached the final step! Add an entry to the `navigation:` list of your
organization's Guides repo linking to your new guide. For example, GitHub allows
authenticated and authorized users to [edit files directly using the GitHub
editor][gh-edit]:

![Add the new guide to the Guides homepage using the GitHub text editor][gh-add]

Congratulations! Your guide should now be published and accessible to the world!

[gh-settings]: {% link images/gh-settings-button.png %} "GitHub settings page button"
[gh-default]:  {% link images/gh-default-branch.png %} "GitHub default branch option"
[gh-webhook]:  {% link images/gh-webhook.png %} "Setting the GitHub webhook"
[gh-add]:      {% link images/gh-add-guide.png %} "Adding the new Guide"
[gh-edit]:     https://github.com/mbland/guides/edit/pages/_config.yml
