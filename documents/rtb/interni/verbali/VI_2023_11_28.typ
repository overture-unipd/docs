#import "//templates/document.typ": *

#show: project.with(
  title: "Verbale interno del 2023-11-28",
  managers: p.fabbian,
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "1.0", "2023-11-30", p.vedovato, p.bettin, "Aggiustamenti alla forma e finalizzazione del verbale",
    "0.1", "2023-11-28", p.vedovato, p.bettin, "Prima bozza con riassunto incontro",
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione
- *Luogo*: Chiamata Discord;
- *Ora di inizio*: 20:15;
- *Ora di fine*: 20:55;
- *Partecipanti*: #p.amadori, #p.bettin, #p.bonavigo, #p.fabbian, #p.vedovato.

== Ordine del giorno
- Fare il punto della situazione sullo stato della documentazione prodotta fino ad ora;
- Riflettere sull'`Analisi dei Requisiti`;
- Fare un bilancio sullo sviluppo del PoC;
- Preparare il diario di bordo;
- Definire le domande da presentare in vista dell'incontro imminente con _#(p.zextras)_.

= Sintesi dell'incontro
L'incontro ha avuto inizio con una discussione riguardante il punto della situazione sullo stato della documentazione prodotta fino ad ora. Abbiamo quindi analizzato rapidamente la condizione di ogni documento, valutandone la qualità ed il grado di completezza, deducendo che siamo a buon punto con la maggior parte di ciò che è stato prodotto fino a questo momento, ad esclusione del `Piano di Qualifica`, il quale richiederà maggiore attenzione all'interno del prossimo periodo.

Siamo poi passati a riflettere sull'`Analisi dei Requisiti` per giudicarne l'integrità prima dell'incontro ufficiale fissato con _#(p.zextras)_ per discutere proprio di questo. Finora, secondo la nostra prospettiva, gli Analisti hanno compiuto un lavoro pressoché esaustivo per quanto concerne l'individuazione degli Use Case e dei requisiti; tuttavia quest'ultimo sarà soggetto a una rivalutazione in base al giudizio della proponente. È stata inoltre presa in considerazione la possibilità di fissare un incontro nel prossimo periodo con il #p.cardin per poter essere ancora più certi della solidità del documento.

Dopo ancora è stato fatto un bilancio sullo sviluppo del PoC, con i Programmatori che hanno esposto il proprio lavoro, giustificando agli altri membri le tecnologie scelte fino a questo momento e trattando la prossime attività da compiere in futuro.

Infine sono stati discussi i contenuti del diario di bordo di questa settimana e sono state definite le domande da presentare a _#(p.zextras)_ riguardanti quanto discusso su `Analisi dei Requisiti` e PoC.

= Decisioni prese
- Dedicare una buona fetta del prossimo periodo allo sviluppo del `Piano di Qualifica`;
- Domande da fare a _#(p.zextras)_ nell'incontro di giovedì 30 novembre.

#pagebreak()
= Attività individuate
#tasks((
  (g.docs, 98), [Stesura di _questo_ verbale], p.vedovato,
  (g.docs, 91), [Stesura del diario di bordo del 2023-11-29], p.fabbian,
  (g.docs, 99), [`Piano di Progetto`: Preventivo del periodo corrente], p.vedovato,
  (g.docs, 100), [Containerizzazione del database e del server], p.bulychov,
  (g.docs, 101), [Inserimento di una mail (tramite  accettazione del json e passaggio al db)], p.bonavigo,
  (g.docs, 102), [Recupero di una mail dal server], p.bonavigo,
))
