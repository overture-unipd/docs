#import "//templates/common.typ": *

#import "@preview/polylux:0.3.1": *
#import themes.clean: *

#let project(title: "", slides) = {
  set document(author: g.name, title: title)
  show link: underline

  show: clean-theme.with(
    short-title: title,
    color: black,
    logo: image(g.logo),
  )
  
  title-slide(
    title: [Gruppo _#(g.name)_],
    subtitle: title,
    authors: link("mailto:"+g.mail),
  )
  
  show: slides
}