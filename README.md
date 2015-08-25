<!-- README.md is generated from README.Rmd. Please edit that file -->
generator
=========

[![Build Status](https://travis-ci.org/paulhendricks/generator.png?branch=master)](https://travis-ci.org/paulhendricks/generator) [![Build status](https://ci.appveyor.com/api/projects/status/c5vv1efvrsynt4js/branch/master?svg=true)](https://ci.appveyor.com/project/paulhendricks/generator/branch/master) [![codecov.io](http://codecov.io/github/paulhendricks/generator/coverage.svg?branch=master)](http://codecov.io/github/paulhendricks/generator?branch=master) [![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/generator)](http://cran.r-project.org/package=generator) [![Downloads from the RStudio CRAN mirror](http://cranlogs.r-pkg.org/badges/generator)](http://cran.rstudio.com/package=generator) [![Project Status: Active - The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/0.1.0/active.svg)](http://www.repostatus.org/#active)

`generator` generates data containing fake Personally Identifiable Information (PII). `generator` generates the following types of PII:

-   Full name
-   Home address (Needs updated.)
-   E-mail address
-   National identification number (Needs updated.)
-   Passport number (Needs updated.)
-   IP address
-   Vehicle registration plate number (Needs updated.)
-   Driver's license number (Needs updated.)
-   Credit card number (Needs updated.)
-   Date of birth
-   Birthplace (Needs updated.)
-   Telephone number
-   Latitude and longtiude

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
#> [1] "Cathryn Dooley"   "Fernando Goldner" "Ignacio Strosin" 
#> [4] "Phylis Schulist"  "Kasandra Bailey"
```

### Home address

``` r
# To be added
```

### Email address

``` r
r_email_addresses(5)
#> [1] "rk@okex.ehd"             "rhsgtbqoxu@mnefyzwu.wyd"
#> [3] "aci@ewxtsznhr.snu"       "fsjwcabzn@l.yji"        
#> [5] "ypsmvblxnh@yecom.fuo"
```

### National identification number

``` r
r_national_identification_numbers(5)
#> [1] "816-45-7163" "491-57-1514" "291-42-9965" "835-51-6966" "598-39-5753"
```

### Passport number

``` r
# To be added
```

### IP address

``` r
r_ipv4_addresses(5)
#> [1] "78.21.236.183"  "102.255.235.58" "69.155.65.200"  "90.161.246.156"
#> [5] "54.203.45.217"
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
# To be added
```

### Date of birth

``` r
r_date_of_births(5)
#> [1] "1945-09-27" "1940-01-11" "1950-04-29" "1999-02-23" "2009-03-28"
```

### Birth place

``` r
# To be added
```

### Telephone number

``` r
r_phone_numbers(5)
#> [1] "3857314572" "2645289268" "4199614173" "3679435248" "5842612461"
r_phone_numbers(5, use_hyphens = TRUE)
#> [1] "456-379-3152" "825-827-1458" "259-814-6839" "791-154-7269"
#> [5] "942-187-8362"
r_phone_numbers(5, use_hyphens = TRUE, use_parentheses = TRUE)
#> [1] "(782)-968-7864" "(764)-693-9271" "(315)-912-8754" "(418)-543-1482"
#> [5] "(374)-378-7359"
r_phone_numbers(5, use_spaces = TRUE, use_parentheses = TRUE)
#> [1] "(863) 714 7968" "(739) 246 2863" "(346) 412 3954" "(613) 165 3681"
#> [5] "(892) 439 6291"
```

### Latitude and longitude

``` r
paste0(r_latitudes(5), ", ", r_longitudes(5))
#> [1] "30.967291588895, -60.18704588525"    
#> [2] "-68.394632586278, 99.9230114556849"  
#> [3] "-51.4533861726522, 57.0558929163963" 
#> [4] "-29.4996267557144, -99.7885533235967"
#> [5] "33.2272005826235, -51.9422342721373"
```
