<!-- README.md is generated from README.Rmd. Please edit that file -->
generator
=========

[![Build Status](https://travis-ci.org/paulhendricks/generator.png?branch=master)](https://travis-ci.org/paulhendricks/generator) [![Build status](https://ci.appveyor.com/api/projects/status/c5vv1efvrsynt4js/branch/master?svg=true)](https://ci.appveyor.com/project/paulhendricks/generator/branch/master) [![codecov.io](http://codecov.io/github/paulhendricks/generator/coverage.svg?branch=master)](http://codecov.io/github/paulhendricks/generator?branch=master) [![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/generator)](http://cran.r-project.org/package=generator) [![Downloads from the RStudio CRAN mirror](http://cranlogs.r-pkg.org/badges/generator)](http://cran.rstudio.com/package=generator) [![Project Status: Active - The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/0.1.0/active.svg)](http://www.repostatus.org/#active)

`generator` generates data containing fake Personally Identifiable Information (PII). Once complete, `generator` will be able to generate the following types of PII:

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

### Full Name

``` r
library(generator)
r_full_names(5)
#> [1] "Elmo Oberbrunner" "Bernard Kozey"    "Vicky Quigley"   
#> [4] "Duane Spencer"    "Edmond Pollich"
```

### Home address

``` r
# To be added
```

### Email address

``` r
r_email_addresses(5)
#> [1] "zkawjsnxyl@oxdn.gvd" "ye@icegnwpjd.cit"    "mxcdyn@hvt.rnl"     
#> [4] "c@h.gpm"             "nvfzibmqdj@z.vyi"
```

### National identification number

``` r
r_national_identification_numbers(5)
#> [1] "793-28-9611" "123-33-5174" "256-44-8311" "937-73-3726" "713-19-6715"
```

### Passport number

``` r
# To be added
```

### IP address

``` r
r_ipv4_addresses(5)
#> [1] "177.39.163.254" "249.157.34.181" "41.72.235.155"  "230.97.151.209"
#> [5] "11.243.19.74"
```

### Vehicle registration plate number

``` r
# To be added
```

### Driver's license number

``` r
# To be added
```

### Credit card number

``` r
r_credit_card_numbers(5)
#> [1] "To be updated: depends on Card Type."
```

### Date of birth

``` r
r_date_of_births(5)
#> [1] "1967-04-18" "1973-09-16" "1962-07-14" "1937-02-22" "1934-11-19"
```

### Birth place

``` r
# To be added
```

### Telephone number

``` r
r_phone_numbers(5)
#> [1] "2595175687" "4725672493" "4715147591" "8365812618" "3961589284"
r_phone_numbers(5, use_hyphens = TRUE)
#> [1] "872-849-8794" "798-897-7623" "283-496-5361" "897-651-1897"
#> [5] "918-534-2341"
r_phone_numbers(5, use_hyphens = TRUE, use_parentheses = TRUE)
#> [1] "(862)-179-2835" "(625)-412-8493" "(541)-269-9823" "(851)-287-9384"
#> [5] "(735)-749-1758"
r_phone_numbers(5, use_spaces = TRUE, use_parentheses = TRUE)
#> [1] "(829) 598 6158" "(452) 391 8417" "(548) 476 6513" "(461) 964 1749"
#> [5] "(468) 947 1489"
```

### Latitude and longitude

``` r
paste0(r_latitudes(5), ", ", r_longitudes(5))
#> [1] "50.5428569717333, 27.972827218473"  
#> [2] "-74.949232628569, 138.600759068504" 
#> [3] "-8.98536507971585, 8.76628928817809"
#> [4] "-55.297284303233, -79.1284860111773"
#> [5] "66.6512586269528, 90.6234182976186"
```
