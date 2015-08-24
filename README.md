<!-- README.md is generated from README.Rmd. Please edit that file -->
generator
=========

[![Build Status](https://travis-ci.org/paulhendricks/generator.png?branch=master)](https://travis-ci.org/paulhendricks/generator) [![Build status](https://ci.appveyor.com/api/projects/status/au9ww7v8mhgr59s8/branch/master?svg=true)](https://ci.appveyor.com/project/paulhendricks/generator/branch/master) [![codecov.io](http://codecov.io/github/paulhendricks/generator/coverage.svg?branch=master)](http://codecov.io/github/paulhendricks/generator?branch=master) [![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/generator)](http://cran.r-project.org/package=generator) [![Downloads from the RStudio CRAN mirror](http://cranlogs.r-pkg.org/badges/generator)](http://cran.rstudio.com/package=generator) [![Project Status: Active - The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/0.1.0/active.svg)](http://www.repostatus.org/#active)

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
#> [1] "Kurtis Johns"    "Mikel Roob"      "Lauren McKenzie" "Damon Hirthe"   
#> [5] "Clotilde Cremin"
```

### Home address

``` r
# To be added
```

### Email address

``` r
r_email_addresses(5)
#> [1] "ocvpgitry@fjpwso.tma"  "d@asrlwqehzu.lzr"      "tpyrvlf@hkitb.hmw"    
#> [4] "vcoeln@fevcmwjqgt.efk" "wkjtdcgr@khx.txl"
```

### National identification number

``` r
r_national_identification_numbers(5)
#> [1] "439-13-7721" "629-81-9591" "137-14-5223" "313-21-5771" "369-13-1661"
```

### Passport number

``` r
# To be added
```

### IP address

``` r
r_ipv4_addresses(5)
#> [1] "177.63.47.244"  "153.99.27.10"   "181.26.219.128" "36.183.103.118"
#> [5] "57.185.242.209"
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
#> [1] "2009-10-06" "1921-06-05" "2003-12-25" "1957-10-16" "1988-08-11"
```

### Birth place

``` r
# To be added
```

### Telephone number

``` r
r_phone_numbers(5)
#> [1] "6439714527" "2164128236" "6186593458" "1437868514" "2638544563"
r_phone_numbers(5, use_hyphens = TRUE)
#> [1] "981-234-8254" "748-792-6734" "248-938-2895" "216-198-9876"
#> [5] "823-692-1563"
r_phone_numbers(5, use_hyphens = TRUE, use_parentheses = TRUE)
#> [1] "(319)-925-9548" "(891)-319-3219" "(751)-827-4863" "(319)-683-5214"
#> [5] "(918)-581-6124"
r_phone_numbers(5, use_spaces = TRUE, use_parentheses = TRUE)
#> [1] "(385) 397 8713" "(846) 895 8125" "(682) 329 1643" "(952) 731 2563"
#> [5] "(956) 235 8396"
```

### Latitude and longitude

``` r
paste0(r_latitudes(5), ", ", r_longitudes(5))
#> [1] "68.9036622969434, 10.3894396405667" 
#> [2] "-24.2443475173786, 6.03511805646122"
#> [3] "55.6600663578138, 103.356743752956" 
#> [4] "53.1906707631424, 175.915418704972" 
#> [5] "18.408433184959, -77.8222204651684"
```
