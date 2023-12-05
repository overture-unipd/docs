#import "//templates/document.typ": *

#show: project.with(
  title: "Analisi dei Requisiti",
  managers: p.vedovato,
  recipients: (
    p.vardanega,
    p.cardin,
    [_#(p.zextras)_],
  ),
  changelog: (
	"0.0.8", "2023-12-2" , p.bettin, p.vedovato,
    [
      Casi d'uso: correzione degli stress test
    ],
    "0.0.7", "2023-12-1" , p.amadori, p.bettin,
    [
      Casi d'uso: correzione creazione delle cartelle\
      Casi d'uso: correzione gestione contenuti delle cartelle
    ],
    "0.0.6", "2023-12-1" , p.bulychov, p.bettin,
    [
      Casi d'uso: correzione login base\
      Casi d'uso: correzione scambio delle email
    ],
    "0.0.5", "2023-11-25", p.bettin, p.vedovato, 
    [
      Produzione completa dei diagrammi UML dei casi d'uso.\
      Stesura testuale dei diagrammi dei casi d'uso.\
      Prima bozza stesura sezione requisiti: nomenclatura e lista.
    ],
    "0.0.4", "2023-11-21", p.bulychov, p.vedovato, 
    [
      Prima bozza dei diagrammi UML dei casi d'uso.
    ],
    "0.0.3", "2023-11-13", p.bettin, p.amadori, 
    [
      Obiettivo prodotto.\
      Funzionalità del prodotto.\
      Caratteristiche utente.\
      Tecnologie e struttura di progetto.
    ],
    "0.0.2", "2023-11-11", p.bulychov, p.amadori, 
    [
      Scopo del prodotto.\
      Glossario.\
      Riferimenti.
    ],
    "0.0.1", "2023-11-10", p.bettin, p.amadori, 
    [
      Struttura di base del documento e prima parte introduzione.
    ]
  ),
)

\

//TODO: Individuare i termini da aggiungere nel glossario

= *Introduzione*
== Scopo del documento
L'`Analisi dei Requisiti` è un documento fondamentale per tutti i progetti di sviluppo software che vogliono essere in ottemperanza con gli standard di qualità definiti dalla materia di ingegneria del software.\
Lo scopo del documento è quello di definire le funzionalità che il sistema sarà in grado di offrire, ovvero i requisiti obbligatori, desiderati e opzionali che devono essere soddisfatti dal software sviluppato al fine di essere conforme alle richieste fatte dal proponente.\
L'analisi quindi non deve fornire la soluzione al problema, ma deve essere consapevole della sua fattibilità tecnologica (costruendo quindi un confine tra analisi del problema e il suo design, quindi la soluzione).
In particolare, le finalità di questo documento possono essere definite e sintetizzate nei seguenti punti:\

- *Definire le esigenze dei proponenti*:\
Il documento di `Analisi dei Requisiti` fonda le sue basi sulle esigenze del proponente, ovvero le sue aspettative in merito al prodotto software che dovremmo andare a sviluppare. Queste richieste verranno raccolte tramite i documenti forniti dal proponente _#(p.zextras)_ e dalle varie interviste svolte durante lo svolgimento del progetto.\

- *Tracciare i requisiti del sistema*:\
Una volta raccolte le esigenze del proponente, il documento di `Analisi dei Requisiti` deve identificare tutti i casi d'uso necessari e i corrispettivi requisiti associati ad ognuno di essi suddividendoli in funzionali e non funzionali.\

- *Verificazione e validazione dei requisiti*:\
Il processo di #glossary("verifica dei requisiti") ha lo scopo di garantire che le attività siano svolte in modo corretto, senza errori, ponendo in primo piano il way of working del gruppo.\
La #glossary("validazione dei requisiti") invece consiste nel accertare che il prodotto corrisponda alle attese, ponendo attenzione al prodotto software finale.\

- *Fornire una base per la progettazione del sistema*:\
Il documento di `Analisi dei Requisiti` fornisce una base per la progettazione del sistema, in quanto definisce le funzionalità che il sistema deve offrire. I programmatori possono utilizzare il documento per comprendere le esigenze dei proponenti e identificare le soluzioni più appropriate per soddisfare tali esigenze.\

- *Fornire una base per la progettazione del sistema*:\
Un documento di `Analisi dei Requisiti` completo e accurato può aiutare a ridurre i rischi del progetto. Ciò è dovuto al fatto che il documento aiuta a garantire che i requisiti siano effettivamente corretti e completi, evitando così errori e ritardi nello sviluppo del sistema.

Arrivati al punto in cui si ha una chiara visione dello scopo e delle funzionalità del prodotto, dei suoi requisiti e degli attori del sistema software, in questo documento se ne darà una formale rappresentazione grafica utilizzando il diagramma dei casi d'uso.
#pagebreak()

== Scopo del prodotto

=== Spiegazione dello scenario di riferimento
Il proponente del capitolato d'appalto C8 è l'azienda vicentina _#(p.zextras)_. Il core business di _#(p.zextras)_ si incentra sulla vendita del loro prodotto di punta: Carbonio. Carbonio possiamo definirlo come una suite di funzionalità volte a incrementare la produttività di un'organizzazione o team che si affida a questo prodotto.\
Infatti, questa soluzione software permette di raggruppare insieme un pool di utenti offrendo loro una serie di strumenti fondamentali per la collaborazione in un contesto aziendale, come:
+ *Messaggistica avanzata*: fornendo un tool di posta elettronica moderna, veloce e intuitiva, profili multipli, account e cartelle condivise, anteprima degli allegati e strumenti di gestione come tag e filtri;
+ Calendari ed eventi pianificati;
+ Videochiamate e chat;
+ Editing collaborativo;
+ Gestione file condivisi.

Questo applicativo è implementato con un software backend (installabile solamente su un Server Ubuntu) e i client possono usufruire di questa soluzione comodamente tramite browser previo apposito login.

=== Il protocollo JMAP
Tra tutte le funzionalità offerte da Carbonio, _#(p.zextras)_ pone particolare attenzione, nel suo capitolato, sulla funzionalità di messaggistica che utilizza come base per la sua implementazione la posta elettronica.\
Questa tecnologia, in particolare il protocollo IMAP (Internet Message Access Protocol) è un #glossary("protocollo") di comunicazione utilizzato per
accedere alle email conservate su un server di posta compatibile. Risale al lontano 1986, come
successore del precedente protocollo POP (Post Office Protocol) e consente un accesso più
avanzato e interattivo al contenuto delle caselle di posta elettronica, ad esempio permettendo la
sincronizzazione di una casella di posta in più dispositivi.\
Negli ultimi anni però è nato JMAP: un interessante alternativa a questo IMAP, il cui pregio principale rispetto a IMAP è la velocità, in quanto sfrutta il formato JSON (JavaScript Object Notation) e definisce un set di API per permettere ai client di accedere ai dati e gestirli in modo efficiente.

=== Cosa richiede _#(p.zextras)_?
_#(p.zextras)_ non ci chiede direttamente di apporre modifiche a Carbonio, ma di progettare e realizzare un sistema di posta elettronica compreso di client mail e server mail (utilizzando delle apposite librerie) che rispetti determinati requisiti (di cui alcuni obbligatori e alcuni opzionali).
A partire da questo sistema il gruppo Overture andrà ad effettuare dei stress test capaci di stabilire le performance di questo nuovo protocollo rispetto alle caratteristiche (hardware e software) del server che ci è stato fornito.\
Basandosi sui risultati della nostra demo _#(p.zextras)_ deciderà quindi se è vantaggioso apportare delle modifiche a Carbonio e implementare un sistema di posta elettronica che sfrutti il protocollo JMAP come quello sviluppato nella nostra demo.








#pagebreak()

== Glossario
Per evitare ambiguità o incomprensioni riguardanti la terminologia usata nel documento, é stato deciso di adottare un glossario in cui vengono riportate le varie definizioni. In questa maniera in esso verranno riportati tutti i termini specifici del dominio d'uso con relativi significati.
\
La presenza di un termine all'interno del `Glossario` viene indicata applicando #glossary("questo stile").

== Riferimenti
=== Riferimenti normativi
- `Norme di Progetto`
- Capitolato d'appalto C8: JMAP, il nuovo protocollo standard per la comunicazione email \
  https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C8.pdf

=== Riferimenti informativi
- T5 - `Analisi dei requisiti` \
  https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T5.pdf
- P2 - I Diagrammi dei Casi d'Uso (UML) \
  https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20Use%20Case.pdf
#pagebreak()

= *Descrizione generale del prodotto richiesto da _#(p.zextras)_*

== Obiettivo fissato
L’obiettivo a cui vogliamo arrivare alla fine di questo capitolato e' capire se ha senso investire tempo e denaro per estendere questo standard (JMAP) nel software Carbonio, mantenendo i vecchi standard per compatibilità con i client attualmente supportati ma permettendoci di espandere le funzionalità offerte ai client di nuova generazione.

== Funzionalitá del prodotto e requisiti<Funzionalità>
Nel sistema informatico che dovremmo andare a realizzare dobbiamo mettere a disposizione dei client le seguenti funzionalità:
- L’invio e la ricezione di una mail;
- La gestione delle cartelle;
- La gestione dei contenuti di una cartella;
- L’eliminazione di un oggetto;
- L’eliminazione di una cartella;
- La condivisione di una cartella;
- L’eliminazione di una condivisione di cartella;
- [Opzionale] l’implementazione di un sistema di sincronizzazione che permetta ad un client di mantenersi aggiornato con gli ultimi aggiornamenti della casella di posta visualizzata, della rubrica e dei contatti;
- [Opzionale] Implementazione degli stessi requisiti funzionali sopra elencati per contatti e rubriche contatti.

Inoltre il prodotto puó essere eseguito in un container Docker, permettendo all'azienda di eseguire in batteria i test di funzionalità e di performance, ed é sviluppato per essere scalabile mediante l’inizializzazione di più nodi stateless.

== Caratteristiche utente

=== Utenti di Carbonio
Gli utenti della soluzione software Carbonio sono principalmente:
+  Agenzie di telecomunicazioni, provider (ISP) e operatori mobili poiché si integra perfettamente ai servizi preesistenti e garantisce un reale valore aggiunto ai propri clienti;
+ Il settore pubblico e i settori regolamentati, poiché fornisce un ambiente di lavoro digitale sicuro e conforme alle normative locali come, ad esempio, le leggi sulla protezione dei dati e sulla sovranità del dato;
+ Utenti privati e aziende private tradizionali che desiderano una piattaforma open source per l'e-mail e la collaborazione digitale che offra una soluzione di collaborazione online on-premise.

=== Utenti del nostro prodotto
Il prodotto che il gruppo Overture andrà a sviluppare ha la sola funzionalità di testare una nuova tecnologia, quindi non ha né un segmento di mercato ben definito né un vero e proprio scopo commerciale.
Gli utenti del nostro prodotto quindi sono tutti coloro che desiderano testare il nuovo protocollo JMAP e capire le motivazioni che hanno spinto gli
sviluppatori di tutto il mondo e la #glossary("IETF") a rimettere in discussione un protocollo ampiamente
utilizzato come IMAP, cercando di crearne uno più efficiente e moderno

== Tecnologie e analisi della struttura di progetto
Come discusso nei paragrafi precedenti, lo scopo finale del nostro prodotto è realizzare un'infrastruttura informatica composta di una parte client e una parte server con il fine di realizzare gli stress test sui requisiti funzionali richiesti dal proponente.\
Per questo motivo, dato che il risultato finale è incentrato sulla performance del protocollo, non ci interessa andare a realizzare un vero e proprio client di posta elettronica completo (es. Thunderbird) ma solamente un client capace di eseguire quei task richiesti da _#(p.zextras)_ che ci permettono di fare un benchmark sull'efficienza del protocollo.

=== Struttura del back-end
Per realizzare il back-end per la nostra infrastruttura informatica ci verrà messo a disposizione un VPS (Virtual Private Server) direttamente da _#(p.zextras)_ con sistema operativo Linux già installato (l'hardware verrà scelto da _#(p.zextras)_ in base alle loro preferenze).\
Successivamente sul server andremo ad installare un sistema di container come Docker.
Questo perchè Docker ci permette di lanciare in maniera molto semplice una o più istanze del servizio consentendoci di distribuire e ricalibrare le risorse in qualsiasi ambiente e di eseguire in batteria test di funzionalità e di performance.

=== Realizzazione del software client
_#(p.zextras)_ non ci ha imposto dei vincoli sul design del software ma ci ha caldamente consigliato di utilizzare una delle seguenti librerie https://jmap.io/software.html per realizzare il client.\
È importante sottolineare che con JMAP il client è capace di inviare e ricevere email utilizzando un unico protocollo (JMAP) e il corrispettivo server mail JMAP senza dover utilizzare i due protocolli SMTP e IMAP, tipici dei  comuni client mail.

==== Realizzazione del software back-end
Allo stesso modo del client, non abbiamo vincoli sul design del software ma dobbiamo chiaramente adattarlo alla libreria client scelta. Dunque il back-end dovrà esporre gli endpoint necessari per implementare le parti della libreria client che soddisfa i requisiti richiesti.\
Il servizio sviluppato deve essere scalabile mediante l’inizializzazione di più nodi stateless.
Per stateless si intende che alla richiesta di uno specifico client fatta ad un’architettura contenente più di un’istanza del servizio dato, può rispondere una qualsiasi istanza del servizio, perché nessuna istanza contiene dati specifici di stato rispetto alle richieste dei client.

#pagebreak()


= *Casi d'uso*
== Obiettivi
Questa sezione identifica e descrive tutti i casi d'uso individuati a seguito dell'analisi del capitolato d'appalto e del dialogo con l'azienda proponente.

== Introduzione ai Casi d'Uso
I casi d'uso seguono una struttura logica descrivendo ognuno di questi seguendo questo modello:
- *Attori coinvolti*: Il soggetto che esegue una certa azione;
- *Descrizione*: Titolo del caso d’uso e breve commento;
- *Precondizioni*: Stato del sistema prima del caso d’uso;
- *Postcondizioni*: Stato del sistema dopo l’esecuzione dello scenario del caso d’uso;
- *Scenario principale*: Una descrizione dettagliata delle azioni che un attore deve intraprendere per completare un caso d'uso. È un'espressione formale delle ipotesi e dei risultati del caso d'uso.
- *Estensioni*: L'estensione è una relazione tra due casi d'uso in cui il caso d'uso esteso può essere modificato o arricchito dal caso d'uso estensore. L'estensione è rappresentata da una freccia che punta dal caso d'uso estensore al caso d'uso esteso.
- *Inclusioni*: L'inclusione è una relazione tra due casi d'uso in cui il caso d'uso incluso è eseguito sempre all'interno del caso d'uso che include. L'inclusione è rappresentata da una freccia che punta dal caso d'uso che include al caso d'uso incluso.
- *Generalizzazioni*: La generalizzazione è una relazione tra due casi d'uso in cui il caso d'uso generalizzato rappresenta una categoria più ampia di cui il caso d'uso specifico è un'istanza. La generalizzazione è rappresentata da una freccia che punta dal caso d'uso specifico al caso d'uso generalizzato.

== Attori
Gli attori che consideriamo nel prodotto che andremo a realizzare sono:
- Client di posta elettronica

=== Alcuni dettagli sui client
Essendo questo un sistema con il fine di testare una nuova tecnologia (JMAP) non abbiamo bisogno di gestire particolari aspetti legati alla sicurezza informatica, i client hanno lo scopo di poter effettuare le seguenti funzionalità (#ref(<Funzionalità>, supplement: "Cap")) in modo che noi sviluppatori possiamo testare l'efficienza di queste operazioni con gli stress test.\
Si nota però che in un sistema di posta elettronica, per poter visualizzare le email bisogna prima identificarsi con il server mail fornendo appunto la propria email e la password associata. Allo stesso modo per inviare una email il server mail avrà bisogno di sapere il mittente e quindi ha bisogno di riconoscere il client che intende effettuare questa operazione.\
Per questo motivo nel nostro sistema andremo a prevedere un classico sistema di autenticazione composto da email e password.

#pagebreak()


== Elenco dei casi d'uso

=== UC 1 - Login Base

#figure(image("//imgs/use_cases/login-base.svg", width: 100%))
#pagebreak()

==== UC 1.1 - Effettuazione Login

- *Attore principale*: Utente non autenticato;
- *Descrizione*: Un utente non autenticato vuole effettuare l'accesso presso il server mail JMAP per poter successivamente inviare email, visualizzare le sue email o svolgere altre attività dettate dai requisiti;
- *Precondizioni*: L'utente non è autenticato;
- *Postcondizioni*: L'utente è autenticato o ha fallito la registrazione ottenendo un messaggio di errore.
- *Scenario principale*: \
  + L'utente deve fornire il suo indirizzo Email;
  + L'utente deve fornire la sua Password necessaria per l'autenticazione.

#set list(marker: ([•], [--]))
- *Estensioni*:
  - Errore Login.
- *Inclusioni*: /
- *Generalizzazioni*: /

===== UC 1.1.1 - Inserimento Email

- *Attore principale*: Utente non autenticato;
- *Descrizione*: Un utente non autenticato vuole effettuare l'accesso presso il server mail JMAP e quindi inserisce uno dei campi obbligatori;
- *Precondizioni*: L'utente non è autenticato;
- *Postcondizioni*: L'utente non è ancora autenticato e ha inserito la sua email.
- *Scenario principale*: 
  + L'utente deve fornire il suo Indirizzo Email necessario per l'autenticazione.

#set list(marker: ([•], [--]))
- *Estensioni*: / - *Inclusioni*: / - *Generalizzazioni*: /

==== UC 1.1.2 - Inserimento Password

- *Attore principale*: Utente non autenticato;
- *Descrizione*: Un utente non autenticato vuole effettuare l'accesso presso il server mail JMAP e quindi inserisce uno dei campi obbligatori;
- *Precondizioni*: L'utente non è autenticato;
- *Postcondizioni*: L'utente ancora non autenticato ha inserito la sua password.
- *Scenario principale*: 
  + L'utente deve fornire la Password necessaria per l'autenticazione.

#set list(marker: ([•], [--]))
- *Estensioni*: / - *Inclusioni*: / - *Generalizzazioni*: /

==== UC 1.2 - Errore Login

- *Attore principale*: Utente non autenticato;
- *Descrizione*: Un utente non autenticato vuole effettuare l'accesso presso il server mail JMAP per poter  inviare email, visualizzare le sue email o svolgere altre attività dettate dai requisiti;
- *Precondizioni*: L'utente non è autenticato;
- *Postcondizioni*: L'utente non è autenticato e ha ricevuto un messaggio di errore per il fallimento del login.
- *Scenario principale*: 
  + L'utente ha inserito delle credenziali non valide;
  + L'utente e ha ricevuto un messaggio di errore in seguito al fallimento del login.

#set list(marker: ([•], [--]))
- *Estensioni*: / - *Inclusioni*: / - *Generalizzazioni*: /

#pagebreak()

=== UC 2 - Scambio Email

#figure(image("//imgs/use_cases/scambio-email.svg", width: 100%))
#pagebreak()

==== UC 2.1 - Invio Email

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole inviare una email a uno o più destinatari;
- *Precondizioni*: Email non ancora inviata;
- *Postcondizioni*: Email inviata o visualizzazione di un messaggio di errore.
- *Scenario principale*: 
  + L'utente deve fornire l'oggetto del messaggio;
  + L'utente deve fornire il corpo del messaggio;
  + L'utente deve fornrie la lista dei destinatari.

#set list(marker: ([•], [--]))
- *Estensioni*:
  - Indirizzi Email non validi.
- *Inclusioni*: /
- *Generalizzazioni*: /

===== UC 2.1.1 - Inserimento Destinatari

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole inviare una email a uno o più destinatari e quindi procede con l'inserimento della lista dei destinatari;
- *Precondizioni*: Email non ancora inviata;
- *Postcondizioni*: Email non ancora inviata ma l'utente ha inserito la lista degli Indirizzi Email dei destinatari della Email;
- *Scenario principale*: 
  + L'utente deve fornire la lista dei destinatari.

#set list(marker: ([•], [--]))
- *Estensioni*: / - *Inclusioni*: / - *Generalizzazioni*: /

===== UC 2.1.2 - Inserimento Oggetto della Email

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole inviare una email a uno o più destinatari e quindi procede con l'inserimento dell'Oggetto della Email;
- *Precondizioni*: Email non ancora inviata;
- *Postcondizioni*: Email non ancora inviata ma l'utente ha inserito l'Oggetto della Email.
- *Scenario principale*: 
  + L'utente deve fornire l'Oggetto della Email.

#set list(marker: ([•], [--]))
- *Estensioni*: / - *Inclusioni*: / - *Generalizzazioni*: /

===== UC 2.1.3 - Inserimento Corpo del Messaggio della Email

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole inviare una email a uno o più destinatari e quindi procede con l'inserimento del Corpo del Messaggio della Email;
- *Precondizioni*: Email non ancora inviata;
- *Postcondizioni*: Email non ancora inviata ma l'utente ha inserito il Corpo del Messaggio della Email.
- *Scenario principale*: 
  + L'utente deve fornire il Corpo del Messaggio della Email.

#set list(marker: ([•], [--]))
- *Estensioni*: / - *Inclusioni*: / - *Generalizzazioni*: /

==== UC 2.2 - Formato Indirizzi Email non validi

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole inviare una email a uno o più destinatari;
- *Precondizioni*: Email non ancora inviata;
- *Postcondizioni*: Email non inviata e ricevimento di un messaggio di errore che cita gli Indirizzi Email di destinazione con un formato non valido;
- *Scenario principale*: 
  + L'utente ha inserito tutte le informazioni per inviare l'Email
  + L'utente ha ricevuto un messaggio che segnalava l'errore sui formati.

#set list(marker: ([•], [--]))
- *Estensioni*: / - *Inclusioni*: / - *Generalizzazioni*: /

==== UC 2.3 - Notifica di Indirizzi Email non esistenti

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole inviare una email a uno o più destinatari;
- *Precondizioni*: Email non ancora inviata;
- *Postcondizioni*: Email non inviata e ricevimento di un messaggio di errore che cita gli Indirizzi Email di destinazione non esistenti;
- *Scenario principale*: 
  + L'utente ha inserito tutte le informazioni per inviare l'Email
  + L'utente ha ricevuto un messaggio che segnalava l'inesistenza di alcuni degli Indirizzi Email di destinazione inseriti.

#set list(marker: ([•], [--]))
- *Estensioni*: / - *Inclusioni*: / - *Generalizzazioni*: /

==== UC 2.4 - Visualizza Lista Email

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole visualizzare la lista di tutte le Email che gli sono arrivate nella casella di posta elettronica;
- *Precondizioni*: L'utente vuole vedere la lista di tutte le Email;
- *Postcondizioni*: L'utente ottiene la lista di tutte le Email e la vede a video.
- *Scenario principale*: 
  + Un utente dopo essersi autenticato, vuole visualizzare la lista di tutte le Email che gli sono arrivate nella casella di posta elettronica.

#set list(marker: ([•], [--]))
- *Estensioni*: / - *Inclusioni*: / - *Generalizzazioni*: /

==== UC 2.4 - Visualizza Dettaglio Email

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole visualizzare i dettagli di una Email che gli è arrivata;
- *Precondizioni*: Visualizzazione lista email;
- *Postcondizioni*: Visualizzazione dettagli di una determinata email;
- *Scenario principale*: 
  + Un utente visualizza la lista di tutte le sue Email;
  + L'utente clicca su una delle email e ne visualizza quindi il dettaglio.

#set list(marker: ([•], [--]))
- *Estensioni*: / - *Inclusioni*: / - *Generalizzazioni*: /

#pagebreak()

=== UC 3 - Gestione delle cartelle

#figure(image("//imgs/use_cases/gestione-cartelle-1.svg", width: 100%))
#pagebreak()
#figure(image("//imgs/use_cases/gestione-cartelle-2.svg", width: 80%))
#pagebreak()

==== UC 3.1 - Creazione di una cartella

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole creare una cartella di posta elettronica;
- *Precondizioni*: Cartella di posta elettronica non ancora creata;
- *Postcondizioni*: Cartella di posta elettronica creata.
- *Scenario principale*: 
  + L'utente deve fornire il nome della cartella di posta elettronica che intende creare.

#set list(marker: ([•], [--]))
- *Estensioni*:
  - Nome o Identificativo cartella inserito non valido;
- *Inclusioni*: /
- *Generalizzazioni*: /

==== UC 3.1.1 - Inserimento Nome cartella

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole creare una cartella di posta elettronica e quindi inserisce uno dei campi obbligatori; 
- *Precondizioni*: Cartella di posta elettronica non ancora creata;
- *Postcondizioni*: Cartella di posta elettronica non ancora creata ma l'utente ha inserito il Nome.
- *Scenario principale*: 
  + L'utente deve fornire il nome della cartella di posta elettronica che intende creare.

#set list(marker: ([•], [--]))
- *Estensioni*: / - *Inclusioni*: / - *Generalizzazioni*: /

==== UC 3.1.2 - Inserimento Descrizione cartella

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole creare una cartella di posta elettronica e quindi inserisce uno dei campi obbligatori; 
- *Precondizioni*: Cartella di posta elettronica non ancora creata;
- *Postcondizioni*: Cartella di posta elettronica non ancora creata ma l'utente ha inserito la Descrizione.
- *Scenario principale*: 
  + L'utente deve fornire la Descrizione della cartella di posta elettronica che intende creare.

#set list(marker: ([•], [--]))
- *Estensioni*: / - *Inclusioni*: / - *Generalizzazioni*: /

==== UC 3.2 - Rinominazione di una cartella

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole rinominare una cartella di posta elettronica;
- *Precondizioni*: Cartella di posta elettronica non ancora rinominata;
- *Postcondizioni*: Cartella di posta elettronica rinominata;
- *Scenario principale*: 
  + L'utente deve fornire il nuovo nome per la cartella.

#set list(marker: ([•], [--]))
- *Estensioni*:
  - Nome o Identificativo cartella inserito non valido;
- *Inclusioni*: /
- *Generalizzazioni*: /

==== UC 3.2.1 - Inserimento Identificativo cartella da rinominare

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole rinominare una cartella di posta elettronica e quindi inserisce uno dei campi obbligatori; 
- *Precondizioni*: Cartella di posta elettronica non ancora rinominata;
- *Postcondizioni*: Cartella di posta elettronica non ancora rinominata ma l'utente ha fornito l'Identificativo della cartella che intende rinominare.
- *Scenario principale*: 
  + L'utente deve fornire l'identificativo della cartella di posta elettronica che intende rinominare.

#set list(marker: ([•], [--]))
- *Estensioni*: / - *Inclusioni*: / - *Generalizzazioni*: /

==== UC 3.2.2 - Inserimento nuovo Nome cartella

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole rinominare una cartella di posta elettronica e quindi inserisce uno dei campi obbligatori; 
- *Precondizioni*: Cartella di posta elettronica non ancora rinominata;
- *Postcondizioni*: Cartella di posta elettronica non ancora rinominata ma l'utente ha fornito il nuovo Nome per la cartella.
- *Scenario principale*: 
  + L'utente deve fornire il nuovo Nome per la cartella di posta elettronica che intende rinominare.

#set list(marker: ([•], [--]))
- *Estensioni*: / - *Inclusioni*: / - *Generalizzazioni*: /

==== UC 3.3 - Eliminazione di una cartella

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole eliminare una cartella di posta elettronica;
- *Precondizioni*: Cartella di posta elettronica non ancora eliminare;
- *Postcondizioni*: Cartella di posta elettronica eliminare;
- *Scenario principale*: 
  + L'utente deve fornire l'Identificativo della cartella che intende eliminare.

#set list(marker: ([•], [--]))
- *Estensioni*:
  - Nome cartella inserito non valido;
- *Inclusioni*: /
- *Generalizzazioni*: /

==== UC 3.3.1 - Inserimento Identificativo cartella da eliminare

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole eliminare una cartella di posta elettronica e quindi inserisce uno dei campi obbligatori; 
- *Precondizioni*: Cartella di posta elettronica non ancora rinominata;
- *Postcondizioni*: Cartella di posta elettronica non ancora rinominata ma l'utente ha fornito l'Identificativo della cartella che intende eliminare.
- *Scenario principale*: 
  + L'utente deve fornire l'Identificativo della cartella che intende eliminare.

#set list(marker: ([•], [--]))
- *Estensioni*: / - *Inclusioni*: / - *Generalizzazioni*: /

==== UC 3.4 - Nome cartella inserito non valido.

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole creare, rinominare o eliminare una cartella di posta elettronica;
- *Precondizioni*: Operazione sulla cartella non ancora effettuata;
- *Postcondizioni*: Operazione sulla cartella non effettuata, l'utente ha ricevuto un messaggio di errore.
- *Scenario principale*: 
  + L'utente ha fornito un Nome per la cartella in questione che non è valido.

#set list(marker: ([•], [--]))
- *Estensioni*: - *Inclusioni*: / - *Generalizzazioni*: /

==== UC 3.5 - Identificativo cartella non esistente.

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole creare, rinominare o eliminare una cartella di posta elettronica;
- *Precondizioni*: Operazione sulla cartella non ancora effettuata;
- *Postcondizioni*: Operazione sulla cartella non effettuata, l'utente ha ricevuto un messaggio di errore.
- *Scenario principale*: 
  + L'utente ha fornito un Identificativo non esistente per una cartella.

#set list(marker: ([•], [--]))
- *Estensioni*: - *Inclusioni*: / - *Generalizzazioni*: /

#pagebreak()

=== UC 4 - Gestione contenuti delle cartelle

#figure(image("//imgs/use_cases/gestione-contenuti-1.svg", width: 100%))
#pagebreak()
#figure(image("//imgs/use_cases/gestione-contenuti-2.svg", width: 75%))
#pagebreak()

==== UC 4.1 - Aggiungi oggetto alla cartella

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole aggiungere una Email ad una cartella;
- *Precondizioni*: Email ancora in nessuna cartella;
- *Postcondizioni*: Email trasferita nella cartella indicata.
- *Scenario principale*: 
  + L'utente deve fornire l'identificativo univoco della cartella in cui intende aggiungere l'Email;
  + L'utente deve fornire l'identificativo univoco dell'Email che intende aggiungere.

#set list(marker: ([•], [--]))
- *Estensioni*:
  - Errore Operazione;
- *Inclusioni*: /
- *Generalizzazioni*: /

===== UC 4.1.1 - Inserimento Identificativo Email

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole aggiungere una Email ad una cartella e fornisce un elemento obbligatorio;
- *Precondizioni*: Email ancora in nessuna cartella;
- *Postcondizioni*: Email ancora in nessuna cartella ma l'utente ha fornito l'identificativo della Email;
- *Scenario principale*: 
  + L'utente fornisce l'identificativo della Email che intende aggiungere.

#set list(marker: ([•], [--]))
- *Estensioni*: / - *Inclusioni*: / - *Generalizzazioni*: /

===== UC 4.1.2 - Inserimento Identificativo cartella

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole aggiungere una Email ad una cartella e fornisce un elemento obbligatorio;
- *Precondizioni*: Email ancora in nessuna cartella;
- *Postcondizioni*: Email ancora in nessuna cartella ma l'utente ha fornito l'identificativo della cartella;
- *Scenario principale*: 
  + L'utente fornisce l'identificativo della cartella dove aggiungere l'Email.

#set list(marker: ([•], [--]))
- *Estensioni*: / - *Inclusioni*: / - *Generalizzazioni*: /

==== UC 4.2 - Spostamento Email da una cartella ad un'altra

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole spostare una Email da una cartella ad un'altra;
- *Precondizioni*: Email ancora nella cartella di partenza;
- *Postcondizioni*: Email trasferita nella cartella di destinazione.
- *Scenario principale*: 
  + L'utente fornisce l'identificativo della Email che intende spostare;
  + L'utente fornisce l'Identificativo della cartella di partenza;
  + L'utente fornisce l'Identificativo della cartella di destinazione.
  
#set list(marker: ([•], [--]))
- *Estensioni*:
  - Errore Operazione;
- *Inclusioni*: /
- *Generalizzazioni*: /

===== UC 4.2.1 - Inserimento Identificativo Email

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole spostare una Email da una cartella ad un'altra e fornisce un elemento obbligatorio;
- *Precondizioni*: Email ancora nella cartella di partenza;
- *Postcondizioni*: Email ancora nella cartella di partenza ma l'utente ha fornito l'Identificativo della Email che intende spostare.
- *Scenario principale*: 
  + L'utente fornisce l'identificativo della Email che intende spostare.

#set list(marker: ([•], [--]))
- *Estensioni*: / - *Inclusioni*: / - *Generalizzazioni*: /

===== UC 4.2.2 - Inserimento Identificativo cartella di partenza

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole spostare una Email da una cartella ad un'altra e fornisce un elemento obbligatorio;
- *Precondizioni*: Email ancora nella cartella di partenza;
- *Postcondizioni*: Email ancora nella cartella di partenza ma l'utente ha fornito l'Identificativo della cartella di partenza.
- *Scenario principale*: 
  + L'utente fornisce l'identificativo della cartella di partenza.

#set list(marker: ([•], [--]))
- *Estensioni*: / - *Inclusioni*: / - *Generalizzazioni*: /

===== UC 4.2.3 - Inserimento Identificativo cartella di destinazione

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole spostare una Email da una cartella ad un'altra e fornisce un elemento obbligatorio;
- *Precondizioni*: Email ancora nella cartella di destinazione;
- *Postcondizioni*: Email ancora nella cartella di partenza ma l'utente ha fornito l'Identificativo della cartella di destinazione.
- *Scenario principale*: 
  + L'utente fornisce l'identificativo della cartella di destinazione.

#set list(marker: ([•], [--]))
- *Estensioni*: / - *Inclusioni*: / - *Generalizzazioni*: /

==== UC 4.3 - Elimina Email cartella

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole eliminare una Email da una cartella;
- *Precondizioni*: Email ancora nella cartella;
- *Postcondizioni*: Email eliminata dalla cartella.
- *Scenario principale*: 
  + L'utente deve fornire l'identificativo univoco dell'Email;
  + L'utente deve fornire l'identificativo univoco della cartella dove si trova;

#set list(marker: ([•], [--]))
- *Estensioni*:
  - Errore Operazione;
- *Inclusioni*: /
- *Generalizzazioni*: /

===== UC 4.3.1 - Inserimento Identificativo Email

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole eliminare una Email da una cartella ad un'altra e fornisce un elemento obbligatorio;
- *Precondizioni*: Email ancora nella cartella;
- *Postcondizioni*: Email ancora nella cartella ma l'utente ha fornito l'Identificativo della Email che intende eliminare.
- *Scenario principale*: 
  + L'utente fornisce l'identificativo della Email che intende eliminare.

#set list(marker: ([•], [--]))
- *Estensioni*: / - *Inclusioni*: / - *Generalizzazioni*: /

===== UC 4.3.2 - Inserimento Identificativo cartella

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole eliminare una Email da una cartella ad un'altra e fornisce un elemento obbligatorio;
- *Precondizioni*: Email ancora nella cartella;
- *Postcondizioni*: Email ancora nella cartella ma l'utente ha fornito l'Identificativo della cartella dove si trova l'Email che intende eliminare.
- *Scenario principale*: 
  + L'utente fornisce l'identificativo della cartella dove si trova l'Email che intende eliminare.

#set list(marker: ([•], [--]))
- *Estensioni*: / - *Inclusioni*: / - *Generalizzazioni*: /

==== UC 4.4 - Errore operazione

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole performare un'operazione su una Email che è su una cartella;
- *Precondizioni*: Operazione ancora non effettuata;
- *Postcondizioni*: Operazione non effettuata e ricevimento da parte dell'utente di un messaggio di errore;
- *Scenario principale*: 
  + L'utente performa un'operazione su una Email che è su una cartella;
  + Se viene fornito o un Nome o un Identificativo non valido l'utente riceverà un messaggio di errore.
  
#set list(marker: ([•], [--]))
- *Estensioni*:/ - *Inclusioni*: / - *Generalizzazioni*: /

#pagebreak()

=== UC 5 - Condivisione delle cartelle

#figure(image("//imgs/use_cases/condivisione-cartelle.svg", width: 100%))
#pagebreak()

==== UC 5.1 - Condividi una cartella con un'altro utente

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole condividere una cartella con un altro utente;
- *Precondizioni*: Cartella non ancora condivisa;
- *Postcondizioni*: Cartella condivisa.
- *Scenario principale*: 
  + L'utente deve fornire l'identificativo della cartella che vuole condividere;
  + L'utente deve condividere l'Indirizzo Email dell'utente con il quale vuole condividere la cartella.

#set list(marker: ([•], [--]))
- *Estensioni*:
  - Errore Utente non esistenete;
  - Errore Identificativo cartella non esistenete.
- *Inclusioni*: /
- *Generalizzazioni*: /

===== UC 5.1.1 - Inserimento Indirizzo Email Utente

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole condividere una cartella con un altro utente e quindi inserisce uno dei campi obbligatori;
- *Precondizioni*: Cartella non ancora condivisa;
- *Postcondizioni*: Cartella non ancora condivisa e fornita l'indirizzo Email dell'utente con il quale si vuole condividere la cartella.
- *Scenario principale*: 
  + L'utente deve fornire l'Indirizzo Email dell'utente con il quale vuole condividere la cartella.

#set list(marker: ([•], [--]))
- *Estensioni*: - *Inclusioni*: / - *Generalizzazioni*: /

===== UC 5.1.2 - Inserimento Identificativo cartella

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole condividere una cartella con un altro utente e quindi inserisce uno dei campi obbligatori;
- *Precondizioni*: Cartella non ancora condivisa;
- *Postcondizioni*: Cartella non ancora condivisa e fornita l'Identificativo della cartella che vuole condividere.
- *Scenario principale*: 
  + L'utente deve fornire l'Indirizzo univoco della cartella che intende condividere.

#set list(marker: ([•], [--]))
- *Estensioni*: - *Inclusioni*: / - *Generalizzazioni*: /

==== UC 5.2 - Rimozione della condivisione di una cartella

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole togliere la condivisione di una cartella ad un altro utente;
- *Precondizioni*: Cartella ancora condivisa;
- *Postcondizioni*: Cartella non più condivisa;
- *Scenario principale*: L'utente deve fornire il nome della cartella e il nome dell'utente.

#set list(marker: ([•], [--]))
- *Estensioni*:
  - Errore Utente non esistenete;
  - Errore Identificativo cartella non esistenete.
- *Inclusioni*: /
- *Generalizzazioni*: /

===== UC 5.2.1 - Inserimento Indirizzo Email Utente

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole condividere una cartella con un altro utente e quindi inserisce uno dei campi obbligatori;
- *Precondizioni*: Cartella ancora condivisa;
- *Postcondizioni*: Cartella ancora condivisa e fornita l'indirizzo Email dell'utente con il quale si vuole rimuovere la condivisione della cartella.
- *Scenario principale*: 
  + L'utente deve fornire l'Indirizzo Email dell'utente con il quale vuole rimuovere la condivisione della cartella.

#set list(marker: ([•], [--]))
- *Estensioni*: - *Inclusioni*: / - *Generalizzazioni*: /

===== UC 5.2.2 - Inserimento Identificativo cartella

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole condividere una cartella con un altro utente e quindi inserisce uno dei campi obbligatori;
- *Precondizioni*: Cartella ancora condivisa;
- *Postcondizioni*: Cartella ancora condivisa e fornito l'Identificativo della cartella con il quale si vuole rimuovere la condivisione.
- *Scenario principale*: 
  + L'utente deve fornire l'Identificativo della cartella con il quale si vuole rimuovere la condivisione.

#set list(marker: ([•], [--]))
- *Estensioni*: - *Inclusioni*: / - *Generalizzazioni*: /


==== UC 5.3 - Errore Utente non esistente

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole performare un'operazione di condivisione (aggiunta o rimozione);
- *Precondizioni*: Operazione ancora non effettuata;
- *Postcondizioni*: Operazione non effettuata e ricevimento da parte dell'utente di un messaggio di errore;
- *Scenario principale*: L'utente riceverà un messaggio di errore se l'operazione di condivisione non va a buon fine.

#set list(marker: ([•], [--]))
- *Estensioni*:/ - *Inclusioni*: / - *Generalizzazioni*: /

==== UC 5.4 - Errore Identificativo cartella non esistente

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole performare un'operazione di condivisione (aggiunta o rimozione);
- *Precondizioni*: Operazione ancora non effettuata;
- *Postcondizioni*: Operazione non effettuata e ricevimento da parte dell'utente di un messaggio di errore;
- *Scenario principale*: L'utente riceverà un messaggio di errore se l'operazione di condivisione non va a buon fine.

#set list(marker: ([•], [--]))
- *Estensioni*:/ - *Inclusioni*: / - *Generalizzazioni*: /

#pagebreak()

=== UC 6 - Stress Test

#figure(image("//imgs/use_cases/stress-test.svg", width: 100%))
#pagebreak()

==== UC 6.1 - Invio Massivo di Email

- *Attore principale*: Utente autenticato;
- *Descrizione*: Gli sviluppatori del sistema informativo vogliono poter effettuare un invio massivo di Email per fare dei benchmark sulla velocità di invio;
- *Precondizioni*: Email non inviate;
- *Postcondizioni*: Email inviate.
- *Scenario principale*: 
  + L'utente deve fornire gli Indirizzi Email dei destinatari;
  + L'utente deve fornire il Corpo del Messaggio dell'Email che voglio usare come test;
  + L'utente deve fornire l'Oggetto dell'Email che voglio usare come test;
  + L'utente deve fornire il numero di Email che intende inviare ad ogni destinatari.

#set list(marker: ([•], [--]))
- *Estensioni*:
  - Overflow 
- *Inclusioni*: /
- *Generalizzazioni*: /

===== UC 6.1.1 - Inserimento Destinatari

- *Attore principale*: Utente autenticato;
- *Descrizione*: Gli sviluppatori del sistema informativo vogliono poter effettuare un invio massivo di Email per fare dei benchmark sulla velocità di invio e quindi devono inserire un campo obbligatorio;
- *Precondizioni*: Email non inviate;
- *Postcondizioni*: Email non inviate ma si ha fornito l'Indirizzo Email dei destinatari.
- *Scenario principale*: 
  + L'utente deve fornire gli Indirizzi Email dei destinatari.

#set list(marker: ([•], [--]))
- *Estensioni*: / - *Inclusioni*: / - *Generalizzazioni*: /

===== UC 6.1.2 - Inserimento Corpo dell'Email

- *Attore principale*: Utente autenticato;
- *Descrizione*: Gli sviluppatori del sistema informativo vogliono poter effettuare un invio massivo di Email per fare dei benchmark sulla velocità di invio e quindi devono inserire un campo obbligatorio;
- *Precondizioni*: Email non inviate;
- *Postcondizioni*: Email non inviate ma si ha fornito il Corpo del messaggio dell'Email.
- *Scenario principale*: 
  + L'utente deve fornire il Corpo del messaggio dell'Email.

#set list(marker: ([•], [--]))
- *Estensioni*: / - *Inclusioni*: / - *Generalizzazioni*: /

===== UC 6.1.3 - Inserimento Oggetto dell'Email

- *Attore principale*: Utente autenticato;
- *Descrizione*: Gli sviluppatori del sistema informativo vogliono poter effettuare un invio massivo di Email per fare dei benchmark sulla velocità di invio e quindi devono inserire un campo obbligatorio;
- *Precondizioni*: Email non inviate;
- *Postcondizioni*: Email non inviate ma si ha fornito l'Oggetto dell'Email.
- *Scenario principale*: 
  + L'utente deve fornire l'Oggetto dell'Email.

#set list(marker: ([•], [--]))
- *Estensioni*: / - *Inclusioni*: / - *Generalizzazioni*: /

===== UC 6.1.4 - Inserimento Numero di copie dell'email da inviare ad ogni destinatario

- *Attore principale*: Utente autenticato;
- *Descrizione*: Gli sviluppatori del sistema informativo vogliono poter effettuare un invio massivo di Email per fare dei benchmark sulla velocità di invio e quindi devono inserire un campo obbligatorio;
- *Precondizioni*: Email non inviate;
- *Postcondizioni*: Email non inviate ma si ha fornito il numero di copie che vogliamo inviare per ogni destinatario.
- *Scenario principale*: 
  + L'utente deve fornire il Numero di copie dell'email da inviare ad ogni destinatario.

- *Estensioni*: - *Inclusioni*: / - *Generalizzazioni*: /

==== UC 6.2 - Fetch Massivo Di Email

- *Attore principale*: Utente autenticato;
- *Descrizione*: Gli sviluppatori del sistema informativo vogliono poter effettuare un fetch massivo di Email da una cartella precedentemente riempita con un numero arbitrario di Email;
- *Precondizioni*: Fetch non effettuato;
- *Postcondizioni*: Fetch effettuato.
- *Scenario principale*: 
  + L'utente deve fornire l'Identificativo della cartella;
  + L'utente deve fornire l'Identificativo della Email con la quale si vuole caricare la cartella;
  + L'utente deve fornire il Numero di copie di Email da copiare nella cartella.

#set list(marker: ([•], [--]))
- *Estensioni*:
  - Overflow 
- *Inclusioni*: /
- *Generalizzazioni*: /

===== UC 6.2.1 - Inserimento Identificativo cartelle

- *Attore principale*: Utente autenticato;
- *Descrizione*: Gli sviluppatori del sistema informativo vogliono poter effettuare un fetch massivo di Email da una cartella precedentemente riempita con un numero arbitrario di Email e quindi devono inserire un campo obbligatorio;
- *Precondizioni*: Fetch non effettuato;
- *Postcondizioni*: Fetch non effettuato e inserito l'Identificativo della cartella a partire dalla quale si vuole effettuare il test.
- *Scenario principale*: 
  + L'utente deve fornire l'Identificativo della cartella a partire dalla quale si vuole effettuare il test.;

#set list(marker: ([•], [--]))
- *Estensioni*: / - *Inclusioni*: / - *Generalizzazioni*: /

===== UC 6.2.2 - Inserimento Identificativo Email

- *Attore principale*: Utente autenticato;
- *Descrizione*: Gli sviluppatori del sistema informativo vogliono poter effettuare un fetch massivo di Email da una cartella precedentemente riempita con un numero arbitrario di Email e quindi devono inserire un campo obbligatorio;
- *Precondizioni*: Fetch non effettuato;
- *Postcondizioni*: Fetch non effettuato e inserito l'Identificativo dell'Email che si vuole caricare massivamente nella cartella.
- *Scenario principale*: 
  + L'utente deve fornire l'Identificativo dell'Email che si vuole caricare massivamente nella cartella.

#set list(marker: ([•], [--]))
- *Estensioni*: / - *Inclusioni*: / - *Generalizzazioni*: /

===== UC 6.2.3 - Inserimento Numero di copie di Email da copiare nella cartella

- *Attore principale*: Utente autenticato;
- *Descrizione*: Gli sviluppatori del sistema informativo vogliono poter effettuare un fetch massivo di Email da una cartella precedentemente riempita con un numero arbitrario di Email e quindi devono inserire un campo obbligatorio;
- *Precondizioni*: Fetch non effettuato;
- *Postcondizioni*: Fetch non effettuato e inserito il  Numero di copie di Email da copiare nella cartella.
- *Scenario principale*: 
  + L'utente deve fornire il Numero di copie di Email da copiare nella cartella
  
#set list(marker: ([•], [--]))
- *Estensioni*: / - *Inclusioni*: / - *Generalizzazioni*: /

==== UC 6.3 - Overflow

- *Attore principale*: Utente autenticato;
- *Descrizione*: Il sistema è stato testato in maniera eccessiva e il numero di operazioni effettuate ha mandato in crash il sistema;
- *Precondizioni*: Email non inviate;
- *Postcondizioni*: Email non inviate e visualizzazione di un messaggio di errore;
- *Scenario principale*: All'utente che effettua questa operazione viene mostrato un messaggio di errore che esplicita le motivazioni del crash del sistema.

#set list(marker: ([•], [--]))
- *Estensioni*:
- *Inclusioni*: /
- *Generalizzazioni*: /

#pagebreak()

=== UC 7 - Sincronizzazione

#figure(image("//imgs/use_cases/sincronizzazione.svg", width: 100%))
#pagebreak()

==== UC 7.1 - Sincronizzazione casella posta di arrivo

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole sincronizzare la propria casella di posta elettronica con le ultime Email arrivate;
- *Precondizioni*: Cartella di posta elettronica non ancora sincronizzata;
- *Postcondizioni*: Cartella di posta elettronica sincronizzata;
- *Scenario principale*: L'utente vedrà le ultime email arrivate nella sua casella di posta elettronica.

#set list(marker: ([•], [--]))
- *Estensioni*: /
- *Inclusioni*: /
- *Generalizzazioni*: /

==== UC 7.2 - Sincronizzazione contatti da rubrica

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole sincronizzare la propria rubrica con gli ultimi contatti;
- *Precondizioni*: Rubrica non ancora sincronizzata;
- *Postcondizioni*: Rubrica sincronizzata;
- *Scenario principale*: L'utente si vedrà aggiornare la rubrica con gli utlimi contatti.

#set list(marker: ([•], [--]))
- *Estensioni*: /
- *Inclusioni*: /
- *Generalizzazioni*: /

==== UC 7.3 - Sincronizzazione calendari

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole sincronizzare il proprio calendario con i nuovi eventi;
- *Precondizioni*: Calendario non sincronizzato;
- *Postcondizioni*: Calendario sincronizzato;
- *Scenario principale*: L'utente si vedrà aggiornare il suo calendario con gli ultimi eventi.

#set list(marker: ([•], [--]))
- *Estensioni*: /
- *Inclusioni*: /
- *Generalizzazioni*: /

#pagebreak()

=== UC 8 - Calendari

#pagebreak()

==== UC 8.1 - Creazione di un calendario

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole creare un calendario;
- *Precondizioni*: Calendario non creato;
- *Postcondizioni*: Calendario creato;
- *Scenario principale*: L'utente dovrà fornire il nome del calendario che si vuole creare.

#set list(marker: ([•], [--]))
- *Estensioni*: Nome calendario duplicato o non valido
- *Inclusioni*: /
- *Generalizzazioni*: /

==== UC 8.2 - Rinominazione di un calendario

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole rinominare un calendario;
- *Precondizioni*: Calendario non rinominato;
- *Postcondizioni*: Calendario rinominato;
- *Scenario principale*: L'utente dovrà fornire il nome del calendario da rinominare e il nuovo nome.

#set list(marker: ([•], [--]))
- *Estensioni*: Nome calendario duplicato o non valido
- *Inclusioni*: /
- *Generalizzazioni*: /

==== UC 8.3 - Eliminazione di un calendario

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole eliminare un calendario;
- *Precondizioni*: Calendario non eliminato;
- *Postcondizioni*: Calendario eliminato;
- *Scenario principale*: L'utente dovrà fornire il nome del calendario che intende eliminare.

#set list(marker: ([•], [--]))
- *Estensioni*: Nome calendario duplicato o non valido
- *Inclusioni*: /
- *Generalizzazioni*: /

==== UC 8.4 - Condivisione di un calendario con un altro utente

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole condividere un calendario con un altro utente;
- *Precondizioni*: Calendario non condiviso;
- *Postcondizioni*: Calendario condiviso;
- *Scenario principale*: L'utente dovrà fornire il nome del calendario che vuole condividere e il nome dell'utente a cui vuole condividere.

#set list(marker: ([•], [--]))
- *Estensioni*: Nome calendario duplicato o non valido
- *Inclusioni*: /
- *Generalizzazioni*: /

==== UC 8.5 - Nome calendario duplicato o non valido

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole fare un'operazione di quelle citate in precedenza con i calendario;
- *Precondizioni*: Operazione sul calendario non effettuata;
- *Postcondizioni*: Operazione sul calendario non effettuata e utente informato con un messaggio di errore;
- *Scenario principale*: L'utente in seguito ad aver fatto un'operazione sul calendario inserendo un nome duplicato o non valido si vedrà apparire un messaggio di errore.

#set list(marker: ([•], [--]))
- *Estensioni*: /
- *Inclusioni*: /
- *Generalizzazioni*: /

#pagebreak()

=== UC 9 - Appuntamenti

#pagebreak()

==== UC 9.1 - Creazione di un appuntamento a calendario

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole creare un appuntamento a calendario;
- *Precondizioni*: Appuntamento non creato;
- *Postcondizioni*: Appuntamento creato;
- *Scenario principale*: L'utente dovrà fornire le informazioni per creare un appuntamento e il nome del calendario dove inserirlo.

#set list(marker: ([•], [--]))
- *Estensioni*: Nome calendario duplicato o non valido
- *Inclusioni*: /
- *Generalizzazioni*: /

==== UC 9.2 - Modifica di un appuntamento a calendario

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole modificare un appuntamento a calendario;
- *Precondizioni*: Appuntamento non modificato;
- *Postcondizioni*: Appuntamento modficato;
- *Scenario principale*: L'utente dovrà fornire le informazioni per le modifiche dell'appuntamento e l'identificativo dell'appuntamento da modificare.

#set list(marker: ([•], [--]))
- *Estensioni*: Nome calendario duplicato o non valido
- *Inclusioni*: /
- *Generalizzazioni*: /

==== UC 9.3 - Eliminazione di un appuntamento a calendario

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole eliminare un appuntamento a calendario;
- *Precondizioni*: Appuntamento non eliminato;
- *Postcondizioni*: Appuntamento eliminato;
- *Scenario principale*: L'utente dovrà fornire l'identificativo dell'appuntamento da eliminare.

#set list(marker: ([•], [--]))
- *Estensioni*: Nome calendario duplicato o non valido
- *Inclusioni*: /
- *Generalizzazioni*: /

==== UC 9.4 - Condivisione di un appuntamento nel calendario condiviso con un altro utente

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole condividere un appuntamento a calendario di con un'altro utente;
- *Precondizioni*: Appuntamento non condiviso;
- *Postcondizioni*: Appuntamento condiviso;
- *Scenario principale*: L'utente dovrà fornire le informazioni relative all'appuntamento da creare, dell'utente che possiede il calendario e il nome del calendario dove avverrà la condivisione.

#set list(marker: ([•], [--]))
- *Estensioni*: Nome calendario duplicato o non valido
- *Inclusioni*: /
- *Generalizzazioni*: /

==== UC 9.5 - Nome calendario duplicato o non valido

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole fare un'operazione di quelle citate in precedenza con gli appuntamenti;
- *Precondizioni*: Operazione sull'appuntamento non effettuata;
- *Postcondizioni*: Operazione sull'appuntamento non effettuata e utente informato con un messaggio di errore;
- *Scenario principale*: L'utente in seguito ad aver fatto un'operazione sul appuntamento inserendo un nome duplicato o non valido per il calendario si vedrà apparire un messaggio di errore.

#set list(marker: ([•], [--]))
- *Estensioni*: /
- *Inclusioni*: /
- *Generalizzazioni*: /

#pagebreak()

=== UC 10 - Contatti

#figure(image("//imgs/use_cases/contatti-1.svg", width: 100%))
#pagebreak()

==== UC 10.1 - Creazione di un contatto

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole creare un contatto;
- *Precondizioni*: Contatto non creato;
- *Postcondizioni*: Contatto creato;
- *Scenario principale*: L'utente dovrà fornire le informazioni per creare un contatto (es. Nome, Cognome, Indirizzo Email).

#set list(marker: ([•], [--]))
- *Estensioni*: Indirizzo Email contatto duplicato o non valido
- *Inclusioni*: /
- *Generalizzazioni*: /

==== UC 10.2 - Modifica di un contatto

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole modificare un contatto;
- *Precondizioni*: Contatto non modificato;
- *Postcondizioni*: Contatto modificato;
- *Scenario principale*: L'utente dovrà fornire le informazioni per modificare un contatto (es. Nome, Cognome, Indirizzo Email).

#set list(marker: ([•], [--]))
- *Estensioni*: Indirizzo Email contatto duplicato o non valido
- *Inclusioni*: /
- *Generalizzazioni*: /

==== UC 10.3 - Eliminazione di un contatto

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole eliminare un contatto;
- *Precondizioni*: Contatto non eliminato;
- *Postcondizioni*: Contatto eliminato;
- *Scenario principale*: L'utente dovrà fornire l'indirizzo Email del contatto da eliminare.

#set list(marker: ([•], [--]))
- *Estensioni*: Indirizzo Email contatto duplicato o non valido
- *Inclusioni*: /
- *Generalizzazioni*: /

==== UC 10.4 - Condivisione di un contatto con un'altro utente

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole condividere un contatto con un'altro utente;
- *Precondizioni*: Contatto non condiviso;
- *Postcondizioni*: Contatto condiviso;
- *Scenario principale*: L'utente dovrà fornire l'indirizzo Email del contatto che intende condividere e l'indirizzo Email dell'utente con il quale vuole effettaure la condivisione.

#set list(marker: ([•], [--]))
- *Estensioni*: Indirizzo Email contatto duplicato o non valido
- *Inclusioni*: /
- *Generalizzazioni*: /


==== UC 10.5 - Indirizzo Email contatto duplicato o non valido

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole fare un'operazione di quelle citate in precedenza con i contatti;
- *Precondizioni*: Operazione sul contatto non effettuata;
- *Postcondizioni*: Operazione sul contatto non effettuata e utente informato con un messaggio di errore;
- *Scenario principale*: L'utente in seguito ad aver fatto un'operazione sul contatto inserendo un indirizzo Email duplicato o non valido si vedrà apparire un messaggio di errore.

#set list(marker: ([•], [--]))
- *Estensioni*: /
- *Inclusioni*: /
- *Generalizzazioni*: /

#pagebreak()

=== UC 11 - Rubriche

#figure(image("//imgs/use_cases/rubriche-1.svg", width: 100%))
#pagebreak()

==== UC 11.1 - Creazione di una rubrica

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole creare una rubrica;
- *Precondizioni*: Rubrica non creata;
- *Postcondizioni*: Rubrica creata;
- *Scenario principale*: L'utente dovrà fornire il nome della rubrica che vuole creare e la lista dei contatti da includere nella rubrica.

#set list(marker: ([•], [--]))
- *Estensioni*: Nome rubrica duplicato o non valido
- *Inclusioni*: /
- *Generalizzazioni*: /

==== UC 11.2 - Modifica di una rubrica

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole modificare una rubrica;
- *Precondizioni*: Rubrica non modificata;
- *Postcondizioni*: Rubrica modficata;
- *Scenario principale*: L'utente dovrà fornire le informazioni il nome della rubrica che vuole modificare e la nuova lista di contatti da associare a quella rubrica o in alternativa il nuovo nome della modifica in caso di rinominazione.

#set list(marker: ([•], [--]))
- *Estensioni*: Nome rubrica duplicato o non valido
- *Inclusioni*: /
- *Generalizzazioni*: /

==== UC 11.3 - Eliminazione di una rubrica

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole eliminare un una rubrica;
- *Precondizioni*: Rubrica non eliminata;
- *Postcondizioni*: Rubrica eliminata;
- *Scenario principale*: L'utente dovrà fornire il nome della rubrica che intende eliminare.

#set list(marker: ([•], [--]))
- *Estensioni*: Nome rubrica duplicato o non valido
- *Inclusioni*: /
- *Generalizzazioni*: /

==== UC 11.4 - Condivisione di una rubrica con un altro utente

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole condividere una intera rubrica  con un'altro utente;
- *Precondizioni*: Rubrica non condivisa;
- *Postcondizioni*: Rubrica condivisa;
- *Scenario principale*: L'utente dovrà fornire il nome della rubrica che intende condividere e l'indirizzo Email dell'utente con il quale vuole effettuare la condivisione.

#set list(marker: ([•], [--]))
- *Estensioni*: Nome calendario duplicato o non valido
- *Inclusioni*: /
- *Generalizzazioni*: /


==== UC 11.5 - Nome rubrica duplicato o non valido

- *Attore principale*: Utente autenticato;
- *Descrizione*: Un utente autenticato vuole fare un'operazione di quelle citate in precedenza con le rubriche;
- *Precondizioni*: Operazione sulla rubrica non effettuate;
- *Postcondizioni*: Operazione sulla rubrica non effettuate e utente informato con un messaggio di errore;
- *Scenario principale*: L'utente in seguito ad aver fatto un'operazione sulla rubrica inserendo un nome duplicato o non valido per la rubrica si vedrà apparire un messaggio di errore.

#set list(marker: ([•], [--]))
- *Estensioni*: /
- *Inclusioni*: /
- *Generalizzazioni*: /

#pagebreak()


= *Requisiti*
In questa sezione andremo ad elencare tutti i requisiti del capitolato, ragruppandoli per tipologia. Ogni requisito è identificato univocamente da un codice il cui formato è definito all'interno del documento `Norme Di Progetto`.\
Per praticità andremo a riportarla anche di seguito. Ogni requisito è caratterizzato da un codice alfanumerico così formato:\
#set align(center) 
*R-[numero]-[tipo]-[priorità]*
#set align(left)
dove:
- *Numero*: un progressivo a tre cifre che parte dal numero 001.

- *Tipo*: la tipologia di requisito tra le seguenti:
  - *F (funzionale)*: indica i servizi che il sistema mette a disposizione.
  - *V (vincolo)*: specifica i requisiti di vincolo dettati dal capitolato.
  - *Q (qualità)*: definisce i requisiti di qualità contenuti nel capitolato.
  - *P (prestazionale)*: esplicita i requisiti che provengono da esigenze prestazionali del sistema.
  
- *Priorità*: il grado di priorità assegnato al requisito con un numero da 1 a 3:
  + Requisito obbligatorio che deve essere tassativamente soddisfatto dalla soluzione informatica proposta.
  + Requisito desiderabile il cui soddisfacimento è apprezzato dal committente.
  + Requisito facoltativo, la cui realizzazione è totalmente a discrezione del team in base all'andamento del progetto.

In alcuni casi verrà esplicitato nella colonna relativa alle fonti se il requisito è stato chiaramente dettato dal Capitolato o se è stato dedotto implicitamente da altri requisiti obbligatori (in questo caso parleremo di requisito interno).


== Requisiti di funzionalità
#requirements("#f9fac5", (
  [R-001-F-2],
  [L'utente deve avere la possibilità di autenticarsi all'interno del sistema.],
  [
    UC1.1\
    Interno
  ],
  [R-002-F-2],
  [È necessario che l'utente fornisca la sua Email per procedere con l'autenticazione.],
  [
    UC1.1.1\
    Interno
  ],
  [R-003-F-2],
  [È necessario che l'utente fornisca la sua Password per procedere con l'autenticazione.],
  [
    UC1.1.2\
    Interno
  ],
  [R-004-F-2],
  [È necessario che l'utente riceva un messaggio di errore se l'autenticazione non va a buon fine.],
  [
    UC1.2\
    Interno
  ],

  [],
  [],
  [],

  [R-005-F-1],
  [L'utente deve avere la possibilità di inviare una Email ad uno o più destinatari.],
  [
    UC2.1\
    Capitolato
  ],
  [R-006-F-1],
  [È necessario che l'utente fornisca i vari indirizzi Email dei destinatari per procedere con l'invio.],
  [
    UC2.1.1\
    Interno
  ],
  [R-007-F-1],
  [È necessario che l'utente fornisca l'oggetto della Email prima di procedere con l'invio.],
  [
    UC2.1.2\
    Interno
  ],
  [R-008-F-1],
  [È necessario che l'utente fornisca il corpo del messaggio prima di procedere con l'invio.],
  [
    UC2.1.3\
    Interno
  ],
  [R-009-F-1],
  [È necessario che l'utente riceva un messaggio di errore se il formato di uno degli Indirizzi Email di destinazione forniti non ha un formato valido.],
  [
    UC2.2\
    Interno
  ],
  [R-010-F-1],
  [È necessario che l'utente riceva una notifica che specifichi quali degli Indirizzi Email di destinazione forniti non esiste.],
  [
    UC2.3\
    Interno
  ],
  [R-011-F-1],
  [L'utente deve avere la possibilità di visualizzare tutte le Email che gli sono arrivate nella casella di arrivo di posta elettronica.],
  [
    UC2.4\
    Capitolato
  ],
  [R-012-F-1],
  [L'utente deve avere la possibilità di visualizzare i dettagli di una delle Email presenti nella casella di arrivo di posta elettronica.],
  [
    UC2.5\
    Capitolato
  ],
  
  [],
  [],
  [],

  [R-013-F-1],
  [L'utente deve avere la possibilità di creare una cartella di posta elettronica.],
  [
    UC3.1\
    Capitolato
  ],
  [R-014-F-1],
  [È necessario che l'utente fornisca un Nome per la cartella di posta elettronica che intende creare.],
  [
    UC3.1.1\
    Interno
  ],
  [R-015-F-1],
  [È necessario che l'utente fornisca una Descrizione per la cartella di posta elettronica che intende creare.],
  [
    UC3.1.2\
    Interno
  ],
  [R-016-F-1],
  [L'utente deve avere la possibilità di rinominare una cartella di posta elettronica.],
  [
    UC3.2\
    Capitolato
  ],
  [R-017-F-1],
  [È necessario che l'utente fornisca l'Identificativo della cartella di posta elettronica che intende rinominare.],
  [
    UC3.2.1\
    Interno
  ],
  [R-018-F-1],
  [È necessario che l'utente fornisca il nuovo Nome per la cartella di posta elettronica che intende rinominare.],
  [
    UC3.2.2\
    Interno
  ],
  [R-019-F-1],
  [L'utente deve avere la possibilità di eliminare una cartella di posta elettronica.],
  [
    UC3.3\
    Capitolato
  ],
  [R-020-F-1],
  [È necessario che l'utente fornisca l'Identificativo della cartella di posta elettronica che intende eliminare.],
  [
    UC3.3.1\
    Interno
  ],
  [R-021-F-1],
  [È necessario che l'utente riceva un messaggio di errore se inserisce un Nome non valido.],
  [
    UC3.4\
    Interno
  ],
  [R-022-F-1],
  [È necessario che l'utente riceva un messaggio di errore se inserisce un Identificativo non esistente.],
  [
    UC3.5\
    Interno
  ],
  
  [],
  [],
  [],

  [R-023-F-1],
  [L'utente deve avere la possibilità di aggiungere una Email ad una cartella.],
  [
    UC4.1\
    Capitolato
  ],
  [R-024-F-1],
  [È necessario che l'utente fornisca l'identificativo univoco della Email.],
  [
    UC4.1.1\
    Interno
  ],
  [R-025-F-1],
  [È necessario che l'utente fornisca l'identificativo univoco della cartella dove aggiungere l'Email.],
  [
    UC4.1.2\
    Interno
  ],
  [R-026-F-1],
  [L'utente deve avere la possibilità di spostare un oggetto da una cartella di partenza ad una cartella di destinazione.],
  [
    UC4.2\
    Capitolato
  ],
  [R-027-F-1],
  [È necessario che l'utente fornisca l'identificativo univoco della Email.],
  [
    UC4.2.1\
    Interno
  ],
  [R-028-F-1],
  [È necessario che l'utente fornisca l'identificativo univoco della cartella dove si trova attualmente l'Email.],
  [
    UC4.2.2\
    Interno
  ],
  [R-028-F-1],
  [È necessario che l'utente fornisca l'identificativo univoco della cartella dove spostare l'Email.],
  [
    UC4.2.3\
    Interno
  ],
  [R-029-F-1],
  [L'utente deve avere la possibilità di eliminare una Email da una cartella.],
  [
    UC4.3\
    Capitolato
  ],
  [R-030-F-1],
  [È necessario che l'utente fornisca l'identificativo univoco dell'Email che intende eliminare.],
  [
    UC4.3.1\
    Interno
  ],
  [R-031-F-1],
  [È necessario che l'utente fornisca l'identificativo univoco della cartella dove si trova attualmente l'Email da eliminare.],
  [
    UC4.3.2\
    Interno
  ],
    
  [],
  [],
  [],

  [R-032-F-1],
  [L'utente deve avere la possibilità di condividere una cartella con un altro utente.],
  [
    UC5.1\
    Capitolato
  ],
  [R-033-F-1],
  [È necessario che l'utente fornisca l'Indirizzo Email dell'utente con il quale effettuare la condivisione.],
  [
    UC5.1.1\
    Interno
  ],
  [R-034-F-1],
  [È necessario che l'utente fornisca l'Identificativo della cartella che vuole condividere.],
  [
    UC5.1.2\
    Interno
  ],
  [R-035-F-1],
  [L'utente deve avere la possibilità di rimuovere la condivisione di una cartella con un utente.],
  [
    UC5.2\
    Capitolato
  ],
  [R-036-F-1],
  [È necessario che l'utente l'Indirizzo Email dell'utente con il quale effettuare la condivisione.],
  [
    UC5.2.1\
    Interno
  ],
  [R-037-F-1],
  [È necessario che l'utente l'Identificativo della cartella che si vuole condividere.],
  [
    UC5.2.2\
    Interno
  ],

  [],
  [],
  [],

  [R-038-F-1],
  [L'utente deve avere la possibilità di effettuare un invio massivo di Email per testare il sistema informatico.],
  [
    UC6.1\
    Capitolato
  ],
  [R-039-F-1],
  [È necessario che l'utente fornisca la lista dei destinatari.],
  [
    UC6.1.1\
    Interno
  ],
  [R-040-F-1],
  [È necessario che l'utente fornisca il Corpo dell'Email che si vuole inviare.],
  [
    UC6.1.2\
    Interno
  ],
  [R-041-F-1],
  [È necessario che l'utente fornisca l'Oggetto dell'Email che si vuole inviare.],
  [
    UC6.1.3\
    Interno
  ],
  [R-042-F-1],
  [È necessario che l'utente fornisca il Numero di copie dell'email da inviare ad ogni destinatario.],
  [
    UC6.1.4\
    Interno
  ],
  [R-043-F-1],
  [L'utente deve avere la possibilità di effettuare un fetch massivo delle Email da una cartella caricata artificialmente con un numero arbitrario di Email.],
  [
    UC6.2\
    Capitolato
  ],
  [R-044-F-1],
  [È necessario che l'utente fornisca l'Identificativo cartella dove effettuare il fetch.],
  [
    UC6.2.1\
    Interno
  ],
  [R-045-F-1],
  [È necessario che l'utente fornisca l'Identificativo dell'Email che si vuole caricare massivamente nella cartellla.],
  [
    UC6.2.2\
    Interno
  ],
  [R-046-F-1],
  [È necessario che l'utente fornisca il Numero di copie di Email da copiare nella cartella.],
  [
    UC6.2.3\
    Interno
  ],
  [R-047-F-1],
  [È necessario che l'utente venga informato se accade un overflow del sistema dovuto all'eccessivo carico applicativo.],
  [
    UC6.3\
    Interno
  ],

  [],
  [],
  [],

  [R-030-F-1],
  [L'utente deve avere la possibilità di sincronizzare la propria casella di posta elettronica.],
  [
    UC7.1\
    Capitolato
  ],
  [R-031-F-1],
  [L'utente deve avere la possibilità di sincronizzare la rubrica con gli ultimi contatti.],
  [
    UC7.2\
    Capitolato
  ],
  [R-032-F-1],
  [L'utente deve avere la possibilità di sincronizzare il proprio calendario con gli ultimi eventi.],
  [
    UC7.3\
    Capitolato
  ],
  
  [],
  [],
  [],

  [R-033-F-1],
  [L'utente deve avere la possibilità di creare un calendario.],
  [
    UC8.1\
    Capitolato
  ],
  [R-034-F-1],
  [L'utente deve avere la possibilità di rinominare un calendario.],
  [
    UC8.2\
    Capitolato
  ],
  [R-035-F-1],
  [L'utente deve avere la possibilità di eliminare un calendario.],
  [
    UC8.3\
    Capitolato
  ],
  [R-036-F-1],
  [L'utente deve avere la possibilità di condividere un calendario con un altro utente.],
  [
    UC8.4\
    Capitolato
  ],
  [R-037-F-1],
  [È necessario che l'utente visualizzi un messaggio di errore se inserisce un nome del calendario duplicato o non valido.],
  [
    UC8.5\
    Capitolato
  ],
  
  [],
  [],
  [],

  [R-038-F-1],
  [L'utente deve avere la possibilità di creare un appuntamento per un calendario.],
  [
    UC9.1\
    Capitolato
  ],
  [R-039-F-1],
  [L'utente deve avere la possibilità di modificare un appuntamento per un calendario.],
  [
    UC9.2\
    Capitolato
  ],
  [R-040-F-1],
  [L'utente deve avere la possibilità di eliminare un appuntamento per un calendario.],
  [
    UC9.3\
    Capitolato
  ],
  [R-041-F-1],
  [L'utente deve avere la possibilità di condividere un appuntamento con un calendario di un altro utente.],
  [
    UC9.4\
    Capitolato
  ],
  [R-042-F-1],
  [È necessario che l'utente visualizzi un messaggio di errore se inserisce un nome del calendario duplicato o non valido.],
  [
    UC9.5\
    Capitolato
  ],

  [],
  [],
  [],

  [R-043-F-1],
  [L'utente deve avere la possibilità di creare un contatto.],
  [
    UC10.1\
    Capitolato
  ],
  [R-044-F-1],
  [L'utente deve avere la possibilità di modificare un contatto.],
  [
    UC10.2\
    Capitolato
  ],
  [R-045-F-1],
  [L'utente deve avere la possibilità di eliminare un contatto.],
  [
    UC10.3\
    Capitolato
  ],
  [R-046-F-1],
  [L'utente deve avere la possibilità di condividere un contatto con un altro utente.],
  [
    UC10.4\
    Capitolato
  ],
  [R-047-F-1],
  [È necessario che l'utente visualizzi un messaggio di errore se inserisce un indirizzo Email duplicato o non valido per il contatto.],
  [
    UC10.5\
    Capitolato
  ],

  [],
  [],
  [],

  [R-048-F-1],
  [L'utente deve avere la possibilità di creare una rubrica.],
  [
    UC11.1\
    Capitolato
  ],
  [R-049-F-1],
  [L'utente deve avere la possibilità di modificare una rubrica.],
  [
    UC11.2\
    Capitolato
  ],
  [R-050-F-1],
  [L'utente deve avere la possibilità di eliminare una rubrica.],
  [
    UC11.3\
    Capitolato
  ],
  [R-051-F-1],
  [L'utente deve avere la possibilità di condividere una rubrica con un altro utente.],
  [
    UC11.4\
    Capitolato
  ],
  [R-052-F-1],
  [È necessario che l'utente visualizzi un messaggio di errore se inserisce un nome duplicato o non valido per la rubrica.],
  [
    UC11.5\
    Capitolato
  ],
  


  

  
))


== Requisiti di vincolo
#requirements("#f7baba", ( 
  [R-001-V-1],
  [È necessario implementare un client di posta elettronica implementando una delle librerie nel seguente sito: https://jmap.io/, scegliendone una a scelta (e di conseguenza non c'è nessun vincolo sulla scelta del linguaggio di programmazione.)],
  [
    Capitolato
  ],
  [R-002-V-1],
  [È necessario implementare un server con un linguaggio di programmazione a scelta ,compreso di database, che implementi gli endpoint che la libreria client di posta elettronica deve contattare per poter funzionare.],
  [
    Capitolato
  ],
  [R-003-V-1],
  [È necessario che il server sia integrabile con una tecnologia containerizzabile come docker.],
  [
    Capitolato
  ]
))

== Requisiti di qualità
#requirements("#bbfabe", ( 
  [R-001-Q-1],
  [Bisogna realizzare e consegnare un documento di analisi dei requisiti con un diagramma dei casi d'uso in formato UML],
  [
    Capitolato
  ],
  [R-002-Q-1],
  [Bisogna realizzare e consegnare uno schema della base di dati in formato di diagramma entità relazione],
  [Capitolato],
  [R-003-Q-1],
  [Bisogna implementare ed esporre a lato backend una lista di endpoint cosicchè un client possa fruire del servizio],
  [Capitolato],
  [R-004-Q-1],
  [Bisogna realizzare e consegnare una lista dei bug risolti durante la fase di sviluppo],
  [Capitolato],
  [R-005-Q-1],
  [Bisogna realizzare e consegnare un docker file contenente la componente applicativa del server],
  [Capitolato],
  [R-006-Q-1],
  [Bisogna realizzare il codice sorgente con un sistema di versionamento],
  [Capitolato],
  [R-007-Q-1],
  [Bisogna effettuare una serie di stress test (test di carico) per ogni caso d'uso implementato e riportare con un apposito documento i benchmark del sistema in ogni situazione: normale, di carico e di sovraccarico],
  [Capitolato],
  [R-008-Q-1],
  [La codifica dell'intera soluzione informativa deve essere conferme con quanto riportato nel `Piano di Qualifica`],
  [Capitolato],
))

== Requisiti prestazionali
#requirements("#bffffd", ( 
  [R-001-P-1],
  [I benchmark del nostro sistema informatico deve equiparare o superare in termini di performance i test di carico effettuati sui sistemi che implementano l'attuale protocollo IMAP (a parità di hardware)],
  [Capitolato],
  [R-002-P-3],
  [Sarebbe preferibile implementare una coda nel server mail capace di immagazzinare le email che non possono ancora essere elaborate a causa di un carico applicativo eccessivo],
  [Capitolato],
))

#pagebreak()

= Tracciamento Requisiti

=== Tracciamento fonti-requisiti
#tracking((
  [RA-F-1],
  [
    UC1 \
    UC2 \
    UC3 \
  ],
  [RA-F-1],
  [
    Capitolato
  ]
))

=== Tracciamento requisiti-fonte
#tracking((
  [RA-F-1],
  [
    UC1 \
    UC2 \
    UC3
  ],
  [RA-F-1],
  [
    Capitolato
  ]
))

== Riepilogo
#summary((
  [Funzionali],
  [52],
  [0],
  [0],
  [Vincolo],
  [3],
  [0],
  [0],
  [Qualità],
  [8],
  [0],
  [0],
  [Prestazionali],
  [1],
  [0],
  [1],
))

== Conclusioni
I requisiti del prodotto possono essere modificati durante il suo ciclo di vita per apportare miglioramenti o aggiornamenti. In caso di disponibilità di risorse sufficienti, il gruppo considererà di aggiungere nuovi requisiti per migliorare e aumentare il valore del prodotto. Pertanto, eventuali aggiornamenti saranno presi in considerazione in futuro.