#import "//templates/common.typ": *

#let changelog_header = ([*Versione*], [*Data*], [*Autore*], [*Verificatore*], [*Dettaglio*],)

#let project(
  title: "",
  date: none,
  version: none,
  managers: none,
  verifiers: none,
  editors: none,
  recipients: none,
  changelog: none,
  show_outline: true,
  outline_depth: none,
  body,
) = {
  set document(author: group_details.at("name"), title: title)
  set text(font: "Linux Libertine", lang: "it")
  set heading(numbering: "1.1)")

  show heading: it => {
    it.body
    v(0.3em)
  }
  
  set align(center)
  text(2.3em, weight: 700, title) + [ \ ]

  set par(justify: true)
  
  v(2em) 
  
  if date != none {
    date
  }

  set align(horizon)
  image(group_details.at("logo"), width: 42%)
  text(1.1em, "overture.unipd@gmail.com")


  v(6em)
  gridx(
    // columns: (1fr, 1fr),
    columns: 2,
    align: (right, left),
    row-gutter: 1.1em,
    [Responsabile],
    vlinex(),
    managers.flatten().map(el => [#el \ ]).sum(),
    [Verificatori],
    verifiers.flatten().map(el => [#el \ ]).sum(),
    [Redattori],
    editors.flatten().map(el => [#el \ ]).sum(),
    [Destinatari],
    recipients.flatten().map(el => [#el \ ]).sum(),
  )
  
  if version != none {
    align(bottom, [Versione: ] + version)
  }

  pagebreak()

  set page(
    header-ascent: 15%,
    header: gridx(
      columns: (1fr, 1fr),
      align: (left, horizon+right),
      image(group_details.at("logo"), width:  4em), title,
    ),
    //footer: aboveline()
  )

  set align(start + top)
  
  if changelog != none {
    changelog.insert(0, changelog_header)
    heading(
      outlined: false,
      numbering: none,
      [Registro delle modifiche]
    )
    table(
      fill: (_, row) => if calc.odd(row) { luma(210) } else { white },
      inset: 0.5em,
      columns: (1fr,)*4 + (2fr,),
      ..changelog.flatten().map(el => text(size: 0.8em)[#el]),
    )
    pagebreak()
  }

  if show_outline == true {
    outline(depth: outline_depth, indent: true)
    pagebreak()
  }

  show heading: it => {
    counter(heading).display() + [ ] + it.body
    v(0.3em)
  }
  set page(numbering: "1 / 1")
  counter(page).update(1)
  set align(start+top)
  set text(hyphenate: false)
  show link: underline
  body
}
