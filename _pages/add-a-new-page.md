---
title: Add a new page
---
To add new pages, create a [Markdown][] file in the `_pages/` directory of the
repository. For example, the Markdown text for this page is
[`_pages/add-a-new-page.md`][new-page].

[Markdown]: https://daringfireball.net/projects/markdown/syntax
[new-page]: {{site.repos[0].url}}/blob/pages/_pages/add-a-new-page.md

The Markdown document begins with this [YAML front matter][front-matter]:

[front-matter]: https://jekyllrb.com/docs/frontmatter/

```yaml
---
title: {{ page.title }}
---
```

For most pages this will suffice. The URL of the page will match the file path
relative to the `_pages` directory, minus the `.md` extension. For example,
the URL of this page is: `{{site.baseurl}}{{ page.url }}`

For the home page of your guide, the front matter should contain a
`permalink: /` entry like this:

```yaml
---
permalink: /
title: Introduction (or whatever title you choose)
---
```

You can also explicitly set a `permalink:` like so:

```yaml
---
permalink: {{ page.url }}
title: {{ page.title }}
---
```

### Setting the title in the table of contents

By default, the title appearing in the table of contents will match the `title:`
specified in the front matter of the page. If you'd like to specify a different
name in the table of contents, you can also set the `navtitle:` property:

```yaml
---
title: Since brevity is the soul of wit, I'll be brief.
navtitle: Polonius's advice
---
```

### Adding the page to the table of contents

Stop the local server, run `./go update nav`, and run `./go serve` to serve the
site again. You should see the entry for your new page appear at the end of the
table of contents.

You will learn more about this process in the [_Update the config
file_][update-nav] chapter, including how to rearrange the entries to suit your
preferred order.

### Next steps

Now that you've added a new page, click the _Add links_ entry in the table of
contents to learn how to add links to other websites, as well as internal links
to other pages within your document.

Alternately, you may click _Make a child page_ to see how to make chapters
appear as children of related chapters, or _Using Kramdown features_ to learn
about some advanced formatting features.

[update-nav]: {{ site.baseurl }}{% link _pages/update-the-config-file.md %}#register-pages-in-the-navigation-bar
