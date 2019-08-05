
<!-- README.md is generated from README.Rmd. Please edit that file -->

[![Build
Status](https://travis-ci.org/rcannood/GillespieSSA2.svg?branch=master)](https://travis-ci.org/rcannood/GillespieSSA2)
[![Build
status](https://ci.appveyor.com/api/projects/status/5kw9ynlc1mmehrcj?svg=true)](https://ci.appveyor.com/project/rcannood/gillespiessa2)

# `GillespieSSA2`: Gillespie’s Stochastic Simulation Algorithm for impatient people.

**GillespieSSA2** is a fast, scalable, and versatile framework for
simulating large systems with Gillespie’s Stochastic Simulation
Algorithm (SSA). This package is the spiritual successor to the
GillespieSSA package originally written by Mario Pineda-Krch.

GillespieSSA2 has the following added benefits:

  - The whole algorithm is run in Rcpp which results in major speed
    improvements (\>100x). Even your propensity functions (reactions)
    are being compiled to Rcpp\!
  - Parameters and variables have been renamed to make them easier to
    understand.
  - Many unit tests try to ensure that the code works as intended.

The SSA methods currently implemented are: Exact (`ssa_exact()`),
Explicit tau-leaping (`ssa_etl()`), and the Binomial tau-leaping
(`ssa_btl()`).

## Install

You can install the development version of GillespieSSA2 from GitHub
with

``` r
devtools::install_github("rcannood/GillespieSSA2", build_vignettes = TRUE)
```

## Examples

The following example models are available:

  - Introduction to GillespieSSA2:  
    `vignette("an_introduction", package="GillespieSSA2")`
  - Converting from GillespieSSA to GillespieSSA2:  
    `vignette("converting_from_GillespieSSA", package="GillespieSSA2")`
  - Decaying-Dimerization Reaction Set (Gillespie, 2001):  
    `vignette("decaying_dimer", package="GillespieSSA2")`
  - SIRS metapopulation model (Pineda-Krch, 2008):  
    `vignette("epi_chain", package="GillespieSSA2")`
  - Linear Chain System (Cao et al., 2004):  
    `vignette("linear_chain", package="GillespieSSA2")`
  - Pearl-Verhulst Logistic Growth model (Kot, 2001):  
    `vignette("logistic_growth", package="GillespieSSA2")`
  - Lotka Predator-Prey model (Gillespie, 1977; Kot, 2001):  
    `vignette("lotka_predator_prey", package="GillespieSSA2")`
  - Radioactive Decay model (Gillespie, 1977):  
    `vignette("radioactive_decay", package="GillespieSSA2")`
  - Rosenzweig-MacArthur Predator-Prey model (Pineda-Krch et al.,
    2007):  
    `vignette("rm_predator_prey", package="GillespieSSA2")`
  - Kermack-McKendrick SIR model (Brown & Rothery, 1993):  
    `vignette("sir", package="GillespieSSA2")`

## Latest changes

Check out `news(package = "GillespieSSA2")` for a full list of
changes.

<!-- This section gets automatically generated from inst/NEWS.md, and also generates inst/NEWS -->

### Recent changes in GillespieSSA2 0.2.4 (26-07-2019)

  - MAJOR CHANGE: Split up Rcpp code to make separate parts easier to
    test.

  - TESTING: Write unit tests for many of the functions.

  - MINOR CHANGE: Renamed `ssa_direct()` to `ssa_exact()`.

  - MINOR CHANGE: Store firings, buffer and propensity objects only if
    requested.

  - BUG FIX: `limiting` variable in `ssa_btl()` should be an integer,
    not a double.

  - MINOR CHANGE: Timer now has millisecond accuracy, instead of second.

### Recent changes in GillespieSSA2 0.2.3 (17-07-2019)

  - MAJOR CHANGE: Remove `nu` and `propensity_functions` from `ssa()`,
    instead expect a list of `reaction()` objects. This function
    provides a much more natural interface to specifying the effect and
    propensity of a reaction.

  - MINOR CHANGE: Apply small allocation optimisations to `ssa_btl`,
    `ssa_etl` and `ode_em`.
