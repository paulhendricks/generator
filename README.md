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
             phone = r_phone_numbers(n), 
             credit_card = r_credit_card_numbers(n), 
             lat = r_latitudes(n), 
             lon = r_longitudes(n), 
             stringsAsFactors = FALSE)
knitr::kable(ashley_madison, format = "markdown")
```

| name           | snn         | dob        | email                      | ip              | phone      | credit\_card        |        lat|           lon|
|:---------------|:------------|:-----------|:---------------------------|:----------------|:-----------|:--------------------|----------:|-------------:|
| Alex Mante     | 420-86-9180 | 1945-09-18 | <kdspvgluhq@dypwbflue.ajs> | 172.59.19.217   | 8418178792 | 3313-9649-3934-2528 |   18.89703|  -118.7255111|
| Clark Crist    | 422-10-1622 | 1975-07-06 | <wkjd@oysw.uap>            | 200.147.153.249 | 8622983485 | 6825-8559-9775-7325 |   11.18969|  -109.0269611|
| Thi Schmeler   | 700-73-6277 | 2007-08-21 | <gi@dmq.pxk>               | 124.110.169.225 | 9183564682 | 7821-8092-1639-5719 |   56.60028|    10.1514796|
| Gonzalo Legros | 504-21-7728 | 1950-02-12 | <p@i.afw>                  | 218.243.32.205  | 6757817915 | 1265-4278-5408-1176 |   71.84609|     0.6211906|
| Doyle Hand     | 291-61-7443 | 1984-11-05 | <mp@lpcqy.mgb>             | 125.7.222.196   | 6533482175 | 5496-7131-9557-8734 |   63.73876|   -78.5213517|
| Flora Hoppe    | 433-49-7170 | 1901-06-09 | <lbyftph@ismnf.vzd>        | 223.18.77.129   | 5631233157 | 7765-9611-7210-1116 |  -30.98201|   -95.4947307|
