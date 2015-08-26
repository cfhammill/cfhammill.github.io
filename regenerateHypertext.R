#!/usr/bin/Rscript

#Regenerate html

# Index
rmarkdown::render("index.rmd")

# Posts
posts <- paste0("_rawPosts/", list.files(path = "_rawPosts/", pattern = "*.[rR]md"))
invisible(lapply(posts, rmarkdown::render, output_dir = "posts"))

# Pages
opts_knit$set(child.dir = "../pages")
pages <- paste0("_rawPages/", list.files(path = "_rawPages/", pattern = "*.[rR]md"))
invisible(lapply(pages, rmarkdown::render, output_dir = "pages"))

