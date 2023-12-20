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
  recipients: none,
  group_is_recipient: true,
  changelog: none,
  show_outline: true,
  outline_depth: none,
  heading_numbers: "1.1)",
  body,
) = {
  set text(font: "Linux Libertine", lang: "it")
  set heading(numbering: heading_numbers)
  set page(numbering: "1 / 1")
  show link: underline
  show figure: set block(breakable: true)

  let date = changelog.at(1, default: none);
  let version = changelog.at(0, default: none);
  let document_title = title
  if version != none {
    document_title += " - v" + version
  }
  set document(author: g.name, title: document_title, date: none)

  set align(center)
  text(2.3em, weight: 700, title) + [\ #v(1.5em)]

  [#date]
  if version != none {
    [ — v#version]
  }

  set align(horizon)
  image(g.logo, width: 42%)
  text(1.1em, link("mailto:"+g.mail))

  let keep(r) = {
    changelog.enumerate().filter(i => r.contains(i.first())).map(i => i.last())
  }
  let changelog_header = ([*Versione*], [*Data*], [*Autori*], [*Verificatori*], [*Dettaglio*])
  let r_editors = array.range(2, changelog.len(), step: changelog_header.len())
  let r_verifiers = r_editors.map(i => i+1)
  let editors = keep(r_editors)
  let verifiers = keep(r_verifiers)

  if group_is_recipient == true {
    recipients += ([Gruppo _#(g.name)_],)
  }

  set align(bottom)
  gridx(
    // columns: (1fr, 1fr),
    columns: 2,
    align: (right, left),
    row-gutter: 1.1em,
    [Destinatari],
    vlinex(),
    recipients.join([\ ]),
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
      image(g.logo, width: 3.5em), title,
      hlinex(stroke: 0.07em)
    ),
  )

  set align(start + top)

  if version != none and changelog.len() > 2 {
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
    if heading_numbers != none {
      counter(heading).display() + " "
    }
    it.body
    v(0.3em)
  }
  set align(start+top)
  set par(justify: true)
  set text(hyphenate: true)
  body
}

#let issue_to_link(repo, id) = {
  return link(g.org+"/"+repo+"/issues/"+str(id))[#repo \##id]
}
  
#let tasks(t) = {
  let tasks_header = ([*ID*], [*Dettaglio*], [*Assegnatari*])
  let map_issue(r, t) = {
    t.enumerate().map(a => if r.contains(a.first()) and type(a.last()) == array { return issue_to_link(a.last().first(), a.last().last()) } else { a.last() }) 
  }
  let r = array.range(0, t.len(), step: tasks_header.len())
  t = tasks_header + map_issue(r, t)

  align(center,
    block(width: 95%,
      table(
        fill: (_, row) => if calc.odd(row) { luma(215) } else { white },
        inset: 0.5em,
        columns: (auto, 1fr, auto),
        align: left,
        ..t.map(el => text(size: 0.9em)[
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

#let risks(r) = {
  let risks_header = (([*Descrizione*], [*Probabilità*], [*Pericolosità*], [*Rilevamento*], [*Piano di contingenza*]))
  r = risks_header.zip(r).flatten()
  
  align(center,
    block(width: 95%,
      table(
        fill: (_, row) => if calc.odd(row) { luma(215) } else { white },
        inset: 0.5em,
        columns: (auto, 1fr),
        align: left,
        ..r.map(el => text(size: 0.9em)[
          #par(justify: false,
            el
          )
        ]),
      )
    )
  )
}

#let requirements(color, r) = {
  let requirements_header = (([*ID Requisito*], [*Descrizione*], [*Fonti*]))
  r = requirements_header + r
  
  align(center,
    block(width: 95%,
      table(
        fill: (_, row) => if row == 0 { rgb(color) } else { white },
        inset: 0.8em,
        columns: (auto, 1fr, auto),
        align: (x, _) => (horizon, left, horizon).at(x),
        ..r.map(el => text(size: 0.9em)[
          #par(justify: false,
            el
          )
        ]),
      )
    )
  )
}

#let tracking1(t) = {
  let tracking_header = (([*ID Requisito*], [*Fonte*]))
  t = tracking_header + t
  
  align(center,
    block(width: 60%,
      table(
        fill: (_, row) => if row == 0 { luma(215) } else { white },
        inset: 0.8em,
        columns: (1fr, 1fr),
        align: horizon,
        ..t.map(el => text(size: 0.9em)[
          #par(justify: false,
            el
          )
        ]),
      )
    )
  )
}

#let tracking2(t) = {
  let tracking_header = (([*Fonte*], [*ID Requisito*]))
  t = tracking_header + t
  
  align(center,
    block(width: 60%,
      table(
        fill: (_, row) => if row == 0 { luma(215) } else { white },
        inset: 0.8em,
        columns: (1fr, 1fr),
        align: horizon,
        ..t.map(el => text(size: 0.9em)[
          #par(justify: false,
            el
          )
        ]),
      )
    )
  )
}

#let summary(t) = {
  let tracking_header = (([*Tipologia*], [*Obbligatori*], [*Desiderabili*], [*Opzionali*]))
  t = tracking_header + t
  
  align(center,
    block(width: 70%,
      table(
        fill: (_, row) => if row == 0 { luma(215) } else { white },
        inset: 0.8em,
        columns: (1fr, 1fr, 1fr, 1fr),
        align: horizon,
        ..t.map(el => text(size: 0.9em)[
          #par(justify: false,
            el
          )
        ]),
      )
    )
  )
}

#let glossary(word)= {
  text(fill: rgb("#33805d"), style: "italic")[#word]
  // text(style: "italic")[#word#sub("G")]
}

#let neg(word)= {
  text(fill: rgb("#D2042D"))[(*#word*)]
}

#let pos(word)= {
  text(fill: rgb("#437c17"))[(*#word*)]
}

#let consuntivo(r) = {
  let period_header = ("", "Res.", "Amm.", "Ver.", "Ana.", "Progett.", "Program.", "Totali per persona").map(r => [*#r*])
  let people = ((p.amadori, p.bettin, p.bonavigo, p.bulychov, p.fabbian, p.furno, p.vedovato).map(n => n.split().last()) + ("Ore totali per ruolo",)).map(el => [*#el*])
  r = period_header + people.zip(r).flatten()

  align(center,
    table(
      fill: (_, row) => if calc.odd(row) { luma(215) } else { white },
      inset: 0.5em,
      columns: (auto,)*8,
      align: center,
      ..r.map(el => text(size: 0.85em, hyphenate: false)[#par(justify: false, el)],)
    )
  )
}

#let costi(r) = {
  let costs_header = ([*Ruolo*], [*Ore*], [*Costo*], [*Differenza*])
  let people = ("Responsabile", "Amministratore", "Verificatore", "Analista", "Progettista", "Programmatore", "Totale preventivo", "Totale consuntivo").map(el => [#el])
  r = costs_header + people.zip(r).flatten()

  align(center,
    table(
      fill: (_, row) => if calc.odd(row) { luma(215) } else { white },
      inset: 0.5em,
      columns: (auto,)*4,
      align: center,
      ..r.map(el => text(size: 0.85em, hyphenate: false)[#par(justify: false, el)],)
    )
  )
}

#let period(data, dirs) = {
  let roles = ("Responsabile", "Amministratore", "Verificatore", "Analista", "Progettista", "Programmatore")
  let period_header = ([],) + roles.map(r => [*#r*])
  let people = (p.amadori, p.bettin, p.bonavigo, p.bulychov, p.fabbian, p.furno, p.vedovato).map(n => n.split().last())
  let r = period_header + (people + ("Ore totali",)).map(el => [*#el*]).zip(data.map(x => x.map(y => str(y)))).flatten()
  
  align(center,
    table(
      fill: (_, row) => if calc.odd(row) { luma(215) } else { white },
      inset: 0.5em,
      columns: (auto,)*7,
      align: center,
      ..r.map(el => text(size: 0.85em, hyphenate: false)[#par(justify: false, el)],)
    )
  )

  v(1em)
  
  let sums = ()
  for j in range(data.first().len()) {
    let t = ()
    for i in range(data.len()) {
      t += (data.at(i).at(j),)
    }
    sums += (t.sum(),)
  }
  
  data = people.zip(data).map(x => x.flatten())
  let pal = (rgb("#e60049"), rgb("#0bb4ff"), rgb("#50e991"), rgb("#e6d800"), rgb("#9b19f5"), rgb("#ffa300"), rgb("#dc0ab4"), rgb("#b3d4ff"), rgb("#00bfa0"))

  align(center,
    canvas({
      import draw: *
      scale(1.8)
      chart.columnchart(size:(auto,4), mode: "clustered", value-key: (1,2,3,4,5,6), data, y-tick-step: 1, bar-style: palette.new(black, pal))
    })
  )

  v(1em)

  align(center,
    canvas({
      import draw: *
      let chart(..values, name: none) = {
        let values = values.pos()
        let offset = 0
        let total = values.fold(0, (s, v) => s + v.at(0))
        let segment(from, to) = {
          merge-path(close: true, {
            line((0, 0), (rel: (360deg * from, 1)))
            arc((), start: from * 360deg, stop: to * 360deg, radius: 1)
          })
        }
        group(name: name, {
          stroke((paint: black, join: "round"))
          for v in values {
            fill(v.at(1))
            let value = v.at(0) / total
            // Draw the segment
            segment(offset, offset + value)
            // Place an anchor for each segment
            anchor(v.at(2), (offset * 360deg + value * 180deg, 0.6))
            offset += value
          }
        })
      }
      scale(2)

      chart(
        (sums.at(0), pal.at(0), roles.at(0)),
        (sums.at(1), pal.at(1), roles.at(1)),
        (sums.at(2), pal.at(2), roles.at(2)),
        (sums.at(3), pal.at(3), roles.at(3)),
        (sums.at(4), pal.at(4), roles.at(4)),
        (sums.at(5), pal.at(5), roles.at(5)),
        name: "chart"
      )

      let positions = ((2,0),)*dirs.at(0)+((-2,0),)*dirs.at(1)+((2,0),)*dirs.at(2)
      let anchors = ("left",)*dirs.at(0)+("right",)*dirs.at(1)+("left",)*dirs.at(2)
      set-style(mark: (fill: white, start: "o", stroke: black),
                content: (padding: .1))
      for i in range(roles.len()) {
        if sums.at(i) != 0 {
          line("chart."+roles.at(i), ((), "-|", positions.at(i)))
          let t = calc.quo(sums.at(i)*100, sums.sum())
          content((), [#roles.at(i) - #t%], anchor: anchors.at(i))
        }
      }
    })
  )
}

#let metrics(r) = {
  let metrics_header = ([*Metrica*], [*Nome*], [*Valore accettabile*], [*Valore ottimo*])
  r = metrics_header + r

  align(center,
    table(
      fill: (_, row) => if calc.odd(row) { luma(215) } else { white },
      inset: 0.5em,
      columns: (auto,)*4,
      align: center,
      ..r.map(el => text(size: 0.85em, hyphenate: false)[#par(justify: false, el)],)
    )
  )
}