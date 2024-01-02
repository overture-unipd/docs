#import "//templates/document.typ": *

#show: project.with(
  title: "Piano di Qualifica",
  managers: p.vedovato,
  recipients: (
    p.vardanega,
    p.cardin,
    [_#(p.zextras)_],
  ),
  changelog: (
    "0.1.0", "2023-12-20", p.amadori, p.bulychov, "Stesura della sezione 'Iniziative di automiglioramento per la qualità'",
    "0.0.5", "2023-12-20", p.amadori, p.furno, "Stesura della sezione 'Cruscotto di valutazione della qualità'",
    "0.0.4", "2023-12-20", p.amadori, p.furno, "Stesura della sezione 'Metodologie di testing'",
    "0.0.3", "2023-12-19", p.bettin, p.fabbian, "Stesura della sezione 'Qualità di prodotto' in 'Obiettivi metrici di qualità'",
    "0.0.2", "2023-12-19", p.bettin, p.fabbian, "Stesura della sezione 'Qualità di processo' in 'Obiettivi metrici di qualità'",
    "0.0.1", "2023-11-15", p.bulychov, p.amadori, "Struttura di base ed introduzione",
  ),
  show_images_list: true,
  show_tables_list: true,
)

\

= *Introduzione*
== Scopo del documento
Questo documento presenta le strategie di verifica e validazione implementate per garantire la qualità del prodotto e dei processi coinvolti nel progetto in questione. Data la natura evolutiva del documento, i contenuti saranno ampliati e modificati nel corso del tempo.\
Saranno inoltre riportati i risultati delle verifiche effettuate sul prodotto, con l'obiettivo di correggere tempestivamente eventuali problematiche riscontrate.

== Scopo del prodotto
Il prodotto mira principalmente a consentire all'azienda proponente di valutare se sia conveniente dedicare tempo e risorse all'integrazione del protocollo JMAP nel loro prodotto principale chiamato Carbonio, una soluzione di collaborazione online centrata sulla gestione delle email. Infatti JMAP é un protocollo di comunicazione progettato per semplificare l'interazione tra client e server nelle applicazioni di posta elettronica.\
Al momento, Carbonio utilizza protocolli standard come IMAP, POP e Exchange Active Sync, perció l'implementazione di JMAP potrebbe potenzialmente garantire maggiori funzionalità ed efficienza a un costo più contenuto.

== Glossario
Per evitare ambiguitá o incomprensioni riguardanti la terminologia usata nel documento, é stato deciso di adottare un glossario in cui vengono riportate le varie definizioni. In questa maniera in esso verranno riportati tutti i termini specifici del dominio d'uso con relativi significati.
\
La presenza di un termine all'interno del `Glossario` viene indicata applicando #glossary("questo stile").

== Riferimenti
=== Riferimenti normativi
- `Norme di Progetto`
- *Capitolato d'appalto C8*: JMAP, il nuovo protocollo standard per la comunicazione email \
  https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C8.pdf

=== Riferimenti informativi
- *ISO/IEC 9126* \
  https://en.wikipedia.org/wiki/ISO/IEC_9126
- *ISO/IEC 12207* \
  https://www.math.unipd.it/~tullio/IS-1/2009/Approfondimenti/ISO_12207-1995.pdf

#pagebreak()
  
= Obiettivi metrici di qualità
Ogni processo viene valutato mediante l'applicazione di metriche specifiche, le cui definizioni sono dettagliate nelle `Norme di Progetto`. Questa sezione delinea i criteri che le metriche devono rispettare per essere valutate come accettabili o eccellenti.

== Qualità di processo 
La qualità di processo è esigenza primaria nello sviluppo software, difatti per poter avere un prodotto finale di qualità è necessario trovare alla base un'applicazione rigorosa di best practice ben definite che ci permettano di svolgere nel miglior modo possibile l'insieme delle attività da effettuare. \

=== Processi primari

==== Fornitura
#metrics((
  [MPC01],
  [Earned value (EV)],
  [≥ 0],
  [≤ EAC],
  [MPC02],
  [Planned value (PV)],
  [≥ 0],
  [≤ Budget At Completion (BAC)],
  [MPC03],
  [Actual cost (AC)],
  [≥ 0],
  [≤ EAC],
  [MPC04],
  [Cost variance (CV)],
  [≥ -7.5%],
  [≥ 0%],
  [MPC05],
  [Schedule variance (SV)],
  [≥ -7.5%],
  [≥ 0%],
  [MPC06],
  [Estimated at completion (EAC)],
  [Errore del ± 3% rispetto al BAC],
  [Esattamente pari al BAC],
  [MPC07],
  [Estimate to complete (ETC)],
  [≥ 0],
  [≤ EAC],
))

==== Sviluppo
#metrics((
  [MPC08],
  [Requirements stability index (RSI)],
  [≥ 75%],
  [100%],
  [MPC09],
  [Structural Fan-In (SFIN)],
  [-],
  [Va massimizzato],
  [MPC10],
  [Structural Fan-Out (SFOUT)],
  [-],
  [Va minizzato],
))

=== Processi di supporto

==== Documentazione
#metrics((
  [MPC11],
  [Indice Gulpease],
  [≥ 60%],
  [≥ 80%],
  [MPC12],
  [Correttezza ortografica],
  [0 errori],
  [0 errori]
))

==== Verifica
#metrics((
  [MPC13],
  [Code coverage],
  [≥ 80%],
  [100%],
  [MPC14],
  [Passed test cases percentage],
  [100%],
  [100%]
))

==== Gestione della qualitá
#metrics((
  [MPC15],
  [Quality metrics satisfied],
  [≥ 85%],
  [100%]
))

=== Processi organizzativi

==== Gestione dei processi
#metrics((
  [MPC16],
  [Non-calculated risk],
  [≤ 3],
  [0],
  [MPC17],
  [Efficienza temporale],
  [≤ 3],
  [≤ 1]
))

== Qualità di prodotto
La qualità di prodotto si riferisce all'insieme delle caratteristiche di un'entità risultante dallo sviluppo software, che ne determinano la capacità di soddisfare esigenze sia esplicite che implicite. In altre parole, essa è la misura in cui un prodotto risponde alle aspettative del cliente o agli standard prestabiliti.

=== Funzionalitá
#metrics((
  [MPD01],
  [Copertura dei requisiti obbligatori],
  [100%],
  [100%],
  [MPD02],
  [Copertura dei requisiti desiderabili],
  [≥ 50%],
  [100%],
  [MPD03],
  [Copertura dei requisiti opzionali],
  [≥ 0%],
  [≥ 50%],
))

=== Affidabilitá
#metrics((
  [MPD04],
  [Code coverage],
  [≥ 80%],
  [100%],
  [MPD05],
  [Branch coverage],
  [≥ 50%],
  [≥ 80%],
  [MPD06],
  [Statement coverage],
  [≥ 60%],
  [≥ 80%],
  [MPD07],
  [Failure density],
  [100%],
  [100%]
))

=== Usabilitá
#metrics((
  [MPD08],
  [Facilitá di utilizzo],
  [≤ 3 errori commessi nell'interazione],
  [0 errori commessi nell'interazione],
  [MPD09],
  [Tempo di apprendimento],
  [≤ 15 minuti],
  [≤ 5 minuti]
))

=== Efficienza
#metrics((
  [MPD10],
  [Utilizzo risorse],
  [≥ 75%],
  [100%]
))

=== Manutenibilitá
#metrics((
  [MPD11],
  [Complessità ciclomatica],
  [1-10],
  [11-20],
  [MPD12],
  [Code smell],
  [0],
  [0],
  [MPD13],
  [Coefficient of Coupling (COC)],
  [≤ 30%],
  [≤ 10%]
))

#pagebreak()

= Metodologie di testing
In questa sezione vengono elencati i test eseguiti sul prodotto, necessari per dimostrare che i vincoli individuati all'interno del documento `Analisi dei Requisiti` siano soddisfatti.\ Come anticipato all'interno delle `Norme di Progetto`, i test si dividono in:
- *Test di unità*: definiti sulle unità software autonome più piccole, sono implementati principalmente durante la progettazione;
- *Test di integrazione*: successivi ai test di unità, servono a verificare la corretta integrazione tra le diverse unità software;
- *Test di sistema*: garantiscono il corretto funzionamento del sistema. In particolare, verificano che tutti i requisiti individuati funzionino;
- *Test di accettazione*: alla presenza del committente, servono a verificare che il prodotto finale soddisfi tutti i requisiti.
Per la prima revisione del prodotto (RTB) vengono inseriti esclusivamente i test di *unità* implementati e verificati per il Proof of Concept (PoC).

== Codice dei test
Ogni test è associato ad un codice univoco definito nel seguente formato:
#set align(center)
*T[Tipologia]-[Numero]*
#set align(left) 
Dove *Tipologia* indica la tipologia del test:
- *U*: di unità;
- *I*: di integrazione;
- *S*: di sistema;
- *A*: di accettazione.
Ogni test ha uno *Stato*, che puo essere:
- *V*: verificato. Il test ha esito positivo;
- *E*: non verificato. Il test ha esito negativo;
- *NI*: non implementato.

== Test di unità
Sono stati utilizzati i framework di unit testing *JUnit* e *Mockito*.
#test(
  (
    "TU-1","Verificare che l'oggetto mail venga inserito correttamente nel database", "V",
    "TU-2","Verificare che l'oggetto mail inviato dal database venga ricevuto correttamente", "V",
  )
)

#pagebreak()

= Cruscotto di valutazione della qualità

== MPC06 - Estimated at Completion (EAC)
#figure(image("//imgs/PdQ_graphs/EAC.png", width: 100%))

#pagebreak()

== MPC01 - Earned Value (EV) e MPC02 - Planned Value (PV)
#figure(image("//imgs/PdQ_graphs/EV_PV.png", width: 100%))

#pagebreak()

== MPC03 - Actual Cost (AC) e MPC07 - Estimate to Complete (ETC)
#figure(image("//imgs/PdQ_graphs/AC_ETC.png", width: 100%))

#pagebreak()

== MPC04 - Cost Variance (CV) e MPC05 - Schedule Variance (SV)
#figure(image("//imgs/PdQ_graphs/CV_SV.png", width: 100%))

#pagebreak()

== MPC08 - Requirements stability index (RSI)
#figure(image("//imgs/PdQ_graphs/RSI.png", width: 100%))

#pagebreak()


== MPC11 - Indice Gulpease
#figure(image("//imgs/PdQ_graphs/Gulpease.png", width: 100%))

#pagebreak()

== MPC12 - Correttezza Ortografica
#figure(image("//imgs/PdQ_graphs/CorrOrt.png", width: 100%))

#pagebreak()

== MPC13 - Code Coverage
#figure(image("//imgs/PdQ_graphs/CodeCov.png", width: 100%))

#pagebreak()

== MPC14 - Passed Test Cases Percentage
#figure(image("//imgs/PdQ_graphs/PassedTest.png", width: 100%))

#pagebreak()

== MPC15 - Quality Metrics Satisfied
#figure(image("//imgs/PdQ_graphs/QaulityMetSat.png", width: 100%))
#pagebreak()

== MPC16 - Non-Calculated Risk
#figure(image("//imgs/PdQ_graphs/NonCalcRisk.png", width: 100%))

#pagebreak()

== MPC17 - Efficienza Temporale
#figure(image("//imgs/PdQ_graphs/EffTemp.png", width: 100%))

#pagebreak()

= Iniziative di automiglioramento per la qualità

== Introduzione
Un team di progetto è in grado di completare i compiti in modo efficiente a mantenendo un grado elevato di qualità, riducendo i costi e aumentando i profitti solo se mette la produttività in cima alla scala dei valori.\
Di seguito infatti ci dedichiamo al tema del miglioramento della produttività dei processi coinvolti nella realizzazione del prodotto richiesto dal Capitolato C8. Essendo questo il primo progetto realistico affrontato dai membri del gruppo, è probabile che si verifichino problemi di natura organizzativa interna, di adempimento efficace dei ruoli assegnati e di giusto utilizzo degli strumenti scelti.\
In questa sezione quindi andremo ad elencare i problemi più importanti che abbiamo riscontrato e le relative contromisure prese per risolvere o contenere i rallentamenti causati.

== Problemi leagati all'organizzazione generale
#improvement("#ffeded", (
  [Intero Progetto],
  [È stato particolarmente complicato effettuare delle riunioni per fare il punto della situazione sul progetto dove fossero presenti tutti i membri del gruppo sia in presenza (poichè non si trovano aule libere che permettano ai membri di riunirsi e non tutti i componenti del gruppo seguono con frequenza le lezioni) che online (ognuno ha impegni diversi e dunque alle riunioni manca sempre qualche componente).],
  [
    Si è deciso dunque che per comodità tutte le riunioni devono essere svolte online (sulla piattaforma Discord) cosicchè ogni componente può collegarsi in qualunque situazione (capitava spesso di membri in viaggio o sui mezzi pubblici).\
    Qualora uno dei componenti del gruppo non potesse comunque essere presente il responsabile provederà a fornigli un riassunto vocale della discussione tramite il contatto Telegram.
  ]
))

== Valutazione sui ruoli
#improvementrole("#fffdde", (

  [Intero Progetto],
  [Verificatore],
  [Dato che questo è il primo progetto in termini di complessità della documentazione che ogni membro del nostro gruppo affronta abbiamo notato (ed è comprensibile) che spesso i documenti pronti ad essere rilasciati nel repository pubblico avevano degli errori di vario genere (esempio: di formattazione del documento, errori semantici, etc.)],
  [Avvertire i verificatori di questo fenomeno e non assegnare loro altri compiti durante lo svolgimento del processo di verifica in quanto il loro lavoro è molto oneroso (non si tratta di approvare e basta le nuove modifiche al repository ma di verificare, spesso in argomenti a loro sconosciuti, se ciò che è stato prodotto sia valido o meno).],
  
  [Fase iniziale],
  [Responsabile],
  [Nelle fasi iniziali del progetto è capitato che le attività venissero assegnate senza valutare in modo corretto il loro costo in termini di tempo ai vari componenti del gruppo. Questo ha portato chiaramente ad un sovraccarico per alcuni ruoli ed eccessivo tempo libero per altri.],
  [Il responsabile di turno deve ricontrollare l'assegnazione dei compiti per assicurarsi che siano equamente distribuiti tra i membri. In questo modo, si evitano rallentamenti dovuti a ridistribuzioni degli oneri di progetto.],

  [Analisi dei requisiti],
  [Analista],
  [Per svolgere l'analisi dei requisiti abbiamo dovuto analizzare in modo approfondito il capitolato ma ci è risultato difficile comprendere fin dall'inizio quale fosse il suo vero scopo, in particolare capire quali fossero le parti che realmente il proponente si aspettava realizzassimo.\
  Non potevamo lasciare nulla al caso perchè un'imprecisione in questa fase sarebbe stata riflessa immediatamente nei diagrammi dei casi d'uso e se non fosse stata risolta in tempo si sarebbe riflessa anche sul PoC.
  ],
  [Fissare a calendario degli incontri periodici con l'azienda proponente per chiarire quegli aspetti del progetto che ancora non erano ben espressi sul capitolato e successivamente riservare degli incontri anche con il docente Cardin per discutere alcuni aspetti tecnici del progetto (ad esempio: dato un caso d'uso, come sarebbe giusto formalizzarlo nei diagrammi dei casi d'uso seguendo lo standard).],

  [Analisi\ dei requisiti\
  \
  PoC],
  [Analista\
  \
  Programmatori
  ],
  [
    Spesso durante diverse attività di progetto colui che doveva svolgere il proprio compito si sentiva afflitto da una miriade di dubbi con granularità fine su come procedere con il proprio lavoro (es. l'analista nella stesura dei casi d'uso oppure il programmatore durante la realizzazione del PoC).
  ],
  [Dopo aver parlato di questo con il proponente siamo giunti alla conclusione di inserire uno dei referenti del progetto nel nostro canale privato Discord cosicchè da poter chiarire in maniera informale e immediata qualsiasi dubbio con granularità fine, lasciando i problemi più importanti ai meeting ufficiali con verbale esterno annesso.],

  

  
))

== Valutazione sugli strumenti
#improvementtool("#e8fcdc", (
    [Intero progetto],
    [Typst],
    [
      Trovare un metodo per cui tutti i membri del gruppo potessero redigere documenti indipendentemente dal dispositivo in uso, dal sistema operativo e anche dalle proprie conoscenze di base in materia (LaTeX non era una tecnologia conosciuta da tutti i membri del gruppo). 
    ],
    [
      Siamo giunti alla conclusione di usare Typst, un linguaggio che da le stesse funzionalità di LaTeX, ma con una facilità maggiore e una documentazione più ricca per chi non lo conoscesse. Inoltre per redigere i documenti abbiamo a disposizione una repository web messa a disposizione dallo stesso typst che ci permette di scrivere i documenti in maniera collaborativa dove ognuno può vedere in diretta cosa sta svolgendo un altro membro del gruppo. 
    ],
  
    [Fase iniziale],
    [Git, Github, Typst e altri],
    [
      Nelle fasi iniziali del progetto è capitato spesso che venisse introdotta una nuova tecnologia da dei membri del gruppo (es. scelta di git e github) che la sapevano utilizzare con destrezza (grazie al corso di laurea Metodi e Tecnologie per lo sviluppo software) e che avrebbe dovuto essere utilizzata in futuro da dei componenti che non avevano un nessuna conoscenza sulla materia in questione.
    ],
    [Piuttosto che creare disallineamenti il gruppo ha preso una pausa, dove il responsabile garantiva che tutti i membri del gruppo avessero una conoscenza delle tecnologie tale da lavorare in maniera ottimale. Questo spesso veniva raggiunto individuando all'interno del gruppo i soggetti più preparati su un argomento e chiedendo loro di realizzare dei video tutorial su una determinata tematica.],

))