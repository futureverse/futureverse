# R package 'futureverse' - Install 'Futureverse' in One Go <img border="0" src="man/figures/logo.png" alt="The 'future' hexlogo" align="right"/>

The [Futureverse] is a unifying framework for parallelization and
distributed processing in R. This package, **futureverse**, is a
utility wrapper package that makes it _easy to install_ most common
Futureverse packages _in one go_.


## TL;DR

Start by configuring Futureverse to parallelize on the current
computer:

```r
future::plan(future::multisession)
```

After this, all it takes is a minor tweak to make your existing
`lapply()`, `map()`, or `foreach()` code to run in parallel, e.g.

```r
## future.apply: futurized version of base R apply
library(future.apply)
y <-        lapply(X, slow_fcn)
y <- future_lapply(X, slow_fcn)

## furrr: futurized version of purrr
library(furrr)
y <- X |>        map(slow_fcn)
y <- X |> future_map(slow_fcn)

## foreach: futurized version
library(foreach)
y <- foreach(x = X) %do%       slow_fcn(x)
y <- foreach(x = X) %dofuture% slow_fcn(x)
```


## Installation

Call:

```r
install.packages("futureverse")
```

to install:

 * **[future]** - the core Futureverse package
 * **[future.apply]** - Futureverse variants of base-R apply functions
 * **[furrr]** - Futureverse variants of **purrr** apply functions
 * **[doFuture]** - Futureverse adaptors for the **foreach** package
 * **[progressr]** - Near-live progress updates when using Futureverse

Call:

```r
install.packages("futureverse", dependencies = TRUE)
```

to install also additional [parallel backends]:

* **[future.mirai]** - a modern alternative to built-in
  `plan(multisession)`
* **[future.callr]** - a memory efficient alternative to built-in
  `plan(multisession)`
* **[future.batchtools]** - parallelize on HPC job schedulers; Load
  Sharing Facility ([LSF]), [OpenLava], [TORQUE/PBS], Sun/Son
  of/Oracle/Univa/Altair Grid Engine ([SGE]), [Slurm]


## Want to learn more?

* Tutorials and Workshops: https://www.futureverse.org/tutorials.html
* Blog: https://www.futureverse.org/blog.html
* Publications: https://www.futureverse.org/publications.html
* Support: https://github.com/orgs/futureverse/discussions


[parallel backends]: https://www.futureverse.org/backends.html
[Futureverse]: https://www.futureverse.org
[future]: https://future.futureverse.org
[future.batchtools]: https://future.batchtools.futureverse.org
[future.callr]: https://future.callr.futureverse.org
[future.mirai]: https://future.mirai.futureverse.org
[future.apply]: https://future.apply.futureverse.org
[furrr]: https://furrr.futureverse.org
[doFuture]: https://doFuture.futureverse.org
[progressr]: https://progressr.futureverse.org
[TORQUE/PBS]: https://en.wikipedia.org/wiki/TORQUE
[Slurm]: https://en.wikipedia.org/wiki/Slurm_Workload_Manager
[SGE]: https://en.wikipedia.org/wiki/Oracle_Grid_Engine
[LSF]: https://en.wikipedia.org/wiki/Platform_LSF
[OpenLava]: https://en.wikipedia.org/wiki/OpenLava
