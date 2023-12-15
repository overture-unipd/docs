#import "//templates/document.typ": *

#show: project.with(
  title: "Verbale interno del 2023-12-13",
  managers: p.bettin,
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "1.0", "2023-12-15", p.bulychov, p.bonavigo, "Finalizzazione del verbale",
    "0.1", "2023-12-13", p.bulychov, p.bonavigo, "Prima bozza con riassunto incontro",
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione
- *Luogo*: Chiamata Discord;
- *Ora di inizio*: 16:00;
- *Ora di fine*: 17:00;
- *Partecipanti*: #p.amadori, #p.bettin, #p.bonavigo, #p.bulychov, #p.fabbian, #p.furno, #p.vedovato.

== Ordine del giorno
- Terminazione delle `Norme di Progetto` per RTB;
- Terminazione dell' `Analisi dei Requisiti` per RTB;
- Terminazione del `Glossario` per RTB;
- Pianficazione incontro con #p.zextras per la presentazione del PoC sviluppato.

= Sintesi dell'incontro
Durante l'incontro si sono affrontati in primo luogo i temi chiave relativi a ciò che era necessario compiere per ritenere le `Norme di Progetto` come pienamente adempiute per l'RTB, identificando eventuali sezioni che dovevano essere migliorate.  \
In seguito si è brevemente discusso dell'`Analisi dei Requisiti`, la quale attualmente è considerata stabile, ma si ritiene opportuna un'ulteriore revisione collettiva da parte degli Analisti. \
Inoltre è stato deciso di avere un ulteriore incremento dei termini all'interno del `Glossario`. \
Infine sono state individuate le ultime attività per andare a completare il PoC da presentare alla prima revisione, decidendo di pianificare un incontro con #p.zextras per un feedback su quest'ultimo.

= Decisioni prese
- Sistemare le sezioni identificate nell'incontro all'interno delle `Norme di Progetto`;
- Ricontrollare l' `Analisi dei Requisiti`;
- Aggiungere gli ultimi termini nel `Glossario`.


= Attività individuate
#tasks((
  (g.docs, 143), [Stesura di _questo_ verbale], p.bulychov,
  (g.docs, 144), [Stesura del diario di bordo del 2023-12-18], p.bettin,
  (g.docs, 145), [`Norme di Progetto`: Completare la stesura del processo primario "Sviluppo"], p.bulychov,
  (g.docs, 146), [`Norme di Progetto`: Perfezionare la descrizione dei processi di supporto "Verifica" e "Validazione"], p.bulychov,
  (g.docs, 147), [`Norme di Progetto`: Aggiornare le sezioni 'Metriche di qualitá del processo' e 'Metriche di qualitá del prodotto'], p.bettin,
  (g.docs, 148), [`Glossario`: incremento del vocabolario], p.bonavigo,
  (g.docs, 149), [`Analisi dei Requisiti`: revisione collettiva], (p.vedovato, p.amadori, p.bonavigo, p.fabbian),
  (g.jmap, 17), [Supporto di invio tra server differenti all'interno della rete locale], p.amadori,
  (g.jmap, 18), [Configurare l'avvio di più server all'interno della rete con Docker], p.bettin,
  (g.jmap, 19), [Configurazione e testing con un client JMAP], p.vedovato,
  (g.jmap, 20), [Scrittura di ulteriori test di unità], p.furno,
))