---
title: Using Kramdown features
---
[Kramdown][], the default Markdown converter used by Jekyll, provides some extra
features beyond those offered by standard Markdown.

[Kramdown]: https://kramdown.gettalong.org/quickref.html

* Table of contents
{:toc}

### Adding a table of contents within a page

To generate a table of contents in your pages, add the following placeholder
somewhere at the top:

```markdown
* Table of contents
{:toc}
```

See the [Automatic “Table of Contents” Generation][toc] section of the Kramdown
documentation for more details.

[toc]:      https://kramdown.gettalong.org/converter/html.html#toc

### Adding footnotes to a page

Kramdown also supports footnotes that automatically appear at the bottom of the
page.[^f] You may want to add an empty **Footnotes** section to the bottom of
your page to contain them. See the [Footnotes section of the Kramdown quick
reference][ref] for more information.[^r]

[ref]: https://kramdown.gettalong.org/quickref.html#footnotes

[^f]: Reference names in the Markdown source can be anything, and are
      automatically converted to numbers.

[^r]: There's too little content on this page for the back links from these
      footnotes to scroll the page, but rest assured the back reference anchors
      are there.

### Footnotes
