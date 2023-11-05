#import "//templates/common.typ": *

#import "@preview/polylux:0.3.1": *
#import themes.clean: *

#let project(title: "", slides) = {
  set document(author: g.name, title: title)
  
  show: clean-theme.with(
    short-title: title,
    color: black,
    logo: image(g.logo),
  )
  
  title-slide(
    title: g.name,
    subtitle: title,
    authors: text(link("mailto:"+g.mail), style: "italic"),
  )
  
  show link: underline
  show: slides
}