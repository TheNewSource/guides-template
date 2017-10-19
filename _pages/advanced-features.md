---
title: Advanced features
---
These features are not necessary to produce a Guide, but are available if you
need them.

* Table of contents
{:toc}

### Checking the build log

If your site did not rebuild after pushing an update, see the latest build log
at `https://PAGES-HOST/MY-SITE/build.log`, where `PAGES-HOST` is the host
running [pages-server][] and `MY-SITE` is the name of your Guide's repository.

[pages-server]: https://github.com/mbland/pages-server

### Server-generated defaults

The [pages-server][] will generate an additional configuration file,
`_config_pages.yml`, that will contain the following configuration values:

* **baseurl:** This sets `{% raw %}{{ site.baseurl }}{% endraw %}` to the
  repository name without the organization prefix, e.g. `/guides-template` for
  the `mbland/guides-template` repo, resulting in
  `https://PAGES-HOST/guides-template/`. See the [Understanding the `baseurl:`
  property][baseurl] section for details.

### Overriding server-generated defaults

If you _really_ want, you can prevent the pages-server from generating its own
configuration by adding a `_config_pages.yml` file to your site. The
pages-server will use that file instead of generating its own.

### Additional scripts and styles

If you'd like to add additional scripts or styles to every page on the site,
you can add `styles:` and `scripts:` lists to `_config.yml`. To add them to a
particular page, add these lists to the page's front matter.

### Overriding the theme's built-in styles

To override the built-in styles, create a new file in `assets/css` and add it
to the `scripts:` list in `_config.yml`.

However, consider sending a pull request to update the contents of [`_sass/` for
{{ site.theme }}][theme-sass] if your changes may be beneficial to all sites
using the theme.

[theme-sass]: https://github.com/mbland/{{ site.theme }}/tree/master/_sass

### Experimenting with the `{{ site.theme }}` gem

To try out changes to the theme, clone the {{site.theme}} repository into the
same parent directory as your guide:

```shell
$ git clone {{site.repos[1].url}}
```

Then update your `Gemfile` to point to this clone:

```yaml
group :jekyll_plugins do
  gem '{{site.theme}}', path: '../{{site.theme}}'
end
```

Then run `bundle install` and `./go serve` to begin using the local version of
`{{site.theme}}`. Any changes within your local clone will appear in your
locally-hosted guide upon reload.

### Publishing to multiple sites

[pages-server][] supports publishing to different sites based on the branch
name, and to version-specific endpoints based on branch name patterns. For
example, a branch name matching `v[0-9]+.[0-9]+.[0-9]*[a-z]+`, such as `v1.0.0`,
could be published to `https://PAGES-HOST/guides-template/v1.0.0`

### Publishing to authenticated sites

For publishing to authenticated sites accessible via HTTPS, consider using
[oauth2_proxy][] with [nginx][] to serve such sites.

[oauth2_proxy]: https://github.com/bitly/oauth2_proxy
[nginx]:        https://nginx.org/

### Publishing to internal and external sites from the same branch

[pages-server][] can be configured to publish to both internal (authenticated)
and external (public) sites on each commit. If this feature is enabled on the
server, you can enable it for your Guide by adding a `_config_internal.yml` file
(optionally containing internal-only overrides).

If `_config_internal.yml` contains:

```yaml
internal: true
```

then that sections formatted with the following markup only appear on the
internally-facing site and are stripped out of the publicly-facing site:

```liquid
{% raw %}{% if site.internal %}TEXT TO BE REDACTED FROM PUBLIC SITES{% endif %}{% endraw %}
```

For more details, see [the "Publishing to internal and external sites from the
same branch" section of the pages-server README][int-ext].

[int-ext]: https://github.com/mbland/pages-server#publishing-to-internal-and-external-sites-from-the-same-branch

[baseurl]: {{ site.baseurl }}{% link _pages/update-the-config-file/understanding-baseurl.md %}
