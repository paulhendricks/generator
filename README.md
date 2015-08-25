<!-- README.md is generated from README.Rmd. Please edit that file -->
generator
=========

[![Build Status](https://travis-ci.org/paulhendricks/generator.png?branch=master)](https://travis-ci.org/paulhendricks/generator) [![Build status](https://ci.appveyor.com/api/projects/status/c5vv1efvrsynt4js/branch/master?svg=true)](https://ci.appveyor.com/project/paulhendricks/generator/branch/master) [![codecov.io](http://codecov.io/github/paulhendricks/generator/coverage.svg?branch=master)](http://codecov.io/github/paulhendricks/generator?branch=master) [![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/generator)](http://cran.r-project.org/package=generator) [![Downloads from the RStudio CRAN mirror](http://cranlogs.r-pkg.org/badges/generator)](http://cran.rstudio.com/package=generator) [![Project Status: Active - The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/0.1.0/active.svg)](http://www.repostatus.org/#active)

`generator` generates data containing fake Personally Identifiable Information (PII). `generator` generates the following types of PII:

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

### Needs more features...

-   National identification number
-   IP address
-   Credit card number

### Haven't even started

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
#> [1] "Damion Kerluke"   "Cherelle Goldner" "Miguelina Blanda"
#> [4] "Virgilio Koch"    "Tamala Grant"
```

### Home address

``` r
# To be added
```

### Email address

``` r
r_email_addresses(5)
#> [1] "oefshxju@ri.bla"       "rzg@yd.ypa"            "n@l.xwk"              
#> [4] "zufsilx@kaovtzihw.mbo" "gfv@mp.lui"
```

### National identification number

``` r
r_national_identification_numbers(5)
#> [1] "858-73-7362" "893-25-5455" "629-85-6534" "564-22-3132" "941-81-3771"
```

### Passport number

``` r
# To be added
```

### IP address

``` r
r_ipv4_addresses(5)
#> [1] "82.211.208.82"  "8.192.218.230"  "115.252.247.44" "170.15.108.212"
#> [5] "3.188.40.192"
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
#> [1] "1918-01-06" "1968-04-12" "1947-05-22" "1917-04-08" "1943-12-17"
```

### Birth place

``` r
# To be added
```

### Telephone number

``` r
r_phone_numbers(5)
#> [1] "3419342695" "5395379182" "7368532417" "1976132719" "4855197438"
r_phone_numbers(5, use_hyphens = TRUE)
#> [1] "341-126-9734" "167-734-5437" "782-215-1725" "437-384-8923"
#> [5] "152-172-5296"
r_phone_numbers(5, use_hyphens = TRUE, use_parentheses = TRUE)
#> [1] "(851)-386-9753" "(764)-942-1965" "(638)-937-8193" "(541)-982-9471"
#> [5] "(217)-146-9674"
r_phone_numbers(5, use_spaces = TRUE, use_parentheses = TRUE)
#> [1] "(918) 142 5139" "(342) 648 9168" "(289) 857 5984" "(327) 376 6792"
#> [5] "(719) 612 2138"
```

### Latitude and longitude

``` r
paste0(r_latitudes(5), ", ", r_longitudes(5))
#> [1] "-56.6299389721826, -87.6822799723595"
#> [2] "75.070634605363, -87.7047026529908"  
#> [3] "-85.1327318418771, 120.124698802829" 
#> [4] "-18.0741123436019, -160.552528370172"
#> [5] "5.11453710962087, 104.794575255364"
```
