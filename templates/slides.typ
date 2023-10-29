#import "//templates/common.typ": *

#import "@preview/polylux:0.3.1": *
#import themes.clean: *

#let project(title: "", slides) = {
  show: clean-theme.with(
    short-title: title,
    color: black,
    logo: image(group_details.at("logo")),
  )
  
  title-slide(
    title: "Gruppo Overture",
    subtitle: title,
    authors: group_details.at("email"),
  )
  
  show: slides
}
