
<!-- README.md is generated from README.Rmd. Please edit that file -->

# lipsum: access a variety of placeholder text APIs <a href="https://jack-davison.github.io/lipsum/"><img src="man/figures/logo.png" align="right" height="134" /></a>

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
#> <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Hoc simile tandem est? Tenent mordicus. Beatum, inquit. Primum quid tu dicis breve? Re mihi non aeque satisfacit, et quidem locis pluribus. Magna laus. </p>
#> 
#> <p>Ego vero isti, inquam, permitto. Omnia contraria, quos etiam insanos esse vultis. Istic sum, inquit. <b>Erat enim Polemonis.</b> Magna laus. Praeteritis, inquit, gaudeo. </p>
#> 
#> <ol>
#>  <li>Quamquam non negatis nos intellegere quid sit voluptas, sed quid ille dicat.</li>
#>  <li>Quod non faceret, si in voluptate summum bonum poneret.</li>
#>  <li>Ne amores quidem sanctos a sapiente alienos esse arbitrantur.</li>
#>  <li>Nos quidem Virtutes sic natae sumus, ut tibi serviremus, aliud negotii nihil habemus.</li>
#>  <li>Multoque hoc melius nos veriusque quam Stoici.</li>
#>  <li>Atque etiam valítudinem, vires, vacuitatem doloris non propter utilitatem solum, sed etiam ipsas propter se expetemus.</li>
#> </ol>
#> 
#> 
#> <p>Audeo dicere, inquit. Itaque hic ipse iam pridem est reiectus; Duo Reges: constructio interrete. Quis istum dolorem timet? Illa argumenta propria videamus, cur omnia sint paria peccata. </p>
#> 
#> <blockquote cite='http://loripsum.net'>
#>  Dabit hoc Zenoni Polemo, etiam magister eius et tota illa gens et reliqui, qui virtutem omnibus rebus multo anteponentes adiungunt ei tamen aliquid summo in bono finiendo.
#> </blockquote>
```

Using GitHub markdown, this ends up looking like:

``` r
cat(ipsum)
```

<p>
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Hoc simile
tandem est? Tenent mordicus. Beatum, inquit. Primum quid tu dicis breve?
Re mihi non aeque satisfacit, et quidem locis pluribus. Magna laus.
</p>
<p>
Ego vero isti, inquam, permitto. Omnia contraria, quos etiam insanos
esse vultis. Istic sum, inquit. <b>Erat enim Polemonis.</b> Magna laus.
Praeteritis, inquit, gaudeo.
</p>
<ol>
<li>
Quamquam non negatis nos intellegere quid sit voluptas, sed quid ille
dicat.
</li>
<li>
Quod non faceret, si in voluptate summum bonum poneret.
</li>
<li>
Ne amores quidem sanctos a sapiente alienos esse arbitrantur.
</li>
<li>
Nos quidem Virtutes sic natae sumus, ut tibi serviremus, aliud negotii
nihil habemus.
</li>
<li>
Multoque hoc melius nos veriusque quam Stoici.
</li>
<li>
Atque etiam valítudinem, vires, vacuitatem doloris non propter
utilitatem solum, sed etiam ipsas propter se expetemus.
</li>
</ol>
<p>
Audeo dicere, inquit. Itaque hic ipse iam pridem est reiectus; Duo
Reges: constructio interrete. Quis istum dolorem timet? Illa argumenta
propria videamus, cur omnia sint paria peccata.
</p>
<blockquote cite="http://loripsum.net">
Dabit hoc Zenoni Polemo, etiam magister eius et tota illa gens et
reliqui, qui virtutem omnibus rebus multo anteponentes adiungunt ei
tamen aliquid summo in bono finiendo.
</blockquote>
