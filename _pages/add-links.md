---
title: Add links
---
Markdown supports two link formats: [_inline_ and _reference_][md-links]. Though
both options are available to you, the _reference_ format is recommended and
used throughout this template. For example:

[md-links]: https://daringfireball.net/projects/markdown/syntax#link

```markdown
Markdown supports two link formats: [_inline_ and _reference_][md-links]. Though
both options are available to you, the _reference_ format is recommended and
used throughout this template. For example:

[md-links]: https://daringfireball.net/projects/markdown/syntax#link
```

### Generating section header links

There's nothing special to do here! Thanks to the magic of [AnchorJS][],
included as part of the [jekyll-theme-guides-mbland][theme] theme, these links
are automatically added to `h3` headers and above (i.e. [Markdown lines starting
with `###`][md-headers]). Hovering over a section header using the mouse reveals
its link via a small link icon.

[AnchorJS]:   https://www.bryanbraun.com/anchorjs/
[theme]:      https://rubygems.org/gems/{{site.theme}}
[md-headers]: https://daringfireball.net/projects/markdown/syntax#header

#### Only use `h3` headers and above

Since the main document title is a `h1` header, and the document section title
is a `h2` header, you generally want to use `h3` and above in your `_pages`
files. This is why automatic section header links are only available for `h3`
and above.

### Linking to other pages within the guide

Using the [Jekyll `link` tag][jekyll-link], you can include a reference to
another page in your document like so:

```markdown
[other-page]: {% raw %}{{ site.baseurl }}{% link _pages/other-page.md %}{% endraw %}
```

[jekyll-link]: https://jekyllrb.com/docs/templates/#link

Every link to another page _must_ be prefixed with
`{% raw %}{{ site.baseurl }}{% endraw %}`. If you'd like to know why, see the
_[Understanding the `baseurl:` property][baseurl]_ page.

For example, this link to the next chapter, [Add images][add-images], appears in
the Markdown source as:

```markdown
For example, this link to the next chapter, [Add images][add-images], appears in
the Markdown source as:

[add-images]: {% raw %}{{ site.baseurl }}{% link _pages/add-images.md %}{% endraw %}
```

#### Protip: Put references containing Jekyll `link` tags at the bottom

Consider placing all `link`-based references at the bottom of the Markdown file.
This makes it easier to find and update internal references should pages move
around.

This also avoids issues with Markdown syntax highlighters parsing the `_pages`
argument of a Jekyll `link` tag as the beginning of an emphasized block.

### Next steps

Click the _Add images_ entry in the table of contents to learn how to add images
to your guide.

[add-images]: {{ site.baseurl }}{% link _pages/add-images.md %}
[baseurl]:    {{ site.baseurl }}{% link _pages/update-the-config-file/understanding-baseurl.md %}
