library(cli)
library(fs)
library(groomr) # github.com/danielvartan/groomr
library(here)

# Change `#| eval: false` to `#| eval: true` in all qmd blocks
# before running this script!

years <- 2008:2023

cli_progress_bar(
  name = "Rendering files",
  total = length(years),
  clear = FALSE
)

for (i in years) {
  replace_in_file(
    file = here("index.qmd"),
    pattern = "^year <- \\d{4}$",
    replacement = paste0("year <- ", i)
  )

  system("quarto render")

  dir_ls(here("data")) |> file_delete()
  dir_ls(here("data-raw")) |> file_delete()

  gc()

  cli_progress_update()
}

cli_progress_done()
