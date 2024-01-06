#import "//templates/document.typ": *

#show: project.with(
  title: "Verbale interno del 2023-01-03",
  managers: p.bonavigo,
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "1.0", "2023-01-06", p.fabbian, p.bulychov, "Finalizzazione del verbale",
    "0.1", "2023-01-03", p.fabbian, p.bulychov, "Prima bozza con riassunto incontro",
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione
- *Luogo*: Chiamata Discord;
- *Ora di inizio*: 16:30;
- *Ora di fine*: 17:30;
- *Partecipanti*: #p.bettin, #p.bonavigo, #p.bulychov, #p.fabbian, #p.furno, #p.vedovato.

== Ordine del giorno

- Resoconto generale riguardo lo stato attuale delle attività a seguito del periodo festivo;
- Discussione generale sul lavoro da svolgere nelle prossime settimane;
- Discussione ed organizzazione della rotazione dei ruoli per le prossime settimane;
- Discussione e revisione rigaurdante i casi d'uso.

= Sintesi dell'incontro
In occasione dell'incontro, è stato fatto un dettagliato punto della situazione a seguito del periodo festivo. Quest'ultimo ha comportato un rallentamento nelle attivitá in corso, ma non ha causato gravi problematiche poiché era stato preso in considerazione anticipatamente e ci si é preparati di conseguenza.\
Successivamente, si è tenuta una discussione generale sulla mole di lavoro da affrontare nelle prossime settimane, con la rispettiva suddivisione di incarichi.

Durante l'incontro, uno dei temi affrontati ha riguardato la prossima fase di rotazione dei ruoli. Abbiamo dedicato tempo alla discussione e all'organizzazione di quest'ultima, tuttavia, alcune incertezze sono emerse in quanto non disponiamo ancora della data precisa per l'apertura della finestra dell'RTB.

In seguito alla revisione dei casi d'uso, il tema centrale é stato quello riguardante le implementazioni facoltative. In particolare, si è deciso che la componente di sincronizzazione verrá mantenuta ed approfondita, mentre é stata proposta l'eliminazione dei casi d'uso degli aspetti opzionali relativi a calendari, appuntamenti, rubriche e contatti.\
Tale scelta è motivata da considerazioni di efficienza e concentrazione sulle funzionalità essenziali, proprio poiché al momento queste funzionalitá facoltative non sono in programma di essere implementate, e la stesura dei relativi casi d'uso non contribuirebbe al valore complessivo del progetto.


= Decisioni prese
- Prima pianificazione ed assegnazione dei ruoli per il prossimo periodo, le quali saranno da rivedere in base alla data d'apertura della finestra per l'RTB;
- Rimozione di tutto ciò che riguarda contatti, rubriche, calendari ed appuntamenti dall'`Analisi dei Requisiti` dato che, dopo uno studio più approfondito, si è capito che il lavoro necessario per l'implementazione di queste parti è molto più complesso di quanto inizialmente preventivato. Dunque, essendo requisiti opzionali, si è scelto di abbandonare completamente questi aspetti del progetto e di concentrarsi maggiormente su altri più importanti;

= Attività individuate
#tasks((
  (g.docs, 179), [Stesura di _questo_ verbale], p.fabbian,
  (g.docs, 180), [`Analisi dei Requisiti`: rimozione di tutto ciò che riguarda contatti, rubriche, calendari ed appuntamenti], (p.furno, p.vedovato, p.bonavigo),
  (g.jmap, 28), [Test di integrazione rimanenti], (p.bulychov, p.vedovato, p.furno),
))