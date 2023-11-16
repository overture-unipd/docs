#import "//templates/document.typ": *

#show: project.with(
  title: "Valutazione capitolati",
  managers: p.vedovato,
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  group_is_recipient: false,
  changelog: (
    "1.1", "2023-11-09", p.bonavigo, p.amadori, "Aggiunta del registro delle modifiche",
    "1.0", "2023-10-28", (p.bettin, p.amadori), (p.bonavigo, p.bulychov), "Sistemazione di alcuni errori grammaticali e formulazione frasi",
    "0.4", "2023-10-26", p.furno, p.bulychov, "Valutazione di C7, C8 e C9",
    "0.3", "2023-10-25", p.fabbian, p.bulychov, "Valutazione di C3 e C4",
    "0.2", "2023-10-24", p.amadori, p.bulychov, "Valutazione di C5 e C6",
    "0.1", "2023-10-24", p.bettin, p.bonavigo, "Valutazione di C1 e C2",
  ),
  outline_depth: 1,
)

= Capitolato scelto: C8 - JMAP: il nuovo protocollo per la posta elettronica
== Descrizione
- *Proponente*: _#(p.zextras)_
- *Committenti*: #p.vardanega e #p.cardin
- *Obiettivo*: valutare se conviene investire tempo e denaro per integrare il protocollo JMAP su Carbonio, il prodotto principale di _#(p.zextras)_ (attualmente basato su protocolli standard come IMAP e POP). Il risultato finale deve essere compatibile con i client attualmente supportati, offrendo nuove funzionalità ai client più moderni.

== Dominio applicativo
Si richiede lo sviluppo e la valutazione di un'estensione dello standard in Carbonio: questa estensione deve mantenere la compatibilità con i client attualmente supportati e permettere l'espansione delle funzionalità per i client di nuova generazione. 
In particolare il servizio deve integrare i seguenti requisiti funzionali:
- l’invio e la ricezione di una mail;
- la gestione delle cartelle;
- la gestione dei contenuti di una cartella;
- l’eliminazione di un oggetto;
- l’eliminazione di una cartella;
- la condivisione di una cartella;
- l’eliminazione di una condivisione di cartella.
Rientrano tra i requisiti opzionali l'estensione delle funzionalità principali anche ai contatti, tramite rubrica, e al calendario, tramite appuntamenti. È gradito anche lo sviluppo di un sistema di sincronizzazione che permetta ad un client di mantenersi aggiornato con le caselle di posta visualizzata, contatti e appuntamenti.

== Dominio tecnologico
L'azienda ha concesso piena autonomia sulla scelta del linguaggio di programmazione da adottare per lo sviluppo di questo progetto, esprimendo, però, preferenza per Java. L'implementazione del protocollo JMAP può essere condotta utilizzando una specifica libreria consigliata dall'azienda; nel caso in cui si scegliesse un linguaggio diverso da Java, è opportuno sfruttare una delle implementazioni ufficiali messe a disposizione dal sito web ufficiale di JMAP. #linebreak()
Il servizio sviluppato deve essere eseguibile all'interno di un ambiente di container, come ad esempio Docker. Questa scelta è finalizzata a semplificare la fase di testing delle funzionalità e delle prestazioni, consentendo l'avvio di molteplici istanze del servizio in parallelo. #linebreak()
Il servizio deve essere sviluppato in modo che sia facilmente scalabile: deve essere possibile l'utilizzo di più nodi "stateless", in modo che ciascuna istanza del servizio sia in grado di rispondere alle richieste dei client senza la necessità di mantenere dati di stato specifici.

#pagebreak()

== Motivazioni della scelta
- Il proponente è stato chiaro durante l'esposizione del capitolato
- Il tema si è rivelato estremamente interessante per ogni componente del gruppo (protocolli, testing, deploy scalabile)
- È necessario implementare una parte di libreria JMAP: quella proposta dall'azienda non fornisce elementi sufficienti a soddifare i requisiti funzionali opzionali richiesti. Questa "sfida" ha stimolato particolarmente il gruppo.

== Conclusioni
Dopo un'attenta valutazione il gruppo ha deciso di candidarsi per questo capitolato: le mail ed i relativi protocolli rappresentano un servizio diffuso in tutto il mondo e fanno parte della vita quotidiana di numerose persone. La possibilità di poter inserire nuove funzionalità allo standard JMAP rappresenta una sfida che il gruppo non vuole perdere. Inoltre, questa opportunità consentirebbe l'approfondimento di temi che, altrimenti, verrebbero solo accennati durante il percorso di laurea.

#pagebreak()

= Capitolato C1 - Knowledge management AI
== Descrizione
- *Proponente*: Azzurrodigitale
- *Committenti*: #p.vardanega e #p.cardin
- *Obiettivo*: migliorare l'accessibilità delle informazioni aziendali, semplificare la comunicazione con macchine e processi, e abbattere barriere all'ingresso per i dipendenti.
Il knowledge management riguarda l'acquisizione, l'organizzazione e la diffusione della conoscenza all'interno di un'organizzazione. In passato, ci si basava su archiviazione manuale o su sistemi di gestione documentale, tuttavia, con l'avanzare dell'intelligenza artificiale, sono emerse soluzioni più avanzate. AzzurroDigitale, rivolgendosi alle fabbriche, esplora l'utilizzo dell'IA per agevolare il dialogo naturale tra gli operatori e le postazioni di lavoro, semplificando l'accesso alle informazioni e rendendo più agevole la formazione sul campo.

== Dominio applicativo
Il progetto si concentra sulla realizzazione di una piattaforma web dedicata alla gestione dei documenti ed all'interazione con un motore di intelligenzza artificiale. L'interfaccia deve essere comprensiva delle funzionalità di caricamento, consultazione ed eliminazione di file. L'obiettivo principale è dimostrare la fattibilità di questa visione e individuare le tecnologie più appropriate per raggiungere questo scopo, con un'enfasi sulla funzionalità piuttosto che sulla resa estetica dell'applicazione.

== Dominio tecnologico
L'applicazione sarà sviluppata utilizzando le seguenti tecnologie:
- *Frontend*: HTML/CSS/JavaScript (con la possibilità di utilizzare framework come Angular);
- *Backend*: NodeJS (JavaScript), con integrazione delle API di OpenAI ed LangChain.
Azzurrodigitale mette a disposizione la libertà di cambiare il motore per le funzionalità di NLP e fornisce una repository git che il team potrà utilizzare per tutte le attività di sviluppo del progetto.

== Aspetti positivi
- Il proponente ha dimostrato apertura al confronto e disponibilità nell'analizzare tecnologie alternative proposte dal team di sviluppo
- Il progetto esplora ambiti ancora inesplorati nel percorso di studi del team, consentendo quindi l'approfondimento di nuove tecnologie

== Fattori critici
- Nonostante l'interesse generale per l'intelligenza artificiale, il campo non ha suscitato la stessa passione di altri capitolati
- Il progetto implica l'addestramento di un'intelligenza artificiale, un processo in gran parte automatico e quindi poco interattivo
- Come discusso nell'incontro del 2023-10-17, il progetto deve essere formulato in modo molto generico per evitare problemi legati all'overfitting in un settore specifico

== Conclusioni
Inizialmente il capitolato sembrava affascinante per l'utilizzo di tecnologie all'avanguardia come l'intelligenza artificiale, ma si è rivelato essere troppo focalizzato su quest'unica tecnologia, riducendo l'interesse dell'intero gruppo.

#pagebreak()

= Capitolato C2 - Sistemi di raccomandazione
== Descrizione
- *Proponente*: Ergon
- *Committenti*: #p.vardanega e #p.cardin
- *Obiettivo*: sviluppare un sistema di raccomandazione che possa suggerire attività di marketing e commerciali mirate a clienti specifici, prodotti con obiettivi di vendita, e prodotti correlati a un cliente.
Nel contesto delle strategie di marketing e dei piani commerciali, le aziende adottano principalmente due approcci distinti. Uno di essi è di tipo "ampio spettro," in cui tutte le offerte promozionali vengono indirizzate a tutti i clienti in maniera uniforme, senza tener conto delle singole preferenze. Il secondo approccio è più mirato, basandosi su criteri commerciali o sull'intuizione del reparto vendite per selezionare specifici clienti a cui rivolgere offerte personalizzate. Questi approcci beneficiano dell'analisi dei dati interconnessi resa possibile dall'evoluzione dell'IT e dall'uso del Machine Learning, che permette alle aziende di agire in modo tempestivo basandosi su correlazioni e insight rilevanti.

== Dominio applicativo
Il progetto proposto si concentra sulla digitalizzazione e sull'evoluzione del mondo dell'IT, con l'obiettivo di aiutare le aziende a gestire e analizzare ampie quantità di dati relativi ai loro prodotti e clienti. Questo richiede lo sviluppo di un backend per la gestione dei dati, compresi il loro caricamento, il preprocessing, la creazione di set di dati per l'addestramento e il testing, nonché l'implementazione di un algoritmo di previsione e una valutazione del comportamento del modello. Inoltre, è prevista un'interfaccia utente per la consultazione da parte degli utenti, con la flessibilità di scegliere tra un'opzione desktop-based o web-based.

== Dominio tecnologico
Per realizzare questo progetto, saranno utilizzate le seguenti tecnologie:
- Database relazionale, con la possibilità di scegliere tra le principali opzioni disponibili sul mercato;
- Sistema di raccomandazione, che potrà essere implementato utilizzando ML.NET (un framework basato su .NET) o Surprise (una libreria Python);
- Interfaccia utente, con la flessibilità di scegliere la modalità di visualizzazione e gestione dei feedback utente.

== Aspetti positivi
- Il proponente del progetto si è mostrato interessato a fornire supporto continuo e confronti periodici per aiutare il team di sviluppo
- Il progetto offre un'opportunità di lavorare sia con la gestione e l'analisi dei big data che con l'integrazione dell'intelligenza artificiale (AI)

== Fattori critici
- Nonostante l'interesse iniziale all'interno del team di sviluppo, la presentazione del progetto da parte del proponente non è risultata abbastanza convincente;
- Poiché il progetto implica l'addestramento di un modello di intelligenza artificiale, potrebbe risultare in un processo in gran parte automatico e quindi poco interattivo (parere espresso precedentemente anche nel capitolato C1).

#pagebreak()

== Conclusioni
Sebbene l'idea di integrare l'analisi dei big data con l'intelligenza artificiale abbia suscitato interesse tra alcuni membri del team di sviluppo, l'obiettivo principale è trovare un progetto in grado di catturare l'interesse del maggior numero possibile di sviluppatori.

#pagebreak()

= Capitolato C3 - EasyMeal
== Descrizione
- *Proponente*: Imola Informatica
- *Committenti*: #p.vardanega e #p.cardin
- *Obiettivo*: sviluppare una web application che permetetta di digitalizzare i processi di prenotazione e ordinazione in un contesto riguardante il settore della ristorazione.

In un contesto di crescente digitalizzazione a livello internazionale, si sono sviluppati negli ultimi anni numerosi software con l'obiettivo di ottimizzare le attività quotidiane. In questo caso, EasyMeal cerca di migliorare l'esperienza culinaria nei ristoranti, mirando a risolvere le due principali problematiche che affliggono i clienti di questo mercato: la complessità delle prenotazioni e l'inefficienza nell'ordinazione.\
Le prenotazioni effettuate in modo tradizionale (ad esempio, tramite chiamate al ristoratore) costituiscono spesso un ostacolo alle attività lavorative del ristorante e sono soggette a errori di comunicazione e fraintendimenti. Allo stesso modo, le ordinazioni dei pasti sono spesso un processo dispendioso, considerando che ogni gruppo di persone ha preferenze eterogenee, e sono soggette agli errori umani.\
Per affrontare questo problema, si propone EasyMeal, un'applicazione che mira ad automatizzare le attività precedenti, consentendo agli utenti di prenotare rapidamente (per sé o per tutto il gruppo) i pasti e personalizzare l'ordine, anticipando l'esperienza culinaria, e gestendo inoltre il noto problema delle allergie e delle intolleranze alimentari, un aspetto che è spesso trascurato.

== Dominio applicativo
EasyMeal è una soluzione indicata per tutti i ristoratori che desiderano permettere alla tecnologia di ottimizzare i processi lavorativi che riguardano l'interazione con i clienti. L'applicazione permette la creazione di due tipologie di account: cliente e ristoratore.\
Il cliente può:
- Consultare la lista dei ristoranti;
- Compilare una prenotazione presso un ristorante per sé o per il proprio gruppo (notificando quindi gli altri utenti del gruppo dell'avvenuta prenotazione);
- Aprire una chat privata con il ristoratore;
- Effettuare il pagamento di un conto o la divisione del conto di un gruppo;
- Inserire feedback e recensioni sul ristorante.
Il ristoratore può:
- Aggiungere e gestire i propri ristoranti;
- Consultare il suo calendario di prenotazioni;
- Consultare le ordinazioni per ogni prenotazione (garantendo quindi una migliore gestione delle scorte alimentari in magazzino);
- Consultare lo stato di pagamento di un'ordinazione;

#pagebreak()

== Dominio tecnologico
Si prevede la creazione di una web application responsive, in modo che si possa utilizzare comodamente dal browser di un computer desktop o di uno smartphone senza doversi preoccupare del sistema operativo del dispositivo cliente.\
Non ci sono vincoli sulle tecnologie che è possibile utilizzare, ma si richiede che il progetto sia ben documentato sulle scelte implementative e progettuali e che la comunicazione tra l'app e il server sia cifrata per garantire la validità delle informazioni.\
È inoltre necessario fornire un'analisi rispetto al servizio di cloud più adatto per supportare questo progetto, sia in termini di prezzi che di stabilità, e definire il carico massimo di dispositivi collegati supportato, disponendo al massimo di 2 CPU e 1 GiB per istanza del server.

== Aspetti positivi
- Imparare a sviluppare una web application responsive in ogni suo aspetto è una competenza fondamentale richiesta da molte aziende nel settore informatico, perchè permette di ottimizzare con la digitalizzazione dei processi di lavoro che vengono tutt'oggi svolti (nel mercato italiano e estero) prevalentemente a mano o con sistemi deprecati in un mare di settori
- I casi d'uso sono chiari e ben definiti

== Fattori critici
- Il progetto potrebbe non consentire di esplorare nuovi aspetti legati all'informatica, come l'intelligenza artificiale o lo sviluppo di nuovi protocolli, che arricchirebbero ulteriormente il nostro bagaglio di competenze
- Elevato numero di requisiti da portare a termine
- Esistendo moltissime architetture capaci di implementare questo progetto potrebbe essere complicato sceglierne una che sia di gradimento e conosciuta ad ogni membro del gruppo di progetto

== Conclusioni
La scelta di questo progetto come terza opzione è stata il risultato di una votazione tra tutti i membri del gruppo e sebbene sia stato considerato interessante per la risoluzione di un noto problema legato al mercato della ristorazione, alcuni membri hanno preferito una sfida più accattivante come prima scelta, la quale ci potesse permettere di studiare e lavorare su argomenti legati all'informatica mai trattati prima (come lavorare su un protocollo informatico, capitolato C8).

#pagebreak()

= Capitolato C4 - A ChatGPT plugin with Nuvolaris
== Descrizione
- *Proponente*: Imola Informatica
- *Committenti*: #p.vardanega e #p.cardin
- *Obiettivo*: sviluppare un plugin con la tecnologia Nuvolaris capace di esporre una serie di funzioni invocabili da ChatGPT in seguito ad una richiesta testuale di un utente capaci di creare una applicazione web e performare modifiche sulla stessa.

Questo progetto prende vita grazie all'impennata che il settore dell'intelligenza artificiale ha riscontrato negli ultimi mesi, grazie all'avvento del chatbot ChatGPT.\
Tuttavia, questo progetto introduce il concetto che ChatGPT non è soltanto un sito in cui è possibile porre domande testuali e ricevere risposte, ma piuttosto un sistema completo capace di interagire con dei plugin.\
In effetti, in questo progetto, l'obiettivo principale è di esporre una serie di servizi utilizzando Nuvolaris, un sistema in grado di interagire non solo con Apache ma anche con numerosi altri sistemi. Successivamente, l'idea è quella di mettere a disposizione le API di questi servizi a ChatGPT mediante un plugin. Questo plugin potrà essere attivato dagli utenti che desiderano utilizzare le complesse funzioni offerte dal servizio Nuvolaris in maniera del tutto automatica, semplicemente ponendo domande al chatbot.

== Dominio applicativo
Il plugin richiesto per questo progetto è utile in diversi contesti e per varie categorie di utenti.\
Rappresenta un notevole vantaggio per coloro che desiderano sviluppare progetti web ma hanno limitate competenze tecnologiche. Questi utenti possono sfruttare ChatGPT per richiedere la creazione di una semplice applicazione web in grado di eseguire specifiche operazioni CRUD con un database, fornendo dettagli relativi al web server e al database. A differenza del comportamento standard di ChatGPT, il plugin non fornisce istruzioni su come completare il lavoro, ma piuttosto chiama automaticamente le API di Nuvolaris per eseguire il lavoro. ChatGPT diventa quindi il mezzo per interpretare la richiesta dell'utente e invocare i servizi appropriati che abbiamo sviluppato.\
Inoltre, questo progetto rappresenta una risorsa inestimabile per chi desidera effettuare ricerche intelligenti sul web. Ad esempio, pensiamo a una situazione in cui si chiedono informazioni a ChatGPT su un repository specifico su GitHub, ma ChatGPT non ha accesso diretto a queste informazioni. Con questo plugin, possiamo creare API che consentono a ChatGPT di recuperare informazioni su elementi a cui non ha accesso nativamente, fornendo le relative risposte.

== Dominio tecnologico
Si prevede l'utilizzo della tecnologia Nuvolaris serverless per scrivere codice in forma di funzioni che sono richiamabili con qualsiasi tipo di tecnologia. Lo scopo di queste funzioni è quello di costruire e interagire con le applicazioni web.\
Il lavoro del progetto consiste nel creare:
- Un template dell'applicazione con i relativi file di configurazione;
- Fornire una API per aggiornare questo file di configurazione;
- Fare il rebuild dell'applicazione basandosi sul file di configurazione.

#pagebreak()

== Aspetti positivi
- Lavorare un un progetto che si distacca dalla normale concezione di applicazione informatica per risolvere processi lavorativi non digitalizzati (vedi Capitolato 3)
- Lavorare su ChatGPT (la tencologia più in voga al momento) sicuramente arricchisce il nostro curriculum e ci rende interessanti agli occhi di aziende esterne per una nostra futura ricerca di lavoro nel mercato informatico

== Fattori critici
- Utilizzare l'ambiente Nuvolaris per creare i servizi richiesti costituisce un grando di difficoltà che ci aspettiamo sia molto elevato, considerando che nessun membro del nostro gruppo ha mai lavorato con tecnologie simili
- Facciamo fatica a stimare dalla presentazione fornita la mole di lavoro a cui veramente verremmo sottoposti per soddisfare i requisiti richiesti

== Conclusioni
A causa della complessità della richiesta di ciò che realmente deve fare il plugin nella presentazione del capitolato e date le nostre competenze informatiche con queste tecnologie (ChatGPT e Nuvolatis) riteniamo di non riuscire a proporre una soluzione adeguatamente efficace per questo progetto.

#pagebreak()

= Capitolato C5 - WMS3: wharehouse management 3D
== Descrizione
- *Proponente*: SanMarco Informatica
- *Commmittenti*: #p.vardanega e #p.cardin
- *Obiettivo*: controllo della dislocazione e della movimentazione dei materiali e ottimizzazione degli spazi fisici del magazzino grazie ad una vista in 3D dello stesso; gestione dei processi di spedizione garantendo il rispetto delle tempistiche
Il capitolato affronta i problemi della gestione dei magazzini tradizionale: implementare un Warehouse Management System, con l’obiettivo di monitorare le performance e ottimizzare i processi di logistica, è spesso una sfida complessa: richiede tempo, risorse e un’adeguata personalizzazione a seconda delle esigenze specifiche delle aziende. Un WMS deve essere integrabile facilmente con altri sistemi (per esempio di gestione degli ordini), adattarsi alle necessità delle aziende (che possono mutare nel tempo) e offire dati in tempo reale sull’efficienza operativa e controllo dello stock.

== Dominio applicativo
Si richiede la realizzazione di una web application senza login che permetta la vista 3D di un magazzino. Necessita in particolare:
- integrazione di mappe e piantine;
- sviluppo di scaffalature all’interno degli spazi;
- valutazione degli spazi fisici (occupazione, spazi di manovra, flussi di movimentazione dei materiali);
- navigazione all’interno dell’ambiente (almeno tramite mouse e tastiera).
Inoltre, come requisito opzionale, deve essere consentino lo spostamento degli oggetti da un reparto all’altro tramite trascinamento.

== Dominio tecnologico
Per questo progetto l’azienda suggerisce di usare Three.js, framework crossplatform per la realizzazione di contenuti 3D per il web.
In alternativa suggerisce altri due motori grafici come tecnologie alternative:
- Unity, linguaggio C\#;
- Unreal Engine, linguaggio C++.

== Aspetti positivi
- Azienda committente più che disponibile

== Fattori critici
- Scarsa conoscenza del gruppo dell’ambiente di sviluppo 3D 
- Tema non particolarmente stimolante

== Conclusioni
Nonostante l’ottima impressione che l’azienda ha lasciato sul gruppo, il capitolato in questione non è stato preso in considerazione a causa dello scarso interesse generale dei componenti per il tema e le tecnologie da utilizzare.

#pagebreak()

= Capitolato C6 - SyncCity: Smart city monitoring platform
== Descrizione
- *Proponente*: Sync Lab
- *Commmittenti*: #p.vardanega e #p.cardin
- *Obiettivo*: raccolta e analisi di grandi quantità di dati provenienti da dispositivi e sensori disposti all’interno della città per ottenere una visione d’insieme delle sue condizioni in tempo reale.
Il capitolato affronta la questione delle smart cities, il cui obiettivo principale è il miglioramento costante della qualità della vita dei suoi cittadini.
Una piattaforma di monitoraggio si occuperà di mostrare in tempo reale tutti gli aspetti cruciali della città, dotata di numerosi sensori e dispositivi per la raccolta di dati.

== Dominio applicativo
Si richiede la realizzazione di un’architettura software in grado di ingerire, immagazzinare ed analizzare grandi quantità di dati provenienti da IoT. Necessita in particolare di una dashboard, che consenta chi la usa di avere sotto controllo una serie di informazioni sullo stato di salute della città.

== Dominio tecnologico
Per questo progetto l’azienda suggerisce l’utilizzo di:
- *Python Faker*: framework per la simulazione di dati;
- *Apache Kafka*: per gestire il flusso di dati;
- *database OLAP*: per assicurare la persistenza di dati con numerosità elevata;
- *Grafana*: piattaforma di datavisualization frontend.

== Aspetti positivi
- Parte delle tecnologie sono già conosciute ad alcuni membri del gruppo 
- Tematica interessante
- Ottima impressione dell’azienda

== Fattori critici
- Nessuno

== Conclusioni
Il gruppo è stato colpito positivamente dalla presentazione di questo capitolato e dell’azienda proponente, difatti questo progetto è risultato come seconda opzione in seguito ad una votazione tra tutti i membri del gruppo. Tuttavia alcuni membri hanno preferito una sfida diversa come prima scelta, la quale ci potesse permettere di studiare e lavorare su altri argomenti legati all'informatica mai trattati prima (come lavorare su un protocollo informatico, capitolato C8).

#pagebreak()

= Capitolato C7 - ChatGPT vs BedRock developer analysis
== Descrizione
- *Proponente*: zero12
- *Commmittenti*: #p.vardanega e #p.cardin
- *Obiettivo*: creare un middleware che riceva in input business requirements e produca epic e user stories associate a questi tramite chatGPT e BedRock, in particolare creando dei plugin per VScode di microsoft e Xcode di Apple. Seguendo poi con un'analisi delle prestazioni di chatGPT e AWS BedRock in questo compito di accopagnamento alla creazione di stories tramite il codice sorgente.

== Dominio applicativo
Questo progetto si propone di fornire ai developer dei tool per la creazione di di epic e user stories, interpretando il source code quindi automatizzando la mansione di redarle, verificandone la precisione con dovuti test ponendo particolare attenzione sull'efficacia nella produzione delle stesse all' interno dell'ecosistema aziendale.

== Dominio tecnologico
L'azienda per lo sviluppo di questo progetto raccomanda Amazon Web Services,
in particolare:
- *AWS fargate*: servizio serverless per gestione containerizzata;
- *MongoDB*: database documentale ideale per la gestione event-based di progetti.
Con i seguenti linguaggi di programmazione:
- *NodeJs*;
- *Python*;
- *Typescript*.

== Aspetti positivi
- Chiarezza nell'esposizione del progetto, in particolare sui vincoli da rispettare
- Organizzazione da parte del proponente per supporto tecnico e i follow-up formativi
- Efficienza: Dedicato ai developer, per migliorare il prodotto fornito dall'azienda ai suoi clienti

== Fattori critici
- Restrittività nel dominio tecnologico a favore di servizi molto vincolanti 
- Addestramento e realizzazione AI-based poco stimolante e, in questo caso, esclusivamente ad-hoc, per IDE proprietari

== Conclusioni
Nonostante la chiara intenzione dell'azienda al supporto e alla formazione, le tecnologie proposte e le implementazioni da effettuare con l'utilizzo di chatGPT e BedRock non hanno suscitato un interesse nel gruppo.

#pagebreak()

= Capitolato C9 - ChatSQL: creare frasi SQL da linguaggio naturale
== Descrizione
- *Proponente*: Zucchetti
- *Committenti*: #p.vardanega e #p.cardin
- *Obiettivo*: sviluppare un sistema di «prompt» in grado di tradurre una frase da linguaggio naturale a comando SQL.
L'azienda Zucchetti propone un interessante progetto incentrato sull'uso di Large Language Models (LLM), in particolare ChatGPT, per automatizzare la generazione di codice SQL a partire da specifiche in linguaggio naturale. Il progetto mira a creare un'applicazione che faciliti la scrittura di query SQL in modo intuitivo e semplificato attraverso l'interazione con l'IA.

== Dominio applicativo
Il progetto si concentra sullo sviluppo di un'applicazione che possa archiviare descrizioni dettagliate della struttura di un database, consentire agli utenti di inserire richieste di interrogazione in linguaggio naturale e tradurle automaticamente in query SQL. L'obiettivo è integrare questi tre elementi in un unico sistema coerente, in cui gli operatori possono definire la struttura del database, inserire richieste, e ottenere facilmente le query SQL corrispondenti.

== Dominio tecnologico
Il progetto si basa su Large Language Models, come ChatGPT, che sono addestrati per rispondere a varie richieste, comprese la generazione di codice SQL. Inoltre, il "prompt engineering" è una tecnica chiave che implica la formulazione di richieste specifiche per ottenere risultati desiderati dai modelli di Intelligenza Artificiale. Questo richiede la capacità di scegliere le parole e la struttura giuste per ottenere risposte accurate. Per quanto riguarda l'archiviazione viene data carta bianca allo studente, che potrá scegliere di sviluppare un'architettura su database oppure utilizzare documenti di testo strutturati come XML o JSon.

== Aspetti positivi
- Il progetto mira a semplificare notevolmente il processo di scrittura di query SQL, riducendo la necessità di competenze tecniche avanzate. Dunque l'applicazione può essere utilizzata da utenti che non sono esperti di SQL, aprendo il campo dell'elaborazione dati a un pubblico più ampio

== Fattori critici
- La qualità del progetto dipende fortemente dalle capacità del modello di Intelligenza Artificiale utilizzato, il che può portare a risultati non sempre accurati
- I prompt devono rispettare limiti dimensionali, il che potrebbe limitare la quantità di informazioni che possono essere utilizzate nelle richieste

== Conclusioni
Il progetto proposto offre effettivamente una soluzione innovativa per la creazione di query SQL, tuttavia non ha suscitato particolare entusiasmo all'interno del gruppo poiché nessuno é particolarmente interessato ai linguaggi e alle tecnologie usate.
