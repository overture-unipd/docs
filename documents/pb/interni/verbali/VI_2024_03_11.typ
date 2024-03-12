#import "//templates/document.typ": *

#show: project.with(
  title: "Verbale interno del 2024-03-11",
  managers: p.bettin,
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "1.0", "2024-03-12", p.bulychov, p.furno, "Stesura finale del verbale",
    "0.1", "2024-03-11", p.bulychov, p.furno, "Prima bozza del verbale"
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione
- *Luogo*: Chiamata Discord;
- *Ora di inizio*: 15:00;
- *Ora di fine*: 15:40;
- *Partecipanti*: #p.amadori, #p.bettin, #p.bonavigo, #p.bulychov, #p.fabbian, #p.furno, #p.vedovato.

== Ordine del giorno
- Discussione sull'importanza dei test di regressione;
- Individuazione delle attività rimanenti da svolgere sul `Manuale Utente` e sulla `Specifica Tecnica`;
- Approvazione dei primi documenti per la revisione PB.

= Sintesi dell'incontro
Durante la riunione abbiamo inizialmente esaminato l'importanza dei test di regressione nel processo di sviluppo del software. È emerso che questi test sono stati estremamente utili negli ultimi giorni in cui sono stati eseguiti dei cambiamenti importanti nel codice. Abbiamo concordato sul fatto che i test di regressione siano fondamentali per garantire che le modifiche apportate al software non abbiano effetti indesiderati sulle funzionalità esistenti. Tuttavia, abbiamo notato che fino ad ora non è stata dedicata una sezione specifica a questi test nel `Piano di Qualifica`; pertanto, abbiamo deciso di rimediare. 

Subito dopo siamo passati ad identificare le attività rimanenti da svolgere sul `Manuale Utente`. Negli ultimi giorni in esso è stata aggiunta una sezione che spiega come avviare i test di carico richiesti dall'azienda, tuttavia non è ancora presente una sezione che spieghi come utilizzare Postman per dimostrare la correttezza del nostro prodotto e le funzionalità che esso espone. Questo è dovuto al fatto che molti dei test di sistema dovevano ancora essere sviluppati, ma poiché prevediamo di farlo nei prossimi giorni, intendiamo ora aggiungere anche questa sezione all'interno del `Manuale Utente`.

Per quanto riguarda invece la `Specifica Tecnica`, abbiamo già individuato ed avviato tutte le attività mancanti essenziali ad essa correlate in passato. Tuttavia, in seguito ad un dibattito sulla sua pertinenza, abbiamo deciso di integrare una nuova sezione che includa l'elenco degli endpoint esposti dal prodotto.

Infine abbiamo trattato lo stato dei documenti `Glossario`, `Norme di Progetto` ed `Analisi dei Requisiti`. Questi documenti non prevedono modifiche in questo periodo, tranne la loro approvazione per la revisione PB, tuttavia abbiamo deciso di aggiungere ancora altri termini al `Glossario`, mentre per quanto riguarda gli altri due, questi sono ritenuti completi e pronti ad essere approvati.


= Decisioni prese
- Aggiornare il `Piano di Qualifica` con una nuova sezione riguardante i test di regressione;
- Inserire nel `Manuale Utente` una sezione che spieghi come utilizzare Postman;
- Integrare nella `Specifica Tecnica` una sezione contenente la lista di endpoint esposti dal prodotto;
- Inserire gli ultimi termini necessari all'interno del `Glossario`;
- Approvare per la revisione PB i documenti `Norme di Progetto` ed `Analisi dei Requisiti`. 

#pagebreak()

= Attività individuate
#tasks((
  (g.docs, 349), [Stesura di _questo_ verbale], p.bulychov,
  (g.docs, 350), [`Piano di Qualifica`: stesura della sezione riguardante i test di regressione], p.bonavigo,
  (g.docs, 351), [`Manuale Utente`: stesura della sezione "Guida all'uso di Postman"], p.furno,
  (g.docs, 352), [`Specifica Tecnica`: stesura della sezione "API"], p.amadori,
  (g.docs, 353), [`Glossario`: inserimento degli ultimi termini necessari], p.bettin,
  (g.docs, 354), [Approvare il documento `Norme di Progetto` per la PB], p.fabbian,
  (g.docs, 355), [Approvare il documento `Analisi dei Requisiti` per la PB], p.vedovato,
  
  (g.jmap, 57), [Sviluppo dei test di sistema con #link("https://www.postman.com/")[Postman]], p.bettin,
))