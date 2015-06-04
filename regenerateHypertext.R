#!/usr/bin/Rscript

#Regenerate html

# Posts
posts <- paste0("_rawPosts/", list.files(path = "_rawPosts/", pattern = "*.[rR]md"))
invisible(lapply(posts, rmarkdown::render, output_dir = "../posts"))

# Index
rmarkdown::render("index.rmd")

# Pages
pages <- paste0("pages/", list.files(path = "pages/", pattern = "*.[rR]md"))
invisible(lapply(pages, rmarkdown::render, output_dir = "../pages"))

