# sisvan-nutritional-status

<!-- badges: start -->
[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://img.shields.io/badge/Repo%20Status-Active-12DA12.svg)](https://www.repostatus.org/#inactive)
[![OSF DOI](https://img.shields.io/badge/OSF-10.17605/OSF.IO/8J94M-1284C5.svg)](https://doi.org/10.17605/OSF.IO/8J94M)
[![License: MIT](https://img.shields.io/badge/License-MIT-10D810.svg)](https://choosealicense.com/licenses/mit/)
[![License: CC BY 4.0](https://img.shields.io/badge/License-CC_BY_4.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)
<!-- badges: end -->

## Overview

This repository contains a reproducible pipeline for processing [SISVAN](https://sisaps.saude.gov.br/sisvan/) microdata on nutritional status monitoring in Brazil (2008–2023) ([Sistema de Vigilância Alimentar e Nutricional, n.d.](https://opendatasus.saude.gov.br/dataset/sisvan-estado-nutricional)). The main goal is to provide an open and reliable workflow for processing these data, supporting research and informed public policy decisions.

You can access the pipeline [here](https://sustentarea.github.io/sisvan-nutritional-status/).

> [!WARNING]
> This pipeline is still under development and may not be fully functional.
>
> This warning will be removed once the pipeline is complete.

## Data Availability

[![OSF DOI](https://img.shields.io/badge/OSF-10.17605/OSF.IO/8J94M-1284C5.svg)](https://doi.org/10.17605/OSF.IO/8J94M)

The processed data are available in both `csv` and `rds` formats via a dedicated repository on the Open Science Framework ([OSF](https://osf.io/)), accessible [here](https://doi.org/10.17605/OSF.IO/8J94M). A metadata file is included alongside the validated data. You can also access these files directly from R using the [`osfr`](https://docs.ropensci.org/osfr/) package.

A backup copy of the raw data is also available in OSF. You can access it [here](https://doi.org/10.17605/OSF.IO/SY8EC).

## How to Use

The pipeline is fully reproducible. It was developed using the [Quarto](https://quarto.org/) publishing system and the [R programming language](https://www.r-project.org/). To ensure consistent results, the [`renv`](https://rstudio.github.io/renv/) package is used to manage and restore the R environment.

After installing the three dependencies mentioned above, follow these steps to reproduce the analyses:

1. **Clone** this repository to your local machine.
2. **Open** the project in your preferred IDE.
3. **Restore the R environment** by running [`renv::restore()`](https://rstudio.github.io/renv/reference/restore.html) in the R console. This will install all required software dependencies.
4. **Open** `index.qmd` and run the code as described in the report.

We use the [`vroom`](https://vroom.r-lib.org/) R package together with the [AWK](https://en.wikipedia.org/wiki/AWK) programming language to efficiently handle large datasets and mitigate memory issues. This approach allows the pipeline to run locally on most machines, though we recommend a minimum of 12 GB of RAM for optimal performance. Alternatively, the pipeline can also be executed on cloud platforms such as [Google Colab](https://colab.research.google.com/) or [RStudio Cloud](https://rstudio.cloud/).

## How to Cite

To cite this work, please use the following format:

Vartanian, D., Schettino, J. P. J., & Carvalho, A. M. (2025). *A reproducible pipeline for processing SISVAN microdata on nutritional status monitoring in Brazil (2008-2023)* \[Report\]. Sustentarea Research and Extension Group at the University of São Paulo. <https://sustentarea.github.io/sisvan-nutritional-status>

A BibTeX entry for LaTeX users is

```
@techreport{vartanian2025,
  title = {A reproducible pipeline for processing SISVAN microdata on nutritional status monitoring in Brazil (2008-2023)},
  author = {{Daniel Vartanian} and {João Pedro Junqueira Schettino} and {Aline Martins de Carvalho}},
  year = {2025},
  address = {São Paulo},
  institution = {Sustentarea Research and Extension Group at the University of São Paulo},
  langid = {en},
  url = {https://sustentarea.github.io/sisvan-nutritional-status}
}
```

## License

[![License: MIT](https://img.shields.io/badge/License-MIT-10D810.svg)](https://choosealicense.com/licenses/mit/)
[![License: CC BY 4.0](https://img.shields.io/badge/License-CC_BY_4.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)

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
      This work is part of the <a href="https://www.fsp.usp.br/sustentarea">Sustentarea</a> Research and Extension Group project: <em>Global syndemic: The impact of anthropogenic climate change on the health and nutrition of children under five years old attended by Brazil's public health system (SUS)</em>.
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
      This work was supported by the Conselho Nacional de Desenvolvimento Científico e Tecnológico - Brazil (<a href="https://www.gov.br/cnpq/">CNPq</a>).
    </td>
  </tr>
</table>
