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
#> [1] "Christia Larson" "Chassidy Haley"  "Love Schinner"   "Paris Hermann"  
#> [5] "Rosie Schiller"
```

### Home address

``` r
# To be added
```

### Email address

``` r
r_email_addresses(5)
#> [1] "wmypehd@psdwziyaq.qoz" "lvtmqyrgj@k.pfc"       "nbxaqlrjz@vj.ruo"     
#> [4] "rxaqe@lsgoxbrw.ure"    "ofzhpxt@xgcwpr.qsm"
```

### National identification number

``` r
r_national_identification_numbers(5)
#> [1] "437-82-2194" "566-57-5148" "243-43-5969" "185-32-5554" "616-33-9371"
```

### Passport number

``` r
# To be added
```

### IP address

``` r
r_ipv4_addresses(5)
#> [1] "3.2.194.121"     "164.237.151.205" "82.43.5.185"     "166.208.171.90" 
#> [5] "112.124.219.17"
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
#> [1] "1956-03-13" "1970-09-26" "1981-05-21" "2015-01-14" "1978-09-23"
```

### Birth place

``` r
# To be added
```

### Telephone number

``` r
r_phone_numbers(5)
#> [1] "9167533829" "4138627592" "9255988531" "5844355278" "3859275138"
r_phone_numbers(5, use_hyphens = TRUE)
#> [1] "498-356-2759" "572-962-7194" "736-168-9368" "953-641-9281"
#> [5] "365-675-8391"
r_phone_numbers(5, use_hyphens = TRUE, use_parentheses = TRUE)
#> [1] "(478)-378-2165" "(789)-192-9537" "(875)-617-4782" "(693)-589-4765"
#> [5] "(152)-978-7563"
r_phone_numbers(5, use_spaces = TRUE, use_parentheses = TRUE)
#> [1] "(213) 532 1579" "(578) 921 8254" "(951) 157 9485" "(975) 649 6214"
#> [5] "(169) 467 9854"
```

### Latitude and longitude

``` r
paste0(r_latitudes(5), ", ", r_longitudes(5))
#> [1] "6.91457939799875, -35.3547493927181" 
#> [2] "-63.6149163823575, -121.331203440204"
#> [3] "-68.1189075764269, 96.7865376546979" 
#> [4] "-7.81213211361319, -32.5723973382264"
#> [5] "-61.6023271763697, 97.4625354632735"
```
