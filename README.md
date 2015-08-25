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
#> [1] "Francisco Koss"   "Fermina Koch"     "Tracey Towne"    
#> [4] "Luther Wilderman" "Harrison Cassin"
```

### Home address

``` r
# To be added
```

### Email address

``` r
r_email_addresses(5)
#> [1] "mkzqtogicu@z.tgf"         "nfykjmlprs@czdanshjr.liq"
#> [3] "cbyauj@szci.ebs"          "uvbj@oi.pbe"             
#> [5] "nu@vpdxiluof.pyf"
```

### National identification number

``` r
r_national_identification_numbers(5)
#> [1] "653-81-9858" "816-17-7147" "458-36-6227" "348-47-4447" "129-75-7913"
```

### Passport number

``` r
# To be added
```

### IP address

``` r
r_ipv4_addresses(5)
#> [1] "133.137.164.14" "95.78.1.197"    "186.218.111.2"  "135.145.25.46" 
#> [5] "233.76.102.191"
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
#> [1] "1965-08-31" "1920-09-28" "1986-04-03" "1914-08-14" "1993-04-30"
```

### Birth place

``` r
# To be added
```

### Telephone number

``` r
r_phone_numbers(5)
#> [1] "1829354596" "3562899248" "4314811239" "7386196852" "5474518541"
r_phone_numbers(5, use_hyphens = TRUE)
#> [1] "825-598-2753" "971-841-7582" "792-621-6231" "519-425-3298"
#> [5] "869-378-7892"
r_phone_numbers(5, use_hyphens = TRUE, use_parentheses = TRUE)
#> [1] "(874)-379-2917" "(147)-768-9624" "(341)-583-6791" "(824)-956-3749"
#> [5] "(649)-435-6153"
r_phone_numbers(5, use_spaces = TRUE, use_parentheses = TRUE)
#> [1] "(923) 859 7849" "(284) 976 2613" "(875) 752 1526" "(256) 269 1978"
#> [5] "(318) 187 3512"
```

### Latitude and longitude

``` r
paste0(r_latitudes(5), ", ", r_longitudes(5))
#> [1] "68.9852376608178, 150.284996470436"  
#> [2] "-15.0410539610311, -163.048376664519"
#> [3] "16.2937860516831, -44.405578142032"  
#> [4] "29.2446867702529, 119.726089769974"  
#> [5] "-7.21295369323343, 82.6736143045127"
```
