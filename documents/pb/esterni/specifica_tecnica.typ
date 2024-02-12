#import "//templates/document.typ": *

#show: project.with(
  title: "Specifica Tecnica",
  managers: p.bulychov,
  recipients: (
    p.vardanega,
    p.cardin,
    [_#(p.zextras)_],
  ),
  changelog: (
    "0.0.1", "2024-02-12", (p.vedovato, p.fabbian), p.bettin, 
    [
      Struttura di base del documento e introduzione.
    ]
  ),
  outline_depth: 3,
)

= *Introduzione*

== Scopo del documento
Lo scopo di questo documento è quello di elencare e motivare le scelte architetturali che il gruppo Overture ha intrapreso per la realizzazione dell'infrastruttura informatica richiesta. Il documento comprende anche i diagrammi delle classi e dei package al fine di spiegare in maniera più chiara e dettagliata il software sviluppato.

== Glossario
Per evitare ambiguitá o incomprensioni riguardanti la terminologia usata nel documento, é stato deciso di adottare un glossario in cui vengono riportate le varie definizioni. In questa maniera in esso verranno riportati tutti i termini specifici del dominio d'uso con relativi significati.
\
La presenza di un termine all'interno del `Glossario` viene indicata applicando #glossary("questo stile").

== Riferimenti
=== Riferimenti normativi
- `Norme di Progetto v1.0.0`: \ https://overture-unipd.github.io/docs/rtb/interni/norme_di_progetto_v1.0.0.pdf
- *PD2 - Regolamento del progetto didattico* \
  https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/PD2.pdf
- *Capitolato d'appalto C8*: JMAP, il nuovo protocollo standard per la comunicazione email \
  https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C8.pdf

=== Riferimenti informativi
- `Glossario v1.0.0`: \ https://overture-unipd.github.io/docs/rtb/interni/glossario_v1.0.0.pdf
- `Analisi dei Requisiti v1.1.0`: \ https://overture-unipd.github.io/docs/rtb/esterni/analisi_dei_requisiti_v1.1.0.pdf