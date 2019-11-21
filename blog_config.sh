# vim: set ts=2 sw=2 sts=2 et:
author="Luke Smith"

# blog variables
blog_dir="$PWD"
blog_site="https://lukesmith.xyz"
blog_dateformat="+%a, %d %b %Y %H:%M:%S %z"

# paths relative to $blog_dir (no initial /)
path_css="style.css"
path_blogfile="blog.html"
path_blogindex="blogindex.html"
path_rss="rss.xml"

# post processing
post_processor() { cat "$1"; }
post_processor_ext="html"
#post_processor() { echo -e '%(body_pre_docinfo)s\n%(docinfo)s\n%(body)s'|rst2html5 --template=/dev/stdin --stylesheet='' "$1"; } # Defaults to: cat "$1"
#post_processor_ext="rst"
