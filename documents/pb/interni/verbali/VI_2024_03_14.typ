#import "//templates/document.typ": *

#show: project.with(
  title: "Verbale interno del 2024-03-14",
  managers: p.bulychov,
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "1.0", "2024-03-14", p.bonavigo, p.vedovato, "Stesura del verbale",
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione
- *Luogo*: Chiamata Discord;
- *Ora di inizio*: 15:30;
- *Ora di fine*: 16:15;
- *Partecipanti*: #p.amadori, #p.bettin, #p.bonavigo, #p.bulychov, #p.fabbian, #p.furno, #p.vedovato.

== Ordine del giorno
- Verificare lo stato di avanzamento dei lavori;
- Discutere sulla necessità di una GitHub Action per il calcolo della copertura del codice.

= Sintesi dell'incontro
Nel breve incontro odierno tra i membri del team abbiamo inizialmente analizzato lo stato di avanzamento dei lavori, assicurandoci che tutto proceda secondo la pianificazione stabilita. È emerso che l'intera fase di progettazione è stata completata come previsto ed il prodotto software dovrebbe essere terminato entro la metà della prossima settimana, compresi i test per valutarne la correttezza e le prestazioni. Anche per quanto riguarda la documentazione stiamo procedendo senza intoppi e abbiamo identificato una nuova attività relativa all'aggiornamento dello stato dei requisiti funzionali nella tabella finale della `Specifica Tecnica`.

Siamo poi passati a discutere la necessità di implementare una GitHub Action per calcolare la copertura del codice derivante dai test. Finora infatti ci siamo affidati a Jacoco, uno strumento che consente di generare report sulla copertura del codice nei progetti Java. Tuttavia, abbiamo ritenuto essenziale integrare questa verifica direttamente nel flusso di lavoro su GitHub. In questo modo, garantiremo un controllo continuo della copertura del codice, consentendo al team di rilevare tempestivamente eventuali lacune e di adottare le misure necessarie per mantenerla ad un livello ottimale. L'implementazione di questa GitHub Action ci permetterà di automatizzare il processo di calcolo della copertura del codice, migliorando l'efficienza complessiva del nostro processo di sviluppo e garantendo una maggiore qualità del software.

Infine abbiamo discusso i punti da includere nel diario di bordo settimanale.

= Decisioni prese
- Aggiornare lo stato dei requisiti funzionali nella `Specifica Tecnica`;
- Implementare una GitHub Action per calcolare la copertura del codice.

= Attività individuate
#tasks((
  (g.docs, 362), [Stesura di _questo_ verbale], p.bonavigo,
  (g.docs, 363), [`Specifica Tecnica`: aggiornamento della sezione "Stato dei requisiti funzionali"], p.vedovato,
  (g.jmap, 58), [Implementazione di una GitHub Action per il calcolo della copertura del codice], p.fabbian,
))
