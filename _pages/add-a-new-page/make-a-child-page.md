---
title: Make a child page
---
If you want to nest a page under a parent page, first create a subdirectory of
`_pages` that matches the file name of the parent page, minus the `.md` or
other file extension. For example, the directory containing this page is
{% capture basename %}/{{ page.path | split:"/" | last }}{% endcapture %}{% capture parent_dir %}{{ page.path | replace:basename,'' }}{% endcapture %}[`{{ parent_dir }}`][parent-dir].

[parent-dir]: {{ site.repos[0].url }}/tree/pages/{{ parent_dir }}/

Then follow the instructions to [add a new page][add-page] inside the child
directory. Here is the front-matter for this page:

```yaml
---
title: {{ page.title }}
---
```

Or, if the page had set its `permalink:` explicitly:

```yaml
---
permalink: {{ page.url }}
title: {{ page.title }}
---
```

### Adding the child page to the table of contents

Stop the local server, run `./go update nav`, and run `./go serve` to serve the
site again. You should see the entry for your new page appear as the last entry
beneath its parent page within the table of contents.

You will learn more about this process in the [_Update the config
file_][update-nav] chapter, including how to rearrange the entries to suit your
preferred order.

### Next steps

Click the _Add links_ entry in the table of contents to learn how to add links
to other websites, as well as internal links to other pages within your
document.

[add-page]: {% link _pages/add-a-new-page.md %}
[update-nav]: {% link _pages/update-the-config-file.md %}#register-pages-in-nav-bar
