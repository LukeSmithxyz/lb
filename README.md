# lb -- Luke's Blog Script

Blogs and RSS feeds in less than 100 lines of shell script.  `lb` stands for whatever. Maybe "Luke's blog", maybe "lightweight blog", maybe "less bloat", doesn't matter that much.

## Features

+ Create and publish blog posts for your website. The intended format is for all posts to appear in a rolling blog post. See [https://lukesmith.xyz/2018.html](https://lukesmith.xyz/2018.html) for an example.
+ Custom links are generated for these entries in the form of [standalone files](https://lukesmith.xyz/blog/) and links to the headings of each blog post so you can link people to specific blog posts on the rolling blog.
+ Blog posts are automatically added to your RSS feed when finalized.
+ One command to delete published entries from the RSS feed, rolling blog and standalone entries simultaneously.
+ Posts in the rolling blog have divs that can easily be modified via a CSS stylesheet.

## Usage

```
./lb new	# Make a new blog post draft.
./lb finalize	# Finalize/publish a blog post draft.
./lb delete	# Delete a published blog post.
```

Finished posts are in `blog/`; Drafts are in `blog/.drafts/`. Use `./lb delete` to remove finished posts, because this command removes the .html files *and* the entries from the RSSfeed and rolling blog.

## Installation

+ Download the `lb` script and put it in your website's home directory. The expectation is that your rolling blog file and RSS feed will be there as well.
+ Open the script and change the first few variables to match the files you use in your website.
+ Add markers for where the new blog posts are added. Don't skip this step. See below.

### Markers

For the system to work, add the following comment line where you'd like to both your RSS feed and the HTML file you'd like to use as a rolling blog.

```
<!-- LB -->
```

When you `finalize` a blog post, it will be added directly below that line in the proper format (either HTML or the proper RSS/XML format), give you the rolling blog and RSS feed for free.

## Other stuff

The other files in the repo are an illustration of how the bare bones of the blog can work. The HTML entries create divs with the id "entry", which allows you to modify them with a CSS stylesheet.
