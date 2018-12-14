# lb -- Luke's Blog Script

Blogs and RSS feeds in less than 100 lines of shell script, actually, right now, less than 80.  `lb` stands for whatever. Maybe "Luke's blog", maybe "lightweight blog", maybe "less bloat", doesn't matter that much.

## Features

`lb` is an extremely small shell script that lets you write blog posts and will format them in all the ways you could ever want. Here's what it will produce:

- A Rolling Blog Page. See [my own Rolling Page](https://lukesmith.xyz/blog.html) as an example.
- A list of all blog entries with dates: [Blog List File](https://lukesmith.xyz/blogindex.html).
- All your blog posts appear as standalone entries/pages, for example [like this one](https://lukesmith.xyz/blog/the-real-bronze-age-mindset.html).
- These standalone files exist in a `blog/` directory, which you can allow to be browsed manually via your Apache web server as I have [here](http://lukesmith.xyz/blog).
- Blog posts are added, in full form, to an RSS feed of your chosing as well, see [my RSS feed](https://lukesmith.xyz/rss.xml).
- Posts in the rolling blog have divs that can easily be modified via a CSS stylesheet, and in general everything is easily editable.
- One command to delete published entries from the RSS feed, rolling blog and standalone entries simultaneously.
- Published blog entries can now be revised, updating the standalone blog pages, the RSS feed and everything else.

## Usage

`lb` commands are all one letter cause I'm lazy. They all stand for something though.

```sh
./lb n(ew)	# Make a new blog post draft.
./lb e(edit)	# Edit a draft of an entry.
./lb t(rash)	# Delete a draft of an entry.
./lb p(ublish)	# Finalize/publish a blog post draft.
./lb d(elete)	# Delete a published blog post.
./lb r(evise)	# Revise an already published entry (you can republish it with `lb p` when done)
```

## Installation

+ bash and GNU sed is required. >inb4 bloat
+ Be sure that you own or have writing privileges in the given directory, so the script can create the required directory structure.
+ Download the `lb` script and put it in your website's main directory. The expectation is that your rolling blog file and RSS feed will be there as well.
+ Open the script and change the first few variables to match the names of the files you use in your website.
+ Add markers for where the new blog posts are added. **Don't skip this step.** See below.

### Markers

For the system to work, add the following comment line to a (1) Rolling Blog File (as above), a (2) Blog List File and (3) RSS feed.

```
<!-- LB -->
```

You can format these files/pages how ever you want, just be sure to edit the `lb` file and change the variables at the top to match the file names of those you chose.

When you `finalize` a blog post, it will be added directly below that line in the proper format (either HTML or the proper RSS/XML format), give you the rolling blog and RSS feed for free.

## Info

- The blog entries are stored in `blog/` in your websites root directory. Drafts are in `blog/.drafts`.
- `blog/.htaccess` acts as a "database" file. `lb` stores filenames with their corresponding proper names and publishing dates there.
- The other files in this repo just illustrate how you can use `lb`. Only the `lb` script itself is necessary.
- Your `$EDITOR` variable should be set to your preferred text editor, vim will be assumed if you don't have one set.
