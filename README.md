# sisvan-nutritional-status

<!-- badges: start -->
[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://img.shields.io/badge/Repo%20Status-Active-12DA12.svg)](https://www.repostatus.org/#inactive)
[![License: MIT](https://img.shields.io/badge/License-MIT-10D810.svg)](https://choosealicense.com/licenses/mit/)
[![License: CC BY
4.0](https://img.shields.io/badge/License-CC_BY_4.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)
<!-- badges: end -->

## Overview

This repository contains a pipeline for cleaning and validating the SISVAN Nutritional Status dataset. The main goal is to provide a reliable workflow for processing and analyzing nutritional data from Brazil's Food and Nutrition Surveillance System ([SISVAN](https://sisaps.saude.gov.br/sisvan/)). You can view the full report [here](https://sustentarea.github.io/sisvan-nutritional-status/).

## How to Use

The analyses contained in the report are fully reproducible. They were made using the [Quarto](https://quarto.org/) publishing system and the [R programming language](https://www.r-project.org/). The [`renv`](https://rstudio.github.io/renv/) R package was used to ensure that the R environment used can be restored (see `renv.lock`).

After installing the three dependencies mentioned above, follow these steps to reproduce the analyses:

1. **Clone** this repository to your local machine.
2. **Open** the project in your preferred IDE.
3. **Restore the R environment** by running [`renv::restore()`](https://rstudio.github.io/renv/reference/restore.html) in the R console. This will install all required software dependencies.
4. **Open** `index.qmd` and run the analyses as described in the report.


## How to Cite

To cite this work, please use the following format:

Vartanian, D.; & Schettino, J. P. J. (2025). *A pipeline for cleaning and validating the SISVAN nutritional status dataset* \[Report\]. Sustentarea Research and Extension Group at the University of São Paulo. <https://sustentarea.github.io/sisvan-nutritional-status>

A BibTeX entry for LaTeX users is

```
@techreport{vartanian2025,
  title = {A pipeline for cleaning and validating the SISVAN nutritional status dataset},
  author = {{Daniel Vartanian} and {João Pedro Junqueira Schettino}},
  year = {2025},
  address = {São Paulo},
  institution = {Sustentarea Research and Extension Group at the University of São Paulo},
  langid = {en},
  url = {https://sustentarea.github.io/sisvan-nutritional-status}
}
```

## License

[![License: MIT](https://img.shields.io/badge/License-MIT-10D810.svg)](https://choosealicense.com/licenses/mit/)
[![License: CC BY
4.0](https://img.shields.io/badge/License-CC_BY_4.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)

The code in this repository is licensed under the [MIT License](https://opensource.org/license/mit/), while the documents are available under the [Creative Commons Attribution 4.0 International
License](https://creativecommons.org/licenses/by/4.0/).

## Acknowledgments

<table>
  <tr>
    <td width="30%">
      <br>
      <p align="center">
        <a href="https://www.fsp.usp.br/sustentarea"><img src="images/sustentarea-icon.svg" width="120em"/></a>
      </p>
      <br>
    </td>
    <td width="70%">
      This analysis is part of the <a href="https://www.fsp.usp.br/sustentarea">Sustentarea</a> Research and Extension Group's project: <em>Global syndemic: The impact of anthropogenic climate change on the health and nutrition of children under five years old attended by Brazil's public health system (SUS)</em>.
    </td>
  </tr>
</table>

<table>
  <tr>
    <td width="30%"">
      <br>
      <p align="center">
        <br> <a href="https://www.gov.br/cnpq/"><img src="images/cnpq-logo.svg" width="150em"/></a>
      </p>
      <br>
    </td>
    <td width="70%">
      This research was supported by the Conselho Nacional de Desenvolvimento Científico e Tecnológico - Brazil (<a href="https://www.gov.br/cnpq/">CNPq</a>).
    </td>
  </tr>
</table>
