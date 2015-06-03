#Regenerate html
infiles <- list.files(pattern = "*.[rR]md")
lapply(infiles, rmarkdown::render, output_dir = "../posts")
