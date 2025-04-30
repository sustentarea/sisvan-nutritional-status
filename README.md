# sisvan-nutritional-data

<!-- badges: start -->
[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://img.shields.io/badge/Repo%20Status-Active-12DA12.svg)](https://www.repostatus.org/#inactive)
[![License: MIT](https://img.shields.io/badge/License-MIT-10D810.svg)](https://choosealicense.com/licenses/mit/)
[![License: CC BY
4.0](https://img.shields.io/badge/License-CC_BY_4.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)
<!-- badges: end -->

## Overview

This repository contains a pipeline for cleaning and validation of the SISVAN nutritional dataset. The main goal is to provide a reliable workflow for processing and analyzing nutritional data from Brazil's Food and Nutrition Surveillance System ([SISVAN](https://sisaps.saude.gov.br/sisvan/)). You can view the full report and documentation [here](https://sustentarea.github.io/sisvan-nutritional-data/).

## How to Use

The analyses contained in the report are fully reproducible. They were made using the [R programming language](https://www.r-project.org/) and the [Quarto](https://quarto.org/) publishing system. The [`renv`](https://rstudio.github.io/renv/) package was used to ensure that the R environment used can be restored (see `renv.lock`).

To reproduce the analyses do the following steps:

1. Clone this repository.
1. Open the R project in your IDE of choice.
1. Run [`renv::restore()`](https://rstudio.github.io/renv//reference/restore.html) to install all software dependencies.
1. Open `index.qmd` and run the analyses.

## License

[![License: MIT](https://img.shields.io/badge/License-MIT-10D810.svg)](https://choosealicense.com/licenses/mit/)
[![License: CC BY
4.0](https://img.shields.io/badge/License-CC_BY_4.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)

The code in this repository is licensed under the [MIT License](https://opensource.org/license/mit/), while the documents are available under the [Creative Commons Attribution 4.0 International
License](https://creativecommons.org/licenses/by/4.0/).

## How to Cite

To cite this work, please use the following format:

Vartanian, D.; & Schettino, J. P. J. (2025). *A pipeline for cleaning and validating SISVAN nutritional data* \[Report\]. Sustentarea Research and Extension Group at the University of São Paulo. <https://sustentarea.github.io/sisvan-nutritional-data/>

A BibTeX entry for LaTeX users is

```
@techreport{vartanian2025,
  title = {A pipeline for cleaning and validating SISVAN nutritional data},
  author = {{Daniel Vartanian} and {João Pedro Junqueira Schettino}},
  year = {2025},
  address = {São Paulo},
  institution = {Sustentarea Research and Extension Group at the University of São Paulo},
  langid = {en},
  url = {https://sustentarea.github.io/sisvan-nutritional-data/}
}
```
