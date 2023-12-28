#import "//templates/document.typ": *

#show: project.with(
  title: "Verbale interno del 2023-12-21",
  managers: p.bonavigo,
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "1.0", "2023-12-27", p.fabbian, p.bulychov, "Finalizzazione del verbale",
    "0.1", "2023-12-21", p.fabbian, p.bulychov, "Prima bozza con riassunto incontro",
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione
- *Luogo*: Chiamata Discord;
- *Ora di inizio*: 17:00;
- *Ora di fine*: 18:30;
- *Partecipanti*: #p.bettin, #p.bonavigo, #p.bulychov, #p.fabbian, #p.furno, #p.vedovato.

== Ordine del giorno
- Discussione rapida sull'incontro avvenuto con _(#p.zextras)_;
- Discussione su modifiche e migliorie da apportare al PoC;
- Risoluzione dei problemi riguardanti la rotazione dei ruoli;
- Discussione generale sul lavoro da svolgere nelle prossime settimane.

= Sintesi dell'incontro
L'incontro ha avuto inizio con una rapida discussione riguardante l'incontro avvenuto con _(#p.zextras)_ in data 2023-12-18, dedicato all'avere un riscontro sullo stato del PoC. È stato poi deciso di ignorare (almeno temporaneamente) la gestione dello scambio mail tra server distinti (nessun metodo standard senza SMTP) e di passare da test di unità a test di integrazione dove sensato.\
Infatti, quasi ogni "metodo di JMAP" prevede l'interazione con il database, che richiede test di integrazione. Testando le funzioni di alto livello (del dispatcher delle richieste), vengono testate implicitamente anche quelle di basso livello.

Abbiamo poi discusso ampiamente l'assegnazione dei ruoli, il monte ore per persona, e la suddivisione delle attività da svolgere. Ci è risultato difficile fare una pianificazione precisa, a causa degli impegni personali previsti nel periodo natalizio.

Infine, il gruppo ha stimato che il PoC e l'`Analisi dei Requisiti` verranno portati ad uno stato accettabile entro la fine del periodo corrente. Quindi nelle prossime due settimane chiederemo un incontro con il #p.cardin per chiarire gli ultimi dubbi su `AdR` e PoC, prima della candidatura per l'RTB.

= Decisioni prese
- PoC: pausa della gestione dello scambio mail tra istanze del server, test di integrazione (al posto di quelli di unità);
- Suddivisione delle attività rimanenti;
- Migliorare il PoC e l'`Analisi dei Requisiti` così da poter organizzare un incontro con il #p.cardin;
- Assegnazione dei ruoli per il periodo;

= Attività individuate
#tasks((
  (g.docs, 164), [Stesura di _questo_ verbale], p.fabbian,
  (g.docs, 162), [Stesura del verbale esterno del 2023-12-18], p.bonavigo,
  (g.docs, 165), [`Piano di Progetto`: Consuntivo del periodo delle due settimane precedenti], p.amadori,
  (g.docs, 166), [`Piano di Progetto`: Pianificazione del periodo corrente], p.amadori,
  (g.docs, 167), [`Piano di Progetto`: Preventivo del periodo corrente], p.amadori,
  (g.docs, 170), [`Piano di Qualifica`: Aggiornamento della sezione 'Metodologie di testing'], p.bonavigo,
  (g.docs, 168), [Aggiungere la lista delle immagini, dei grafici e delle tabelle ai documenti che la necessitano], p.amadori,
  (g.docs, 169), [Aggiungere caption a immagini, grafici e tabelle], p.bonavigo,
  (g.docs, 171), [Aggiungere legenda dei colori agli istogrammi], p.bonavigo,
  (g.docs, 172), [`Analisi dei Requisiti`: revisione e correzione errori], (p.furno, p.vedovato, p.bonavigo),
  (g.docs, 173), [`Analisi dei Requisiti`: controllo della mancanza di eventuali requisiti], (p.furno, p.vedovato, p.bonavigo),
  (g.docs, 174), [`Norme di Progetto`: descrizione della repo `jmap`], p.amadori,

  (g.jmap, 22), [Impostazione e primi test con TestContainers (test di integrazione)], p.fabbian,
  (g.jmap, 23), [Sviluppo del dispatcher: aggiunta e recupero di una mail], (p.vedovato, p.furno, p.fabbian),
  (g.jmap, 24), [Refactoring: separazione oggetti di Spark dal contenuto richieste, record/oggetti al posto di array per configurazioni], p.bettin,
  (g.jmap, 25), [Aggiungere controlli per i possibili casi nelle funzioni del dispatcher], p.bulychov,
  (g.jmap, 26), [Gestione dello stato ("session state") di un account], (p.bettin, p.vedovato, p.fabbian),
  (g.jmap, 27), [Testare a fondo l'integrazione con almeno un client], p.bulychov,
))
