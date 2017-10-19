---
title: Understanding the `baseurl:` property
---
__It isn't necessary to update `baseurl:` yourself in most cases. This
section is not necessary to follow through with the rest of the instructions.__

{% capture reponame %}{{ site.repos[0].url | split:"/" | last }}{% endcapture %}

The `baseurl:` configuration property affects the root URL of your Guide. The
URL of each page in your Guide is relative to the `baseurl:`, which is set to
`/` by default.

For example, the `permalink:` of this page is `{{page.url}}`.  When
published to a shared host using [pages-server][], `baseurl:` is automatically
set to the base name of the repository, i.e. `{{reponame}}`. The full URL then
becomes:

* `http://localhost:4000{{page.url}}` when served locally
* `https://guides.example.com/guides-template{{page.url}}` when published (where
  `guides.example.com` is a placeholder for the actual pages-server host)

[pages-server]: https://github.com/mbland/pages-server

### Make all internal links relative to `baseurl:`

This is why the `{% raw %}{{ site.baseurl }}{% endraw %}` prefix is required for
all internal links, to ensure that they remain correct whether your Guide is
served:

* locally (e.g. `http://localhost:4000/`),
* from its own dedicated host (e.g.  `https://{{reponame}}.example.com/`), or
* from a shared host (e.g.  `https://guides.example.com/{{reponame}}/`).

### Changing the `baseurl:` when serving locally

If you you do change the `baseurl:` property in the `_config.yml` file,
**remember to include the leading '`/`'**. At the same time, when serving your
Guide locally, **remember to include the trailing '`/`' at the end of the
baseurl**.

For example, to serve the Guides Template locally as
`http://localhost:4000/guides-template/`, add the following to `_config.yml` and
restart the server:

```yaml
baseurl: "/guides-template"
```
