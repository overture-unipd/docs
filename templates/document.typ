#import "//templates/common.typ": *

#let getSurname(a) = {
  return a.split().at(-1)
}

#let sortBySurname(a) = {
  let a = (a,).flatten().dedup()
  if a.last() == false {
    a.pop()
    return a
  }
  return a.sorted(key: getSurname)
}

#let project(
  title: none,
  managers: none,
  verifiers: none,
  editors: none,
  recipients: none,
  changelog: none,
  show_outline: true,
  outline_depth: none,
  version: none,
  date: none,
  body,
) = {
  set document(author: g.name, title: title)
  set text(font: "Linux Libertine", lang: "it")
  set heading(numbering: "1.1)")

  show heading: it => {
    it.body
    v(0.3em)
  }

  set align(center)
  text(2.3em, weight: 700, title) + [\ #v(1.5em)]

  if changelog != none {
    let date = changelog.at(1, default: none);
    let version = changelog.at(0, default: none);
    [#date]
    if version != none {
      [ — v#version]
    }
  }

  set align(horizon)
  image(g.logo, width: 42%)
  text(1.1em, link("mailto:"+g.mail), style: "italic")

  if changelog != none {
    let changelog_header = ([*Versione*], [*Data*], [*Autori*], [*Verificatori*], [*Dettaglio*])
    let keep(r) = {
      changelog.enumerate().filter(i => r.contains(i.first())).map(i => i.last())
    }
    let r_editors = array.range(2, changelog.len(), step: changelog_header.len())
    let r_verifiers = r_editors.map(i => i+1)
    let editors = keep(r_editors)
    let verifiers = keep(r_verifiers)
  }

  set align(bottom)
  gridx(
    // columns: (1fr, 1fr),
    columns: 2,
    align: (right, left),
    row-gutter: 1.1em,
    [Destinatari],
    vlinex(),
    sortBySurname(recipients).join([\ ]),
    [Responsabile],
    sortBySurname(managers).join([\ ]),
    [Redattori],
    sortBySurname(editors).join([\ ]),
    [Verificatori],
    sortBySurname(verifiers).join([\ ]),
  )
  
  pagebreak()

  set page(
    header-ascent: 15%,
    header: gridx(
      columns: (1fr, 1fr),
      align: (left, horizon+right),
      image(g.logo, width:  3.5em), title,
      hlinex(stroke: 0.07em)
    ),
  )

  set align(start + top)

  if version != none and changelog != none and changelog.len() > 2 {
    changelog = changelog_header + changelog;
    heading(
      outlined: false,
      numbering: none,
      [Registro delle modifiche]
    )
    table(
      fill: (_, row) => if calc.odd(row) { luma(215) } else { white },
      inset: 0.5em,
      columns: (auto,)*4 + (1fr,),
      ..changelog.map(el => text(size: 0.8em)[
        #par(justify: false,
          if type(el) == array {
            sortBySurname(el).join([,\ ])
          } else {
            el
          }
        )
      ]),
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
  set par(justify: true)
  set text(hyphenate: true)
  show link: underline
  body
}

#let issue_to_link(repo, id) = {
  return link(g.org+"/"+repo+"/issues/"+str(id))[#repo \##id]
}
  
#let tasks(t) = {
  let tasks_header = ([*ID*], [*Dettaglio*], [*Assegnatari*])
  let map_issue(r, t) = {
    t.enumerate().map(a => if r.contains(a.first()) { return issue_to_link(a.last().first(), a.last().last()) } else { a.last() }) 
  }
  let r = array.range(0, t.len(), step: tasks_header.len())
  t = tasks_header + map_issue(r, t)
  
  align(center,
    block(width: 90%,
      table(
        fill: (_, row) => if calc.odd(row) { luma(215) } else { white },
        inset: 0.5em,
        columns: (auto, 1fr, auto),
        align: left,
        ..t.map(el => text(size: 0.8em)[
          #par(justify: false,
            if type(el) == array {
              sortBySurname(el).join([,\ ])
            } else {
              el
            }
          )
        ]),
      )
    )
  )
}