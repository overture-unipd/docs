#import "//templates/document.typ": *

#show: project.with(
  title: "Verbale interno del 2024-03-22",
  managers: p.bonavigo,
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "1.0", "2024-03-22", p.amadori, p.bettin, "Stesura del verbale",
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione
- *Luogo*: Chiamata Discord;
- *Ora di inizio*: 11:05;
- *Ora di fine*: 11:40;
- *Partecipanti*: #p.amadori, #p.bettin, #p.bonavigo, #p.bulychov, #p.fabbian, #p.furno, #p.vedovato.

== Ordine del giorno
- Discussione sull'incontro avvenuto con #p.zextras\;
- Valutazione dello stato di preparazione del gruppo per la PB.

= Sintesi dell'incontro
Terminato il colloquio con l'azienda proponente, dove i rappresentanti di quest'ultima si sono ritenuti molto soddisfatti ed il nostro prodotto è stato valutato come MVP, il team si è riunito per fare il punto della situazione in vista della Product Baseline e organizzarsi di conseguenza. L'incontro ha avuto esito positivo ed ora possiamo procedere con la seconda revisione del prodotto con i committenti. Ci siamo quindi confrontati per valutare il nostro grado di preparazione in vista della PB.\
Il `Piano di Progetto` e il `Piano di Qualifica` necessitano di alcuni aggiornamenti prima di essere approvati. Per quanto riguarda il `Piano di Progetto`, è necessario completare la sezione relativa al periodo appena concluso e inserire successivamente il sommario finale in vista della revisione PB. Per quanto riguarda il `Piano di Qualifica`, va aggiornata la sezione relativa al cruscotto di valutazione della qualità, includendo i grafici aggiornati all'ultimo periodo. Successivamente, procederemo con l'approvazione di entrambi i documenti.\
Verranno poi apportati alcuni miglioramenti stilistici a tutta la documentazione, in particolare applicando lo stile ai termini presenti nel glossario dove ancora manca.\
Una volta ultimata definitivamente la documentazione, provvederemo a fissare un colloquio con il #p.cardin per presentare l'architettura del nostro prodotto. In caso di esito positivo, fisseremo anche un colloquio con il #p.vardanega per concludere la seconda revisione del prodotto.\
Dopo un'attenta riflessione, il gruppo si considera pienamente soddisfatto del lavoro svolto e ha deciso all'unanimità di non partecipare alla terza revisione del prodotto denominata Customer Acceptance. Questa decisione verrà riportata anche in un apposita sezione come conclusione del documento `Piano di Qualifica`.

= Decisioni prese
- Applicare alcune correzioni stilistiche alla documentazione;
- Dopo aver perfezionato gli ultimi aspetti, approvare la documentazione rimanente: `Piano di Progetto` e `Piano di Qualifica`;
- Fissare un colloquio con il #p.cardin per procedere con la prima parte della revisione PB;
- Fissare un colloquio con il #p.vardanega per procedere con la parte conclusiva della revisione, una volta superata la prima parte della revisione PB;
- Preparare le presentazioni sul prodotto per i colloqui con i committenti;
- Non effettuare la terza revisione del prodotto (CA).

#pagebreak()

= Attività individuate
#tasks((
  (g.docs, 380), [Stesura di _questo_ verbale], p.amadori,
  (g.docs, 381), [Stesura del verbale esterno del 2024-03-22], p.vedovato,
  (g.docs, 382), [`Piano di Progetto`: consuntivo, retrospettiva e avanzamento raggiunto del periodo precedente], p.fabbian,
  (g.docs, 383), [`Piano di Progetto`: sommario finale per la PB], p.furno,
  (g.docs, 384), [`Piano di Progetto`: sezione CA], p.bonavigo,
  (g.docs, 385), [`Piano di Qualifica`: aggiornamento della sezione 'Cruscotto di valutazione della qualità'], p.fabbian,
  (g.docs, 386), [Approvare il documento `Piano di Progetto` per la PB], p.bettin,
  (g.docs, 387), [Approvare il documento `Piano di Qualifica` per la PB], p.bulychov,
  (g.docs, 388), [Ultime correzioni stilistiche e ai riferimenti nei vari documenti], p.vedovato,
  (g.docs, 389), [Stesura della lettera di presentazione per la PB], p.amadori,
))