#import "//templates/document.typ": *

#show: project.with(
  title: "Verbale esterno del 2024-01-10",
  managers: p.furno,
  recipients: (
    p.vardanega,
    p.cardin,
    [_#(p.zextras)_],
  ),
  changelog: (
    "1.0", "2024-01-10", p.furno, p.bulychov, "Finalizzazione del verbale",
    "0.1", "2024-01-10", p.furno, p.bulychov, "Prima bozza: struttura e appunti dalla riunione",
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione
- *Luogo*: Chat discord;
- *Partecipanti*: #p.furno;;
- *Partecipanti esterni*: #p.rispo.

== Ordine del giorno
- Confermare con l'azienda la volontà del gruppo, già emersa in passato, di rimuovere definitivamente alcuni requisiti opzionali dal progetto.

= Sintesi dell'incontro
La conversazione, avvenuta tra un membro dell'azienda e il Responsabile del gruppo, è stata svolta interamente su discord.\
Durante l'incontro il gruppo ha ribadito all'azienda la volontà emersa durante la riunione interna del 2024-01-03, e precedentemente discussa in altre riunioni anche con il proponente, di non includere i seguenti requisiti opzionali all'interno del progetto:
- implementazione di calendari e appuntamenti;
- implementazione di rubriche e contatti.
La scelta, raggiunta dopo uno studio approfondito dei requisiti in questione, è stata motivata dalla mole di lavoro necessaria per l'implementazione, operazione che risulta essere molto più laboriosa di quanto inizialmente preventivato, e dal fatto che tali parti del protocollo JMAP siano ancora in via di sviluppo. Inoltre le librerie proposte non le implementano, sarebbe quindi necessario apportare importanti modifiche alla libreria che abbiamo scelto di utilizzare, richiedendo elevata difficoltà ed impegno orario.\
L'azienda ha approvato la nostra decisione.


= Decisioni prese
- Rimuovere i requisiti opzionali di calendari e appuntamenti dal progetto;
- Rimuovere i requisiti opzionali di rubriche e contatti dal progetto.