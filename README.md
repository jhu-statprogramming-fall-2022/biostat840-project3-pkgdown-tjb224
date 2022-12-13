# table1

Package made by Ben Rich
Website and example data analysis by Taner Bertuna

github link: https://github.com/benjaminrich/table1
website link: https://jhu-statprogramming-fall-2022.github.io/biostat840-project3-pkgdown-tjb224

I customized the footer, the sidebar, the theme, used mint bootswatch, and changed the title.

Exported functions: units (unit attribute), label(label attribute), signif_pad(round numbers with 0 padding), update_html(update HTML), t1flex(convert table1 object to flextable object), knit_print.table1(method for printing knitr context), parse.abbrev.render.code(parse abbreviated code for rendering table output), render.strat.default(render strata labels for table output), subsetp(subset function thatpreserves column attributes), table.rows(conver to HTML table rows), print.table1(print table1 object), render.varlabel(render variable lavels for table output), t1kable(convert table1 object to kabelExtra), render.default(render values for table output), render.missing.default(render missinf values for table output), table1(generate HTML table 1), stats.default(compute some basic descriptive statistics), t1read(read and augment data with extended metadata attributes), stats.apply.rounding(apply rounding to stats), render.continuous.default(render cont values for table output), as.dataframe.table1(convert table1 object to data frame), eqcut(cut a continuous variable into equal sized groups), render.categorical.default(render categorical values for table output).

Use link to see exported function descriptions: https://www.rdocumentation.org/packages/table1/versions/1.4.2

[![R-CMD-check](https://github.com/benjaminrich/table1/workflows/R-CMD-check/badge.svg)](https://github.com/benjaminrich/table1/actions)
[![CRAN\_Release\_Badge](https://www.r-pkg.org/badges/version-ago/table1)](https://CRAN.R-project.org/package=table1)
[![CRAN\_Download\_Badge](https://cranlogs.r-pkg.org/badges/table1)](https://CRAN.R-project.org/package=table1)

An R package for generating tables of descriptive statistics in HTML.

github link: https://github.com/benjaminrich/table1
website link: 

I customized the footer, the sidebar, the theme, used mint bootswatch, and changed the title. 

## Installation

To install from CRAN:

``` r
install.packages("table1")
```

To install the latest development version directly from GitHub:

``` r
require(devtools)
devtools::install_github("benjaminrich/table1")
```

## Getting Started

An introduction to the package with examples is provided in the [vignette](https://benjaminrich.github.io/table1/vignettes/table1-examples.html).

## Example

For this example, we will use data from the Mayo Clinic trial in primary biliary cirrhosis (PBC) of the liver found in the `survival` package.

``` r
require(table1)
require(survival)

dat <- subset(survival::pbc, !is.na(trt))  # Exclude subjects not randomized

dat$trt     <- factor(dat$trt, levels=1:2, labels=c("D-penicillamine", "Placebo"))
dat$sex     <- factor(dat$sex, levels=c("m", "f"), labels=c("Male", "Female"))
dat$stage   <- factor(dat$stage, levels=1:4, labels=paste("Stage", 1:4))
dat$edema   <- factor(dat$edema, levels=c(0, 0.5, 1),
                      labels=c("No edema",
                               "Untreated or successfully treated",
                               "Edema despite diuretic therapy"))
dat$spiders <- as.logical(dat$spiders)
dat$hepato  <- as.logical(dat$hepato)
dat$ascites <- as.logical(dat$ascites)

label(dat$age)      <- "Age (y)"
label(dat$sex)      <- "Sex"
label(dat$stage)    <- "Histologic stage of disease"
label(dat$edema)    <- "Edema status"
label(dat$spiders)  <- "Blood vessel malformations in the skin"
label(dat$hepato)   <- "Presence of hepatomegaly or enlarged liver"
label(dat$ascites)  <- "Presence of ascites"
label(dat$platelet) <- "Platelet count (&times; 10<sup>9</sup> per liter)"
label(dat$protime)  <- "Standardised blood clotting time"
label(dat$albumin)  <- "Serum albumin (g/dL)"
label(dat$alk.phos) <- "Alkaline phosphotase (U/L)"
label(dat$ast)      <- "Aspartate aminotransferase (U/mL)"
label(dat$bili)     <- "Serum bilirubin (mg/dL)"
label(dat$chol)     <- "Serum cholesterol (mg/dL)"
label(dat$copper)   <- "Urine copper (&mu;g/day)"
label(dat$trig)     <- "Triglycerides (mg/dL)"

table1(~ age + sex + stage + edema + spiders + hepato + ascites +
         platelet + protime + albumin + alk.phos + ast + bili + chol +
         copper + trig | trt, data=dat)
```


