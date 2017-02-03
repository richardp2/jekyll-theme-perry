# jekyll-theme-perry

This is a custom Jekyll theme used for my own websites, but anyone who likes it is welcome to make
use of it for their own purposes. I have developed this as a hobby, the coding is not necessarily
brilliant so if you want to use it, but have some suggestions as to how it could be improved, then
please feel free to submit issues, pull/merge requests etc for me to look at. I can't guarantee I
will make any changes, but I will certainly be interested to get feedback from better developers
:smiley:

## Installation

Add this line to your Jekyll site's Gemfile:

```ruby
gem "jekyll-theme-perry"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: jekyll-theme-perry
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jekyll-theme-perry

## Features

 * Responsive layout
 * HTML5
 * [Jekyll SEO Tag][seo] support
 * [Jekyll Redirect From][red] support
 * [Jekyll Archvies][arc] support
 * [Post Series][ps] support

## Usage

Before making use of this theme, there are a number of settings that need to be added to the
`_config.yml` file, and a couple of yaml files to be added to the `_data` directory.

The following items need to be added to the `_config.yml` file otherwise there will be errors:

 * `title` Your site title;
 * `author` The global site author (more details below);
 * `url` The full url of the website;
 *  `gems: ['jekyll-seo-tag']` Essential gem used by the theme.

The [Jekyll SEO Tag][seo] plugin is included to handle the SEO tags for the theme. If it is not 
included in the `gems` list then the theme will fail.

The navigation menu is generated based on a yaml file in the `_data` folder. The file needs to be 
named `links.yml` and the format is as follows:

```yaml
- url: /
  title: Home
- url: /blog
  title: Blog
  sub:
  - url: /blog/jekyll
    title: Jekyll
  - url: /blog/technology
    title: Technology
- url: /about
  title: About Me
```

Author information needs to be included in the file `_data\authors.yml` and can be leveraged in much
the same way as it is by the [Jekyll SEO Tag][seo] plugin as detailed [here][s-conf], although much
more detail has been included in this theme so the following options are available for use on author
pages:

```yaml
richard:
  name: Richard Perry 
  about: 
  email: 
  web: 
  facebook:
  flickr: 
  github: 
  gravatar: 
  google: 
  instagram:
  linkedin: 
  twitter:  
```

That's all that needs to be done to get the theme up and running, but that's not all there is. The
theme has built in support for the [Jekyll Archives][arc] and [Jekyll Redirect From][red] gems with
a layouts for both included by default. To make use of these plugins, you need to include the gems
in your `_config.yml` file. The gems section should now something like this:

```yaml
gems:
  - jekyll-seo-tag
  - jekyll-archives
  - jekyll-redirect-from
```

Or

```yaml
gems: ['jekyll-seo-tag','jekyll-archives','jekyll-redirect-from']
```

In the page footer, you can include copyright information, a 'Powered by Jekyll' attribution and a
'Hosted by' attribution. All you need to do is include the following in your `_config.yml` file:

```yaml
meta:             
  copyright:
    year:           '2009' # First year of copyright attribution, this will show 2009 - 2017
  powered-by:     true
  hosting:          
    name:         GitHub Pages
    link:         //pages.github.com/
```

The copyright year is the year you want the copyright to start from. The copyright attribution will
use `site.data.authors[site.author].name`, so set that appropriately. If you just want the copyright
to display the current year then it should be set to `copyright: true` with no year.

Also, you can include a logo as part of your header with the `logo` tag in your `_config.yml` file.

### Archives

Archive pages for Categories, Tags, Year, Month & Day can all be automatically generated through the
[Jekyll Archives][arc] gem as mentioned above, and the theme includes a single layout for them all
(this can be overidden with your own `archive.html` layout file, or using the [Jekyll Archives][arc]
configuration settings). To make use of the plugin, you need to add the configuration options
relevant to you. Further information on this can be found [here][a-conf].

This theme also has support for generating lists of posts organised by date in reverse order for use
as additional archives. The posts are listed and grouped by year and month. This feature can be used
on any page by putting `{% include archives.html %}` within any loop i.e.

```yaml
{% for post in site.posts %}
    {% include archives.html %}    
{% endfor %}
```

### Post Series

There is also support for creating post series with quick links to the other posts in the series (Of
course, you could just use Categories and/or Tags for this as the [Jekyll Archives][arc] plugin
creates the archive pages for these already). To make use of this feature you will need to add a
`_data\series.yml` file using the following format:

```yaml
- name: "Migrating to Jekyll"
  description: "At the back end of last year, I started migrating my website to Jekyll. This series
    details my journey through that."
  image: "/assets/images/jekyll.png"
  copyright: "Copyright &copy; 2017 <a href='//jekyllrb.com/' title='Jekyll'>Jekyll</a>"
  permalink: /series/jekyll/
  start: "2014-03-18 19:30:00+00:00"
  end: "2014-04-14 21:00:00+00:00"
```
Then to add a post to the series simply add `series: Migrating to Jekyll` to the frontmatter. Then
to create a page to list all posts in the series in chronological order create a page with the same
line in the frontmatter and a layout of `series`. Post summaries for each post in the series will
then be included at the bottom of the page displayed with the oldest post first.

### Google Analytics

You can now make use of Google Analytics by including the following in your `_config.yml` file:

```yaml
google:
  analytics: UA-XXXXXXXX-X
```

This will only be included in the site if you define the `JEKYLL_ENV` as `production` before
building your site. For more details, see the [Jekyll Website][env]

### Disqus Comments

Commenting is enabled on this site via [Disqus][dis]. Before you can use comments on your site, you
will need to sign up for a [Disqus][dis] account and then include your shortname in your
`_config.yml` file as follows:

```yaml
disqus:
  shortname: xxxxxx
```

Again, this will only be included in the site if you define the `JEKYLL_ENV` as `production` before
building your site. For more details, see the [Jekyll Website][env]

## Contributing

Bug reports and pull requests are welcome on GitHub at 
https://github.com/richardp2/jekyll-theme-perry. This project is intended to be a safe, welcoming
space for collaboration, and contributors are expected to adhere to the
[Contributor Covenant][contrib] code of conduct.

## Development

To set up your environment to develop this theme, run `bundle install`.

Your theme is setup just like a normal Jekyll site! To test your theme, run `bundle exec jekyll
serve` and open your browser at `http://localhost:4000`. This starts a Jekyll server using your
theme. Add pages, documents, data, etc. like normal to test your theme's contents. As you make
modifications to your theme and to your content, your site will regenerate and you should see the
changes in the browser after a refresh, just like normal.

When your theme is released, only the files in `_layouts`, `_includes`, `_sass` and `assets`
tracked with Git will be released.

## License

The theme is available as open source under the terms of the [MIT License][mit].

[seo]: //github.com/jekyll/jekyll-seo-tag
[s-conf]: //github.com/jekyll/jekyll-seo-tag#author-information
[arc]: //github.com/jekyll/jekyll-archives
[a-conf]: //github.com/jekyll/jekyll-archives/blob/master/docs/configuration.md
[red]: //github.com/jekyll/jekyll-redirect-from
[contrib]: //contributor-covenant.org
[mit]: //opensource.org/licenses/MIT
[ps]: #post-series
[env]: //jekyllrb.com/docs/configuration/#specifying-a-jekyll-environment-at-build-time
[dis]: //disqus.com