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

### Linking to other pages within the guide

Using the [Jekyll `link` tag][jekyll-link], you can include a reference to
another page in your document like so:

```markdown
[other-page]: {% raw %}{% link _pages/other-page.md %}{% endraw %}
```

[jekyll-link]: https://jekyllrb.com/docs/templates/#link

For example, this link to the next chapter, [Add images][add-images], appears in
the Markdown source as:

```markdown
For example, this link to the next chapter, [Add images][add-images], appears in
the Markdown source as:

[add-images]: {% raw %}{% link _pages/add-images.md %}{% endraw %}
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

[add-images]: {% link _pages/add-images.md %}
