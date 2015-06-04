#!/usr/bin/Rscript

#Regenerate html

# Posts
posts <- paste0("_rawPosts/", list.files(path = "_rawPosts/", pattern = "*.[rR]md"))
invisible(lapply(posts, rmarkdown::render, output_dir = "../posts"))

# Index
rmarkdown::render("index.rmd")

# Pages
pages <- paste0("_rawPages/", list.files(path = "_rawPages/", pattern = "*.[rR]md"))
invisible(lapply(pages, rmarkdown::render, output_dir = "../pages"))

