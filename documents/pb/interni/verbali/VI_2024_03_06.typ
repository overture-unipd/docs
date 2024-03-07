#import "//templates/document.typ": *

#show: project.with(
  title: "Verbale interno del 2024-03-06",
  managers: p.bonavigo,
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "1.0", "2024-03-07", p.fabbian, p.vedovato, "Stesura del verbale",
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione
- *Luogo*: Chiamata Discord;
- *Ora di inizio*: 14:00;
- *Ora di fine*: 15:00;
- *Partecipanti*: #p.amadori, #p.bettin, #p.bonavigo, #p.bulychov, #p.fabbian, #p.furno, #p.vedovato.

== Ordine del giorno
- Aggiornamento sullo stato del progetto (documentazione e codifica);
- Programmazione delle attività future e assegnazione dei compiti;
- Discussione sulla risoluzione delle problematiche evidenziate precedentemente riguardanti il design del prodotto.

= Sintesi dell'incontro
La riunione ha preso avvio con un aggiornamento fornito dai vari membri del team sullo stato di avanzamento delle attività. Si è constatato che il documento di `Specifica Tecnica` è quasi completo, ma necessita di alcuni aggiornamenti per riflettere le recenti modifiche al design del prodotto e per migliorare alcune sezioni. Inoltre, il lavoro sulla codifica del software è progredito significativamente e ci aspettiamo di completarlo entro la fine del periodo attuale, rispettando così la data di scadenza del progetto comunicata durante la revisione RTB. I test sono stati definiti, con una piccola parte di essi già implementata, e ci concentriamo ora sullo sviluppo dei test rimanenti.

Successivamente, abbiamo delineato le altre attività necessarie per avvicinarci alla conclusione del progetto. È prioritario riprendere la stesura del `Manuale Utente`, includendo le sezioni mancanti che spieghino l'uso di Postman e l'esecuzione degli stress test che verranno implementati. È altresì fondamentale concludere la progettazione al più presto per agevolare la codifica della soluzione e lo sviluppo dei test.

Infine, abbiamo discusso delle soluzioni proposte dai Progettisti per risolvere le problematiche evidenziate nel precedente incontro, approvando quella che secondo tutto il team rappresentava la soluzione ottimale.


= Decisioni prese
- Durante questo periodo, i membri del gruppo assumeranno diversi ruoli in quanto ci sono molte attività da svolgere di tipo differente;
- Riprendere la stesura del `Manuale Utente`, considerando che il prodotto finale sta iniziando a prendere forma;
- Completare la stesura della `Specifica Tecnica` entro la prossima settimana;
- Continuare la codifica della soluzione e sviluppare i test relativi.

#pagebreak()

= Attività individuate
#tasks((
  (g.docs, 329), [Stesura di _questo_ verbale], p.fabbian,
  (g.docs, 330), [`Piano di Progetto`: consuntivo, retrospettiva e avanzamento raggiunto del periodo precedente], p.furno,
  (g.docs, 331), [`Piano di Progetto`: pianificazione e preventivo del periodo corrente], p.vedovato,
  (g.docs, 332), [`Piano di Qualifica`: aggiornamento della sezione "Cruscotto di valutazione della qualità"], p.bonavigo,
  (g.docs, 333), [`Specifica Tecnica`: stesura della sezione riguardante il design pattern Adapter], p.bulychov, 
  (g.docs, 334), [`Specifica Tecnica`: miglioramento della sezione "Architettura logica"], p.furno, 
  (g.docs, 335), [`Specifica Tecnica`: miglioramento della sezione "Diagramma delle classi"], p.vedovato, 
  (g.docs, 336), [`Specifica Tecnica`: miglioramento della sezione "Tecnologie"], p.amadori, 
  (g.docs, 337), [`Specifica Tecnica`: miglioramento della sezione "Database"], p.bettin, 
  (g.docs, 338), [`Manuale Utente`: stesura della sezione "Supporto tecnico"], p.bettin, 
  (g.docs, 339), [`Manuale Utente`: stesura della sezione "Avvio degli stress test"], p.bulychov, 
  
  (g.jmap, 52), [Codifica dei test di unità rimanenti], (p.furno, p.bettin),
  (g.jmap, 53), [Codifica dei test di integrazione (parte di Minio)], (p.bulychov),
  (g.jmap, 54), [Codifica dei test di integrazione (parte di RethinkDB)], (p.bonavigo, p.fabbian),
  (g.jmap, 55), [Conclusione sviluppo della business logic], (p.bonavigo, p.furno, p.fabbian, p.bettin),
  (g.jmap, 56), [Sviluppo dei test di carico con #link("https://locust.io/")[Locust]], p.bulychov,          
))