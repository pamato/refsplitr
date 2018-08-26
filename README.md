# refnet2


# refnet2 <img src="man/figures/refnethex.png" height="200" align="right">

[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/latest/active.svg)](http://www.repostatus.org/#active)

Update to refnet package for processing Web of Science Records

refnet was v1.0 of a R package to read, analyze and visualize Thomson-Reuters Web of Knowledge/Science, ISI and SCOPUS format reference data files. Social network analyses, geocoding of addresses and spatial visualization are supported. The original package development was by Forrest Stevens and Emilio Bruna and was on r-forge (https://r-forge.r-project.org/projects/refnet/), but in December 2017 Bruna moved it to github to update the package as refnet2.  <b>Please make all future changes via this Github repo! Do *not* make a repo mirror of the R-forge version.</b> 

## Installation

You can install the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("embruna/refnet2")
```

## Workflow

```{r example, eval=FALSE}
read_references()
read_authors()
refine_authors()
address_lat_long()
```

Issues, Feature Requests and Pull Requests Welcome


## Contributors
* [Auriel Fournier](https://github.com/aurielfournier)
* Forrest Stevens
* [Matt Boone](https://github.com/birderboone)
* [Emilio Bruna](https://github.com/embruna)


## Citation

Auriel M.V. Fournier Developer, Forrest R.
  Stevens Developer, Matthew E. Boone Developer
  and Emilio Bruna Developer (2018). refnet:
  Thomson Reuters Web of Knowledge/Science and
  ISI Reference Data Tools. R package version
  0.6.
  
    @Manual{,
    title = {refnet: Thomson Reuters Web of Knowledge/Science and ISI Reference Data Tools},
    author = {Auriel M.V. Fournier Developer and Forrest R. Stevens Developer and Matthew E. Boone Developer and Emilio Bruna Developer},
    year = {2018},
    note = {R package version 0.6},
  }
