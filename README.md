
<!-- README.md is generated from README.Rmd. Please edit that file -->

# lipsum

<!-- badges: start -->

[![R-CMD-check](https://github.com/jack-davison/lipsum/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/jack-davison/lipsum/actions/workflows/R-CMD-check.yaml)
[![CRAN
status](https://www.r-pkg.org/badges/version/lipsum)](https://CRAN.R-project.org/package=lipsum)
<!-- badges: end -->

The goal of lipsum is to get easy access to several “Lorem Ipsum” web
APIs to simply generate customisable placeholder text. In the R world,
this will most likely commonly be used within RMarkdown/Quarto documents
and Shiny apps.

The `{lorem}` package also serves a similar purpose, but `{lipsum}`’s
interfacing with a variety of APIs may allow for more flexible
placeholder outputs. For example, the `loripsum()` function gives a lot
of control of the kinds of features the placeholder text should have
(for example, lists, links, headers, and so on).

`{lipsum}` owes a lot to the
[awesome-ipsum](https://github.com/templeman/awesome-ipsum) list, and
uses its same categorisations:

- **Practical**, which are placeholder generators that are most useful
  for “professional” settings. These either generate text in Latin, or
  business-sounding text like newspaper articles.

- **Whimsical**, which are more playful generators which impersonate
  celebrities, list the names of dinosaurs, use profanity, and so on.
  These are perhaps more appropriate for personal projects!

## Installation

You can install the development version of `{lipsum}` like so:

``` r
#install.packages("pak")
pak::pak("jack-davison/lipsum")
```

## Example

The below code generates example lorem ipsum generated using the
[loripsum API](https://loripsum.net). This is the most useful,
customisable function in the package, and is probably most appropriate
for professional use.

``` r
ipsum <- lipsum::loripsum(n = 3, decorate = TRUE, ol = TRUE, bq = TRUE)
```

In R, the output looks like this:

``` r
cat(ipsum)
#> <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ac tamen hic mallet non dolere. Ut aliquid scire se gaudeant? Eam stabilem appellas. Satis est ad hoc responsum. <b>Age sane, inquam.</b> Duo Reges: constructio interrete. </p>
#> 
#> <p>Haec para/doca illi, nos admirabilia dicamus. Bork Apud ceteros autem philosophos, qui quaesivit aliquid, tacet; </p>
#> 
#> <blockquote cite='http://loripsum.net'>
#>  Quamvis enim depravatae non sint, pravae tamen esse possunt.
#> </blockquote>
#> 
#> 
#> <ol>
#>  <li>Quid est igitur, cur ita semper deum appellet Epicurus beatum et aeternum?</li>
#>  <li>Tum Piso: Quoniam igitur aliquid omnes, quid Lucius noster?</li>
#>  <li>Ille enim occurrentia nescio quae comminiscebatur;</li>
#>  <li>Confecta res esset.</li>
#>  <li>Omnia contraria, quos etiam insanos esse vultis.</li>
#>  <li>Longum est enim ad omnia respondere, quae a te dicta sunt.</li>
#> </ol>
#> 
#> 
#> <p>Est, ut dicis, inquit; Quo plebiscito decreta a senatu est consuli quaestio Cn. Tu quidem reddes; Ita credo. </p>
```

Using GitHub markdown, this ends up looking like:

``` r
cat(ipsum)
```

<p>
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ac tamen hic
mallet non dolere. Ut aliquid scire se gaudeant? Eam stabilem appellas.
Satis est ad hoc responsum. <b>Age sane, inquam.</b> Duo Reges:
constructio interrete.
</p>
<p>
Haec para/doca illi, nos admirabilia dicamus. Bork Apud ceteros autem
philosophos, qui quaesivit aliquid, tacet;
</p>
<blockquote cite="http://loripsum.net">
Quamvis enim depravatae non sint, pravae tamen esse possunt.
</blockquote>
<ol>
<li>
Quid est igitur, cur ita semper deum appellet Epicurus beatum et
aeternum?
</li>
<li>
Tum Piso: Quoniam igitur aliquid omnes, quid Lucius noster?
</li>
<li>
Ille enim occurrentia nescio quae comminiscebatur;
</li>
<li>
Confecta res esset.
</li>
<li>
Omnia contraria, quos etiam insanos esse vultis.
</li>
<li>
Longum est enim ad omnia respondere, quae a te dicta sunt.
</li>
</ol>
<p>
Est, ut dicis, inquit; Quo plebiscito decreta a senatu est consuli
quaestio Cn. Tu quidem reddes; Ita credo.
</p>
