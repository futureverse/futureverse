# R package 'futureverse' - Easily Install and Load the 'Futureverse'

The [Futureverse] is a unifying framework for parallelization and
distributed processing in R. This package, **futureverse**, is a
utility wrapper package that makes it easy to install and load the
most common Futureverse packages in one go.


## Usage

`library(futureverse)` will load the common Futureverse packages:


* **[future]** - the core Futureverse package
* **[future.apply]** - Futureverse variants of base-R apply functions
* **[furrr]** - Futureverse variants of **purrr** apply functions
* **[doFuture]** - Futureverse adaptors for the **foreach** package
* **[progressr]** - Near-live progress updates when using Futureverse


## Installation

Call:

```r
install.packages("futureverse")
```

to install **[future]**, **[future.apply]**, **[furrr]**,
**[doFuture]**, and **[progressr]**.

To install also additional parallel backends, **future.batchtools**,
**future.callr**, and **future.mirai**, use:

```r
install.packages("futureverse", dependencies = TRUE)
```

[Futureverse]: https://www.futureverse.org
[future]: https://future.futureverse.org
[future.batchtools]: https://future.batchtools.futureverse.org
[future.callr]: https://future.callr.futureverse.org
[future.mirai]: https://future.mirai.futureverse.org
[future.apply]: https://future.apply.futureverse.org
[furrr]: https://furrr.futureverse.org
[doFuture]: https://doFuture.futureverse.org
[progressr]: https://progressr.futureverse.org
