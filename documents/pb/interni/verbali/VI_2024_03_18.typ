#import "//templates/document.typ": *

#show: project.with(
  title: "Verbale interno del 2024-03-18",
  managers: p.fabbian,
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "1.0", "2024-03-18", p.furno, p.fabbian, "Stesura del verbale",
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione
- *Luogo*: Chiamata Discord;
- *Ora di inizio*: 14:30;
- *Ora di fine*: 15:00;
- *Partecipanti*: #p.amadori, #p.bettin, #p.bonavigo, #p.bulychov, #p.fabbian, #p.furno, #p.vedovato.

== Ordine del giorno
- Pianificare un incontro con l'azienda proponente per presentare il prodotto finito.

= Sintesi dell'incontro
Il primo punto affrontato durante la riunione è stato l'avanzamento raggiunto nelle attività precedentemente avviate. Dopo aver completato definitivamente la fase di progettazione a metà della settimana scorsa, ci siamo potuti concentrare sulla terminazione della codifica e sull'implementazione dei vari test rimanenti, arrivando oramai al completamento anche di queste attività. Proprio per questo motivo ci siamo organizzati per programmare un incontro con l'azienda proponente in cui presentare il prodotto finito, in modo che quest'ultimo possa essere valutato come MVP (minimum viable product) oppure che ci venga fornito un feedback per eventuali miglioramenti.

Successivamente abbiamo rivolto un rapido sguardo allo stato della documentazione, ritenendo il `Glossario` ormai maturo e pronto per essere approvato, così come anche la `Specifica Tecnica` ed il `Manuale Utente` una volta che saranno sistemati gli ultimi dettagli. Gli unici documenti che ancora non possono essere approvati sono il `Piano di Qualifica`, per il quale tra l'altro è stata individuata un'ulteriore attività rigurdante l'aggiornamento dello stato dei test contenuti al suo interno, ed il `Piano di Progetto`. Questi due documenti infatti dovranno essere aggiornati come di consueto a fine periodo e solo in seguito potranno anche essere approvati.

= Decisioni prese
- Fissare un colloquio con l'azienda proponente #p.zextras verso fine settimana;
- Dopo aver perfezionato gli ultimi aspetti, approvare per la revisione PB i documenti `Glossario`, `Specifica Tecnica` e `Manuale Utente`;
- Aggiornare lo stato dei test nel `Piano di Qualifica`.

#pagebreak()

= Attività individuate
#tasks((
  (g.docs, 370), [Stesura di _questo_ verbale], p.furno,
  (g.docs, 371), [Organizzazione del colloquio con l'azienda proponente], p.fabbian,
  (g.docs, 372), [`Piano di Qualifica`: Aggiornamento dello stato dei test nella sezione 'Metodologie di testing'], p.vedovato,
  (g.docs, 373), [Approvare il documento `Glossario` per la PB], p.bulychov,
  (g.docs, 374), [Approvare il documento `Specifica Tecnica` per la PB], p.bonavigo,
  (g.docs, 375), [Approvare il documento `Manuale Utente` per la PB], p.bettin
))