#import "//templates/document.typ": *

#show: project.with(
  title: "Verbale interno del 2023-01-09",
  managers: p.furno,
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "1.0", "2023-01-10", p.bulychov, p.furno, "Finalizzazione del verbale",
    "0.1", "2023-01-09", p.bulychov, p.furno, "Prima bozza con riassunto incontro",
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione
- *Luogo*: Chiamata Discord;
- *Ora di inizio*: 9:15;
- *Ora di fine*: 10:15;
- *Partecipanti*: #p.amadori, #p.bettin, #p.bonavigo, #p.bulychov, #p.fabbian, #p.furno, #p.vedovato.

== Ordine del giorno
- Discussione generale sull'incontro avvenuto con il #p.cardin;
- Discussione ed organizzazione riguardo il prossimo periodo in modo definitivo;
- Organizzazione delle attivitá necessarie per essere pronti per la RTB;
- Discussione sulla necessitá di un incontro con l'azienda #p.zextras.


= Sintesi dell'incontro
Il gruppo si è riunito a seguito dell'incontro con il #p.cardin, il quale puó essere ritenuto complessivamente soddisfacente. La valutazione dell'`Analisi dei Requisiti` ha indicato la sua prontezza senza necessità di modifiche, e tutti i dubbi emersi sono stati risolti. La scelta di escludere i test di integrazione nel Proof of Concept (PoC) è stata basata sulla loro non indispensabilità, indicata dal professore.\
Per quanto riguarda il prossimo periodo, é stato deciso di concentrarsi su un intervallo di una settimana per completare le attività necessarie in vista della RTB, con l'obiettivo di candidarsi immediatamente dopo il suo completamento. In caso di eventuali complicazioni, valuteremo la possibilità di ripianificare la data della RTB in considerazione degli impegni d'esame.\
Le attività per essere pronti alla RTB includono la validazione dei documenti, la revisione degli stili dei documenti, con particolare attenzione alle parole del `Glossario` ed altri dettagli, e, soprattutto, la risoluzione dei problemi emersi durante lo sviluppo del PoC.\
Infine é stato discusso e programmato un incontro con l'azienda #p.zextras, con lo scopo di formalizzare la decisione di non coinvolgere nel prodotto finale i requisiti relativi ai contatti, alle rubriche, ai calendari ed agli appuntamenti.

= Decisioni prese
- L'`Analisi dei Requisiti` (AdR) è considerata pronta e non verranno effettuate ulteriori modifiche su di essa;
- Non verranno piú eseguiti test di integrazione sul PoC per concentrare tutte le risorse sulla realizzazione di un prototipo funzionante;
- Suddivisione delle attivitá per un periodo di una settimana;
- É stato pianificato un incontro con l'azienda #p.zextras nella settimana corrente.


= Attività individuate
#tasks((
  (g.docs, 188), [Stesura di _questo_ verbale], p.bulychov,
  (g.docs, 199), [Stesura del verbale esterno del 2024-01-10], p.furno,
  (g.docs, 189), [`Piano di Progetto`: Consuntivo del periodo delle settimane precedenti], p.bettin,
  (g.docs, 190), [`Piano di Progetto`: Pianificazione del periodo corrente], p.bonavigo,
  (g.docs, 191), [`Piano di Progetto`: Preventivo del periodo corrente], p.bonavigo,
  (g.docs, 192), [`Piano di Qualifica`: Aggiornamento della sezione 'Cruscotto di valutazione della qualità'], p.vedovato,
  (g.docs, 193), [Applicare lo stile speciale alla prima occorrenza delle parole del `Glossario` nei vari documenti], p.fabbian,
  (g.docs, 194), [Validare il `Glossario` per la RTB], p.amadori,
  (g.docs, 195), [Validare le `Norme di Progetto` per la RTB], p.bulychov,
  (g.docs, 196), [Validare l'`Analisi dei Requisiti` per la RTB], p.furno,

  (g.jmap, 30), [Gestione degli update], (p.fabbian, p.vedovato),
  (g.jmap, 31), [Implementazione dei metodi necessari per la gestione dei thread], (p.bettin, p.bulychov),
  (g.jmap, 32), [Implementazione dei metodi necessari per la gestione delle mailbox], (p.bettin, p.fabbian),
  (g.jmap, 33), [Implementazione dei metodi "query" necessari], (p.vedovato, p.bulychov),
))