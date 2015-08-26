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

### Full Name

``` r
library(generator)
r_full_names(5)
#> [1] "Chrystal Gleason"   "Pearl Cremin"       "Chung Hane"        
#> [4] "Forrest Ebert"      "Fernando Heathcote"
```

### Home address

``` r
# To be added
```

### Email address

``` r
r_email_addresses(5)
#> [1] "lkec@gq.dhm"        "nhjt@angvoswil.bxd" "naiprtjk@n.tir"    
#> [4] "hp@j.rdb"           "lhend@ehwuotl.nrk"
```

### National identification number

``` r
r_national_identification_numbers(5)
#> [1] "900-84-5862" "380-36-4129" "390-96-3612" "228-40-2203" "789-17-6435"
```

### Passport number

``` r
# To be added
```

### IP address

``` r
r_ipv4_addresses(5)
#> [1] "90.31.149.30"   "92.215.31.216"  "24.186.88.127"  "226.107.98.248"
#> [5] "21.76.207.233"
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
#> [1] "9959-4935-9938-4695" "8599-4798-9182-6302" "7265-2839-9433-3615"
#> [4] "8710-8418-9783-1792" "6857-9001-3390-8324"
```

### Date of birth

``` r
r_date_of_births(5)
#> [1] "1914-08-15" "2012-10-16" "1983-05-18" "1924-06-24" "1999-07-01"
```

### Birth place

``` r
# To be added
```

### Telephone number

``` r
r_phone_numbers(5)
#> [1] "7192916249" "1721287238" "2759239573" "4657922947" "2357349125"
r_phone_numbers(5, use_hyphens = TRUE)
#> [1] "417-364-6298" "163-962-6349" "125-943-2387" "249-815-4837"
#> [5] "416-859-1396"
r_phone_numbers(5, use_hyphens = TRUE, use_parentheses = TRUE)
#> [1] "(534)-785-8157" "(357)-792-7158" "(439)-981-8295" "(719)-194-1783"
#> [5] "(349)-754-3829"
r_phone_numbers(5, use_spaces = TRUE, use_parentheses = TRUE)
#> [1] "(893) 316 8657" "(596) 642 9763" "(987) 926 8265" "(916) 798 3751"
#> [5] "(261) 159 9342"
```

### Latitude and longitude

``` r
paste0(r_latitudes(5), ", ", r_longitudes(5))
#> [1] "22.7399237221107, -25.0433440133929" 
#> [2] "-63.9338305732235, -36.5782986301929"
#> [3] "-1.24948028940707, 117.36587039195"  
#> [4] "26.9005191978067, 64.42702322267"    
#> [5] "40.2477177651599, -4.9627585709095"
```
