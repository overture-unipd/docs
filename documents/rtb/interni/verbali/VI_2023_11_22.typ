#import "//templates/document.typ": *

#show: project.with(
  title: "Verbale interno del 2023-11-22",
  managers: p.fabbian,
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "1.1", "2023-11-23", p.fabbian, p.vedovato, "Correzione alla tabella delle attività individuate",
    "1.0", "2023-11-23", p.fabbian, p.vedovato, "Finalizzazione del verbale",
    "0.1", "2023-11-22", p.fabbian, p.vedovato, "Prima bozza con riassunto incontro",
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione
- *Luogo*: Chiamata Discord;
- *Ora di inizio*: 16:00;
- *Ora di fine*: 17:30;
- *Partecipanti*: #p.amadori, #p.bettin, #p.bonavigo, #p.bulychov, #p.fabbian, #p.furno, #p.vedovato.

== Ordine del giorno
- Valutazione `Analisi dei Requisiti`;
- Analisi e valutazione delle librerie identificate;
- Analisi e valutazione del linguaggio di programmazione da utilizzare;
- Valutazione Piano di Progetto.

= Sintesi dell'incontro
L'incontro è iniziato con una discussione sugli Use Case e requisiti indivuati. Abbiamo subito capito di aver fatto progressi sostanziali sull'analisi del capitolato. È stato quindi proposto di proseguire con la formalizzazione di essi, e rilanciato un ulteriore confronto al prossimo incontro.\
Dopo un'analisi approssimativa delle librerie disponibili, e lo studio approfondito della #link("https://github.com/iNPUTmice/jmap")[libreria proposta da _(#p.zextras)_] (scritta in Java), abbiamo deciso di adottare quest'ultima. Considerata l'estrema interoperabilità tra linguaggi che funzionano sulla JVM, abbiamo deciso di utilizzare Scala. Prevediamo che l'espressività di questo linguaggio ci permetta di ridurre misuabilmente i tempi di sviluppo, rispetto all'utilizzo di Java. Opteremo per un approcio principalmente orientato agli oggetti (OOP), consentendo un basso barrier-to-entry per i componenti che non lo conoscono ed una facile applicazione dei pattern spiegati a lezione dal #p.cardin.\
Il gruppo ha concordemente espresso la necessità di organizzare un ulteriore incontro con il proponente, al fine di approfondire specifici aspetti del progetto. Di conseguenza, è stata presa la decisione di programmare un appuntamento nella settimana compresa tra il 26 novembre 2023 e il 30 novembre 2023.\
L'ultimo punto affrontato riguradava lo stato del documento Piano di Progetto. Anche in questo caso, il gruppo si è dichiarato soddisfatto del documento ed ha individuato le prossime attività da intraprendere. 

= Decisioni prese
- Possibilità da parte di ogni componente del gruppo di ricoprire più ruoli contemporaneamente;
- Decisione di utilizzare la libreria proposta da _#(p.zextras)_;
- Decisione di utilizzare Scala come linguaggio di programmazione.

= Attività individuate

#tasks((
  (g.docs, 71), [Stesura di _questo_ verbale], p.fabbian,
  (g.docs, 73), [`Analisi dei Requisiti`: continuazione Use Case], p.bettin,
  (g.docs, 72), [`Glossario`: arricchimento del dizionario], p.amadori,
  (g.docs, 74), [`Norme di Progetto`: standard di qualità], p.bulychov,
  (g.docs, 75), [`Norme di Progetto`: metriche di qualità], p.bulychov,
  (g.docs, 78), [`Piano di Progetto`: Consuntivo del periodo riguardante le due settimane precedenti], p.furno,
  (g.docs, 80), [`Piano di Progetto`: Dichiarare il modello di sviluppo], p.vedovato,
  (g.docs, 79), [`Piano di Progetto`: Pianificazione del periodo corrente], p.fabbian,
  (g.docs, 76), [`Piano di Progetto`: Pianificazione del periodo riguardante le due settimane precedenti], p.vedovato,
  (g.docs, 77), [`Piano di Progetto`: Preventivo del periodo riguardante le due settimane precedenti], p.furno,
  (g.docs, 81), [`jmap`: struttura base repo], (p.bettin, p.bonavigo),
))