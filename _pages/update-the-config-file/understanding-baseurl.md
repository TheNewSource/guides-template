---
title: Understanding the `baseurl:` property
---
__It isn't necessary to update `baseurl:` yourself in most cases. This
section is not necessary to follow through with the rest of the instructions.__

The `baseurl:` configuration property affects the root URL of your guide when
served locally on your machine. When published on a site using [pages-server][],
`baseurl:` is automatically set to the name of your repository, so you don't
have to do that yourself.

[pages-server]: https://github.com/mbland/pages-server

For example, when run locally, the URL for this guide is
`http://localhost:4000/`. In production, the URL is
`https://MY-PAGES-HOST/guides-template/`, where `MY-PAGES-HOST` is the domain
name of your Pages server.

The URLs of the individual section pages are relative to the `baseurl:`. For
example, the `permalink:` of this page is `{{page.url}}`. The full URL then
becomes:

* `http://localhost:4000{{page.url}}` when served locally
* `https://MY-PAGES-HOST/guides-template{{page.url}}` when published

### Changing the `baseurl:` when serving locally

If you you do change the `baseurl:` property in the `_config.yml` file,
**remember to include the trailing '`/`'**.
