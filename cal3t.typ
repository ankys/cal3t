
#let title = [微分積分学３]
#let author = "中安淳"
// #let date = datetime.today().display()
#let date = [2025年1月4日]

#import "@preview/js:0.1.3": *
#show: js.with(
	paper: "a4",
	book: true,
	lang: "ja",
	// seriffont: "New Computer Modern",
	// seriffont-cjk: "Harano Aji Mincho",
	// sansfont: "Source Sans Pro",
	// sansfont-cjk: "Harano Aji Gothic",
)
#set par(first-line-indent: 1em) // why
#show math.equation.where(block: true): block.with(width: 100%)

#import "@preview/ctheorems:1.1.3": thmrules
#show: thmrules.with()

#import "deps/autoeqnum.typ": autoeqnum
#show heading.where(level: 2): it => {
	counter(math.equation).update(0)
	it
}
#show: autoeqnum.with(mode: "ref", numbering: it => {
	let count = counter(heading).get()
	numbering("(1.1)", ..count, it)
})

// #import "deps/outputtools.typ": output_outline
// #output_outline()

#maketitle(
	title: title,
	authors: author,
	date: date,
)

#include "00_preface.typ"

#outline()

#include "01_tuple.typ"
#include "02_space.typ"
#include "03_pdiff.typ"
#include "04_iint.typ"
#include "05_fseq.typ"
#include "06_calc.typ"
#include "07_limint.typ"

#bibliography("99_ref.yml")
