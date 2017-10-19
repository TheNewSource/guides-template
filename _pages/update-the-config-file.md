---
title: Update the config file
---
Work your way through these steps to update the `_config.yml` file—this
configures the theme for your specific guide:

* Table of contents
{:toc}

### Set the guide name

The `name:` property appears as the guide's overall title. For example:

```yaml
name: {{site.name}}
```

### Set the `exclude:` entries

Make sure the `exclude:` list contains at least the following files, and add
any other files you might have added that shouldn't appear in the
generated `_site` directory:

```yaml
exclude:
{% for i in site.exclude %}- {{ i }}
{% endfor %}```

### Register pages in the navigation bar

The `navigation:` list generates the table of contents. For example,
the `navigation:` section of this guide contains:

```yaml
navigation:
{% for i in site.navigation %}- text: {{ i.text }}{% if i.url %}
  url: {{ i.url }}{% endif %}
  internal: {{ i.internal }}{% if i.children %}
  children:{% for child in i.children %}
  - text: {{ child.text }}
    url: {{ child.url }}
    internal: {{ child.internal }}{% endfor %}{% endif %}
{% endfor %}```

After you add pages, move pages, or make changes to `title:` or `permalink:`,
run `./go update nav` from the root directory to produce this list (it will
reflect the arrangement and contents of the files in your pages directory).
After running the script, you may edit the results by hand to produce the
desired ordering of any new pages; the order of existing entries will remain
the same.

### Update the repository list

Update the `repos:` list to contain, as the first entry, the main repository for
your new guide; it will be used to generate the _Edit this page_ and _file an
issue_ links in the footer.

For example, the `repos:` entry for this template contains:

```yaml
repos:{% for i in site.repos %}
- name: {{ i.name }}
  description: {{ i.description }}
  url: {{ i.url }}{% endfor %}
```

For the `description:` property, it's OK to enter something generic like "main
repository." However, it's also OK to enter placeholder text for these
properties and change them later, ideally before publishing.

If you wish to use these values in your pages, you can access them via
`site.repos`. For example, this [{{site.repos[0].name}} source][repo-url] link
is written as:

[repo-url]: {{site.repos[0].url}}

```markdown
For example, this [{% raw %}{{site.repos[0].name}}{% endraw %} source][repo-url]
link is written as:

[repo-url]: {% raw %}{{site.repos[0].url}}{% endraw %}
```

### Optional: set the `back_link:` property

The `back_link:` property produces the _{{site.back_link.text}}_ link just above
the title of the guide at the top of the page. You may change this property to
link to any other collection of documents to which your new "guide" actually
belongs.

### Optional: update `google_analytics_ua:`

Set the `google_analytics_ua:` property for the Google Analytics account for
your Guide, if applicable.

### Next steps

Once you're finished updating the config file, click the _GitHub setup_
entry in the table of contents.
