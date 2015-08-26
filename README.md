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
set.seed(1)
r_full_names(5)
#> [1] "Ambrose Doyle"       "Eldridge Daniel"     "Gudrun Pfannerstill"
#> [4] "Jennie Homenick"     "Augustine Runte"
```

### Home address

``` r
# To be added
```

### Email address

``` r
r_email_addresses(5)
#> [1] "zjsve@qdgiawrx.mol" "rt@csjyoqlkv.alr"   "wkfbcgy@rkvgy.iqg" 
#> [4] "cvith@ilvtzqwx.sjh" "sdfyxbmq@utk.kuo"
```

### National identification number

``` r
r_national_identification_numbers(5)
#> [1] "689-29-9785" "417-21-7586" "343-53-4210" "993-93-4883" "670-63-2333"
```

### Passport number

``` r
# To be added
```

### IP address

``` r
r_ipv4_addresses(5)
#> [1] "4.253.116.147"   "183.127.131.20"  "27.124.53.10"    "114.45.59.164"  
#> [5] "164.193.152.237"
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
#> [1] "6382-7145-5073-6531" "6048-6413-2576-6014" "5734-3149-7720-3958"
#> [4] "9865-3323-1944-5078" "5568-7563-8780-5503"
```

### Date of birth

``` r
r_date_of_births(5)
#> [1] "1920-12-02" "1961-04-03" "1908-09-16" "1932-02-15" "1924-08-07"
```

### Birth place

``` r
# To be added
```

### Telephone number

``` r
r_phone_numbers(5)
#> [1] "3848931368" "6794976958" "3275827694" "7419351735" "3243246285"
r_phone_numbers(5, use_hyphens = TRUE)
#> [1] "916-973-6873" "329-584-3196" "423-645-7543" "357-249-4296"
#> [5] "784-641-3496"
r_phone_numbers(5, use_hyphens = TRUE, use_parentheses = TRUE)
#> [1] "(532)-862-1752" "(193)-239-3245" "(157)-418-3218" "(327)-358-1986"
#> [5] "(714)-547-2713"
r_phone_numbers(5, use_spaces = TRUE, use_parentheses = TRUE)
#> [1] "(296) 734 1374" "(638) 978 8725" "(938) 813 4256" "(924) 462 5239"
#> [5] "(516) 482 8173"
```

### Latitude and longitude

``` r
paste0(r_latitudes(5), ", ", r_longitudes(5))
#> [1] "-70.3618265781552, 121.223617102951"
#> [2] "-30.009962785989, -154.384551364928"
#> [3] "60.7349824625999, 73.0003476049751" 
#> [4] "-40.1670284941792, 71.5768333990127"
#> [5] "15.6663254555315, -12.9735428374261"
```
