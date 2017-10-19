---
title: Add images
---
There are two ways to add images. First, if you'd like to keep all your images
in a separate directory, create an `images/` directory and put your images
inside it.  Otherwise, you can keep an image in the same directory as the page
that references it.

Now within your documents, you can reference your images as advised by the
[Accessibility Guide][acc-images], using raw HTML or [Markdown image
syntax][md-img] (adding the `{% raw %}{{ site.baseurl }}{% endraw %}` prefix to
your links as discussed in the _[Add links][]_ chapter):

[acc-images]: https://accessibility.18f.gov/images/
[md-img]:     https://daringfireball.net/projects/markdown/syntax#img

```markdown
![Example of an included image][img-example]

[img-example]: {% raw %}{{ site.baseurl }}{% link _pages/images.png %}{% endraw %}
  "Example of an included image"
```

![Example of an included image][img-example]

#### Protip: Strip and optimize your images

You may want to use [jpegoptim][] or [optipng][] to strip and optimize your
images. On OS X, both are available via [Homebrew][]. For example:

[jpegoptim]: https://github.com/tjko/jpegoptim
[optipng]:   http://optipng.sourceforge.net/
[Homebrew]:  https://brew.sh/

```shell
$ brew install jpegoptim optipng
$ jpegoptim -s _pages/image.jpg
$ optipng -o 9 -strip all _pages/image.png
```

### Next steps

Click the _Update the config file_ entry in the table of contents.

[img-example]: {{ site.baseurl }}{% link _pages/images.png %}
  "Example of an included image"
[Add links]:   {{ site.baseurl }}{% link _pages/add-links.md %}#linking-to-other-pages-within-the-guide
