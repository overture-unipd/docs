#import "//templates/document.typ": *

#show: project.with(
  title: "Verbale interno del 2024-02-26",
  managers: p.furno,
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "1.0", "2024-02-26", p.bettin, p.bulychov, "Stesura del verbale",
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione
- *Luogo*: Chiamata Discord;
- *Ora di inizio*: 14:00;
- *Ora di fine*: 15:00;
- *Partecipanti*: #p.amadori, #p.bettin, #p.bonavigo, #p.bulychov, #p.fabbian, #p.furno, #p.vedovato.

== Ordine del giorno
- Discussione sui test di unità e di integrazione;
- Valutare la necessità di colloqui con il #p.cardin e l'azienda proponente.

= Sintesi dell'incontro
Nella riunione odierna, il primo punto trattato riguardava il `Piano di Qualifica` ed i test di unità e di integrazione. Infatti, ora che quest'ultimi sono stati studiati approfonditamente e definiti, è possibile procedere con la stesura delle relative sezioni all'interno del documento.

Per quanto riguarda il design del prodotto, dall'incontro è emerso che siamo ancora perplessi sull'utilizzo di alcuni pattern; pertanto pianifichiamo di chiarire questi dubbi grazie ad un colloquio con il #p.cardin nel corso della settimana.

Si è analizzata inoltre la necessità di fissare anche un colloquio con l'azienda proponente per mostrare i progressi fatti nel prodotto, per ricevere un feedback generale su alcuni temi e per charire alcune problematiche:
- Per quanto riguarda le difficoltà precedentemente riscontrate con i client, lo strumento che vorremo utilizzare nel prossimo periodo per superarle è Postman, un'applicazione utilizzata principalmente per testare le API. Con Postman potremmo dimostrare la correttezza del nostro prodotto senza più doverci porre il problema di avere un client funzionante in grado di farlo;
- Desideriamo comunicare all'azienda la nostra volontà di non andare a soddisfare i requisiti funzionali desiderabili relativi alla gestione della condivisione delle cartelle. Questa funzionalità, non ancora supportata interamente dallo standard JMAP attuale, richiederebbe un tempo di sviluppo decisamente troppo elevato. Inoltre, non è supportata da nessun client che abbiamo testato;
- Vorremo capire meglio quali sono i test di accettazione richiesti dall'azienda e, una volta chiariti, provvederemo a inserirli nel `Piano di Qualifica`.

= Decisioni prese
- Aggiornare il `Piano di Qualifica` con delle nuove sezioni riguardanti i test individuati nelle fasi di progettazione;
- Fissare un colloquio con il #p.cardin\;
- Fissare un colloquio con l'azienda proponente #p.zextras.

#pagebreak()

= Attività individuate
#tasks((
  (g.docs, 312), [Stesura di _questo_ verbale], p.bettin,
  (g.docs, 313), [Organizzazione dei colloqui con il #p.cardin e l'azienda proponente], p.vedovato,
  (g.docs, 314), [`Piano di Qualifica`: stesura della sezione riguardante i test di integrazione], p.furno,
  (g.docs, 315), [`Piano di Qualifica`: stesura della sezione riguardante i test di unità], p.fabbian,
))