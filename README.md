<!-- README.md is generated from README.Rmd. Please edit that file -->
generator
=========

[![Build Status](https://travis-ci.org/paulhendricks/generator.png?branch=master)](https://travis-ci.org/paulhendricks/generator) [![Build status](https://ci.appveyor.com/api/projects/status/c5vv1efvrsynt4js/branch/master?svg=true)](https://ci.appveyor.com/project/paulhendricks/generator/branch/master) [![codecov.io](http://codecov.io/github/paulhendricks/generator/coverage.svg?branch=master)](http://codecov.io/github/paulhendricks/generator?branch=master) [![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/generator)](http://cran.r-project.org/package=generator) [![Downloads from the RStudio CRAN mirror](http://cranlogs.r-pkg.org/badges/generator)](http://cran.rstudio.com/package=generator) [![Project Status: Active - The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/0.1.0/active.svg)](http://www.repostatus.org/#active)

`generator` generates data containing fake [Personally Identifiable Information](https://en.wikipedia.org/wiki/Personally_identifiable_information) (PII). Once complete, `generator` will be able to generate the following types of PII:

-   Full name
-   Home address
-   E-mail address
-   National identification number
-   Passport number
-   IP address
-   Vehicle registration plate number
-   Driver's license number
-   Credit card number
-   Date of birth
-   Birthplace
-   Telephone number
-   Latitude and longtiude

State of the Union
------------------

### Complete!

-   Full name
-   E-mail address
-   Date of birth
-   Telephone number
-   Latitude and longtiude

### Needs more work...

-   National identification number
-   IP address
-   Credit card number

### Haven't even started :(

-   Home address
-   Vehicle registration plate number
-   Driver's license number
-   Birthplace

Installation
------------

You can install:

-   the latest released version from CRAN with

    ``` r
    install.packages("generator")
    ```

-   the latest development version from github with

    ``` r
    if (packageVersion("devtools") < 1.6) {
      install.packages("devtools")
    }
    devtools::install_github("paulhendricks/generator")
    ```

If you encounter a clear bug, please file a minimal reproducible example on [github](https://github.com/paulhendricks/generator/issues).

API
---

### Generate data containing fake PII

``` r
library(generator)
n <- 6
ashley_madison <- 
  data.frame(name = r_full_names(n), 
             snn = r_national_identification_numbers(n), 
             dob = r_date_of_births(n), 
             email = r_email_addresses(n), 
             ip = r_ipv4_addresses(n), 
             phone = r_phone_numbers(n, use_spaces = TRUE), 
             credit_card = r_credit_card_numbers(n), 
             lat = r_latitudes(n), 
             lon = r_longitudes(n), 
             stringsAsFactors = FALSE)
knitr::kable(ashley_madison, format = "markdown")
```

| name               | snn         | dob        | email                      | ip             | phone        | credit\_card        |        lat|          lon|
|:-------------------|:------------|:-----------|:---------------------------|:---------------|:-------------|:--------------------|----------:|------------:|
| Claudette Anderson | 915-27-6000 | 1967-03-15 | <efhnsyx@vqubxtkol.dkt>    | 61.77.253.55   | 491 892 9582 | 4570-2206-1152-6458 |   42.21539|  -178.831538|
| Armandina Maggio   | 328-30-8252 | 1957-07-09 | <xeiwfd@gxwoad.nfp>        | 34.90.84.75    | 958 249 6481 | 6021-1208-4587-2858 |   78.48852|   123.254844|
| Tashina Reynolds   | 818-88-9436 | 1908-12-17 | <bywgauhdni@zdywbc.qpn>    | 70.113.97.50   | 624 186 2369 | 8440-9132-9859-4711 |   24.67874|    -1.103778|
| Beula Cremin       | 339-81-6898 | 1907-04-02 | <rhtji@bvxfw.vzl>          | 214.148.3.89   | 217 791 1673 | 2314-9421-6243-4682 |   53.74586|  -115.626891|
| Hanna Runolfsson   | 610-48-7176 | 1951-06-02 | <kytnslbviq@mwvslzrji.vew> | 240.84.25.120  | 187 134 1783 | 8881-5050-1823-8690 |  -48.15218|  -175.961853|
| Michel Walter      | 541-98-2109 | 2005-08-29 | <vtidx@prjmwfoack.gho>     | 120.193.119.37 | 437 342 6947 | 6226-9543-3369-9467 |   19.56054|   119.997353|
