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
set.seed(1)
ashley_madison <- 
  data.frame(name = r_full_names(n), 
             snn = r_national_identification_numbers(n), 
             dob = r_date_of_births(n), 
             email = r_email_addresses(n), 
             ip = r_ipv4_addresses(n), 
             phone = r_phone_numbers(n), 
             credit_card = r_credit_card_numbers(n), 
             lat = r_latitudes(n), 
             lon = r_longitudes(n), 
             stringsAsFactors = FALSE)
knitr::kable(ashley_madison, format = "markdown")
```

| name                  | snn         | dob        | email                    | ip              | phone      | credit\_card        |          lat|          lon|
|:----------------------|:------------|:-----------|:-------------------------|:----------------|:-----------|:--------------------|------------:|------------:|
| Eldridge Pfannerstill | 442-34-5338 | 1991-11-21 | <ntakqojv@lgbcyk.rkv>    | 45.84.71.225    | 6794976958 | 4125-7204-9193-5140 |   -2.7018575|     8.634988|
| Augustine Homenick    | 799-44-6396 | 1912-06-29 | <iqg@mtcuh.viy>          | 191.116.55.106  | 3275827694 | 2182-5994-2283-9486 |  -70.4148630|   -65.827918|
| Jennie Runte          | 941-11-5441 | 1983-09-22 | <wjszy@sjhreocvt.gbp>    | 27.128.73.17    | 7419351735 | 4370-4866-4735-7857 |  -45.4091701|   -79.932229|
| Araceli Kunde         | 290-44-2675 | 1947-08-01 | <uljsnvhfr@qfdkumtn.jkd> | 221.47.229.86   | 3243246285 | 6682-5074-2898-9396 |   -0.2673845|   103.514583|
| Josue Rau             | 686-88-8446 | 1994-12-20 | <c@lqxzkdpi.nfy>         | 157.136.114.185 | 9169736873 | 4510-3757-4858-5236 |  -22.8839925|    72.886505|
| Elnora Zemlak         | 212-40-7016 | 1974-11-08 | <capvnl@nympzf.gsk>      | 143.20.199.87   | 3295843196 | 7206-6205-2194-6432 |   78.2444466|  -120.590050|

Author
------

The original author of `generator` is [Paul Hendricks](https://github.com/paulhendricks).

[![Support via Gratipay](https://cdn.rawgit.com/gratipay/gratipay-badge/2.3.0/dist/gratipay.png)](https://gratipay.com/paulhendricks/)
