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
    "0.1.1", "2023-12-17" , (p.fabbian, p.vedovato, p.bonavigo, p.amadori), p.furno,
    [
      Correzioni alle sezioni di introduzione\
      Correzioni alle sezioni di descrizione generale del prodotto\
      Casi d'uso: eliminazione degli stress test\
      Aggiunte le caption ad immagini e tabelle
    ],
    "0.1.0", "2023-12-14" , (p.fabbian, p.vedovato, p.bonavigo), p.bulychov,
    [
      Casi d'uso: ridefinizione degli attori\
      Casi d'uso: approfondire la gestione degli errori\
      Casi d'uso: separare gli errori provenienti da condition differenti
    ],
    "0.0.9", "2023-12-2" , p.furno, p.vedovato,
    [
      Casi d'uso: rimozione dei requisiti di vincolo\
      Casi d'uso: rimozione dei requisiti di prestazione
    ],
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
  show_images_list: true,
  show_tables_list: true,
)

= *Introduzione*
== Scopo del documento
L'`Analisi dei Requisiti` è un documento fondamentale per tutti i progetti di sviluppo software che vogliono essere in ottemperanza con gli standard di qualità definiti dalla materia di ingegneria del software.\
Lo scopo del documento è quello di definire le funzionalità che il sistema sarà in grado di offrire, ovvero i requisiti obbligatori, desiderati e opzionali che devono essere soddisfatti dal software sviluppato al fine di essere conforme alle richieste fatte dal proponente.\
L'analisi non deve fornire la soluzione al problema, ma deve essere consapevole della sua fattibilità tecnologica (definendo di conseguenza un confine tra analisi del problema e il suo design, quindi la soluzione).
In particolare, le finalità di questo documento possono essere definite e sintetizzate nei seguenti punti:\

- *Definire le esigenze dei proponenti*:\
Il documento di `Analisi dei Requisiti` fonda le sue basi sulle esigenze del proponente, ovvero le sue aspettative in merito al prodotto software che dovremmo andare a sviluppare. Queste richieste verranno raccolte tramite i documenti forniti dal proponente _#(p.zextras)_ e dalle varie interviste svolte durante lo svolgimento del progetto.\

- *Tracciare i requisiti del sistema*:\
Una volta raccolte le esigenze del proponente, il documento di `Analisi dei Requisiti` deve identificare tutti i casi d'uso necessari e i corrispettivi requisiti associati ad ognuno di essi suddividendoli in funzionali e non funzionali.\

- *Verificazione e validazione dei requisiti*:\
Il processo di #glossary("verifica dei requisiti") ha lo scopo di garantire che le attività siano svolte in modo corretto, senza errori, ponendo in primo piano il way of working del gruppo.\
La #glossary("validazione dei requisiti") invece consiste nel accertare che il prodotto corrisponda alle attese, ponendo attenzione al prodotto software finale.\

- *Fornire una base per la progettazione del sistema*:\
Il documento di `Analisi dei Requisiti` fornisce una base per la progettazione del sistema, in quanto definisce le funzionalità che il sistema deve offrire. I programmatori possono utilizzare il documento per comprendere le esigenze del proponente e identificare le soluzioni più appropriate per soddisfare tali esigenze.\

- *Minimizzare i rischi e ottimizzare i costi:*:\
Un documento di `Analisi dei Requisiti` completo e accurato può aiutare a ridurre i rischi del progetto e quantificare al meglio i suoi costi. Ciò è dovuto al fatto che il documento aiuta a garantire che i requisiti siano effettivamente corretti e completi, evitando così errori e ritardi nello sviluppo del sistema.

Arrivati al punto in cui si ha una chiara visione dello scopo e delle funzionalità del prodotto, dei suoi requisiti e degli attori del sistema software, in questo documento se ne darà una formale rappresentazione grafica utilizzando i diagrammi dei casi d'uso.

#pagebreak()


== Scopo del prodotto

=== Spiegazione dello scenario di riferimento
Il proponente del capitolato d'appalto C8 è l'azienda vicentina _#(p.zextras)_. Il core business di _#(p.zextras)_ si incentra sulla vendita del loro prodotto di punta: Carbonio. Carbonio può essere definito come una #glossary("suite di funzionalità") volte a incrementare la produttività di un'organizzazione o team che si affida a questo prodotto.\
Infatti, questa soluzione software permette di raggruppare insieme un pool di utenti offrendo loro una serie di strumenti fondamentali per la collaborazione in un contesto aziendale, come:
+ *Messaggistica avanzata*: fornendo un tool di posta elettronica moderna, veloce e intuitiva, profili multipli, account e cartelle condivise, anteprima degli allegati e strumenti di gestione come tag e filtri;
+ Calendari ed eventi pianificati;
+ Videochiamate e chat;
+ Editing collaborativo;
+ Gestione file condivisi.

Questo applicativo è implementato con un software backend (installabile solamente su un Server Ubuntu) e i client possono usufruire di questa soluzione comodamente tramite browser previo apposito login.

=== Il protocollo JMAP
Tra tutte le funzionalità offerte da Carbonio, _#(p.zextras)_ pone particolare attenzione, nel suo capitolato, sulla funzionalità di messaggistica che utilizza come base per la sua implementazione la posta elettronica. Questa tecnologia utilizza IMAP (Internet Message Access Protocol), un #glossary("protocollo") di comunicazione utilizzato per
accedere alle email conservate su un server di posta compatibile. Risale al lontano 1986, come
successore del precedente protocollo POP (Post Office Protocol) e consente un accesso più
avanzato e interattivo al contenuto delle caselle di posta elettronica, ad esempio permettendo la
sincronizzazione di una casella di posta in più dispositivi.\
Negli ultimi anni però è nato JMAP: un interessante alternativa a IMAP, il cui pregio principale rispetto a IMAP è la velocità, in quanto sfrutta il formato JSON (JavaScript Object Notation) e definisce un set di API per permettere ai client di accedere ai dati e gestirli in modo efficiente.

=== Cosa richiede _#(p.zextras)_?
_#(p.zextras)_ non ci chiede direttamente di apporre modifiche a Carbonio,
ma di implementare un sistema informatico capace di sfruttare il protocollo JMAP per l'invio di email tra diversi utenti. In particolare dovremmo andare a programmare un *server mail* che metta a disposizione a un qualsiasi tipo di *client* (capace di supportare il protocollo JMAP ovviamente) una serie di funzionalità (che detteremo in seguito con la lista dei requisiti).\
A questo punto, utilizzando uno dei client open source reperibili nelle repository pubbliche saremmo già in grado di sfruttare questa tecnologia di posta elettronica grazie al server che abbiamo implementato.\
Il reale scopo di _#(p.zextras)_ però non è tanto quello di ricevere il #glossary("know how") che noi andremo ad acquisire programmando il server, ma quello di ricevere i risultati dei benchmark che andremo a realizzare sul sistema rapportandolo alle specifiche hardware e software dell'impianto utilizzato.\
Basandosi su questi risultati _#(p.zextras)_ deciderà quindi se è vantaggioso apportare delle modifiche a Carbonio e implementare un sistema di posta elettronica che sfrutti il protocollo JMAP come quello sviluppato nella nostra demo o se abbandonare l'idea.


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

Inoltre il prodotto deve poter essere eseguibile in un container Docker, permettendo all'azienda di effettuare in batteria i test di funzionalità e di performance, ed é sviluppato per essere scalabile mediante l’inizializzazione di più nodi stateless.

== Caratteristiche utente

=== Utenti di Carbonio
Gli utenti della soluzione software Carbonio sono principalmente:
+  Agenzie di telecomunicazioni, provider (ISP) e operatori mobili poiché si integra perfettamente ai servizi preesistenti e garantisce un reale valore aggiunto ai propri clienti;
+ Il settore pubblico e i settori regolamentati, poiché fornisce un ambiente di lavoro digitale sicuro e conforme alle normative locali come, ad esempio, le leggi sulla protezione dei dati e sulla sovranità del dato;
+ Utenti privati e aziende private tradizionali che desiderano una piattaforma open source per l'e-mail e la collaborazione digitale che offra una soluzione di collaborazione online on-premise.

=== Utenti del nostro prodotto
Il prodotto che il gruppo Overture andrà a sviluppare ha la sola funzionalità di testare una nuova tecnologia, quindi non ha né un segmento di mercato ben definito né un vero e proprio scopo commerciale.
Gli utenti del nostro prodotto quindi sono tutti coloro che desiderano testare il nuovo protocollo JMAP e capire le motivazioni che hanno spinto gli
sviluppatori di tutto il mondo e la #glossary("IETF") a mettere in discussione un protocollo ampiamente
utilizzato come IMAP, cercando di crearne uno più efficiente e moderno

#pagebreak()

== Tecnologie e analisi della struttura di progetto
Come discusso nei paragrafi precedenti, lo scopo finale del nostro prodotto è realizzare un'infrastruttura server, con il fine di realizzare gli stress test sui requisiti funzionali richiesti dal proponente.\
Per questo motivo, dato che il risultato finale è incentrato sulla performance del protocollo, non ci interessa andare a realizzare un vero e proprio client di posta elettronica completo (es. Thunderbird) perchè per testare i servizi messi a disposizione dal nostro server mail andremo ad utilizzare un client open source.\
Per realizzare gli stress test invece, sappiamo che non ci sono client  che forniscono una soluzione già pronta (i programmatori di tutto il mondo hanno realizzato dei client commerciali, non per svolgere test) quindi è possibile che dovremo andare a realizzare noi un piccolo client con una serie di funzionalità ristrette ma capace di performare un benchmark sull'efficienza del protocollo.

/*
toglierei questa parte, mi sembra più progettazione che analisi

=== Struttura del back-end
Per realizzare il back-end per la nostra infrastruttura informatica ci verrà messo a disposizione un VPS (Virtual Private Server) direttamente da _#(p.zextras)_ con sistema operativo Linux già installato (l'hardware verrà scelto da _#(p.zextras)_ in base alle loro preferenze).\
Successivamente sul server andremo ad installare un sistema di container come Docker.
Questo perchè Docker ci permette di lanciare in maniera molto semplice una o più istanze del servizio consentendoci di distribuire e ricalibrare le risorse in qualsiasi ambiente e di eseguire in batteria test di funzionalità e di performance.

=== Realizzazione del software client
_#(p.zextras)_ non ci ha imposto dei vincoli sul design del software ma ci ha caldamente consigliato di utilizzare una delle seguenti librerie https://jmap.io/software.html per realizzare il client capace di effettuare i test e di scegliere uno tra i client già pronti per provare le funzionalità del nostro server sempre dallo stesso repository citato sopra.\
È importante sottolineare che con JMAP il client e il corrispettivo server mail sono capaci di inviare e ricevere email utilizzando un unico protocollo (JMAP) senza dover utilizzare i due protocolli SMTP e IMAP, tipici dei  comuni sistemi di posta elettronica.

==== Realizzazione del software back-end
Allo stesso modo del client, non abbiamo vincoli sul design del software ma dobbiamo chiaramente adattarlo allo standard di posta elettronica JMAP. Dunque il back-end dovrà esporre i servizi necessari per soddisfare i requisiti richiesti mediante l'esposizione di determinati endpoint da cui ogni client che rispetta lo standard potrà usufruire.\
Il servizio sviluppato deve essere scalabile mediante l’inizializzazione di più nodi #glossary("stateless").\
Per stateless si intende che alla richiesta di uno specifico client fatta ad un’architettura contenente più di un’istanza del servizio dato, può rispondere una qualsiasi istanza del servizio, poichè nessuna istanza contiene dati specifici di stato rispetto alle richieste dei client.

*/

#pagebreak()


= *Casi d'uso*
== Obiettivi
Questa sezione identifica e descrive tutti i casi d'uso individuati a seguito dell'analisi del capitolato d'appalto e dei dialoghi con l'azienda proponente.

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
- Client di posta elettronica.

=== Alcuni dettagli sui client
Il sistema informatico che andremo a sviluppare in questo progetto ha il fine di testare una nuova tecnologia (il protocollo JMAP) e riportare i risultati dei benchmark effettuati su un determinato server. Per questo motivo, essendo quindi tutto finalizzato a svolgere dei test, non ci è stato esplicitamente riferito di gestire particolari aspetti legati alla sicurezza informatica, i client hanno a disposizione le seguenti funzionalità (#ref(<Funzionalità>, supplement: "Cap")) fruibili tramite API in modo che noi sviluppatori possiamo testare l'efficienza di queste operazioni con gli stress test.\
Si nota però che in un sistema di posta elettronica, per poter visualizzare le email bisogna prima identificarsi con il server mail fornendo appunto la propria email e la password associata. Allo stesso modo per inviare una email il server mail avrà bisogno di sapere il mittente e quindi ha bisogno di riconoscere il client che intende effettuare questa operazione.\
Per questo motivo nel nostro sistema andremo a prevedere un classico sistema di autenticazione composto da email e password.

#pagebreak()

== Gestione degli Errori
Nei diagrammi dei casi d'uso che andremo a riportare nelle sezioni successive, troveremo spesso dei casi d'uso di errore volti a garantire la consistenza dei dati.\
Per esempio: se un utente vuole creare una rubrica gli verrà chiesto di fornire la lista dei contatti da inserire nella rubrica appena creata, se l'utente fornisce dei contatti che non sono associati al suo account è chiaro che il sistema debba fornire un errore.\
A livello pratico però utilizzando un normale client di posta elettronica dotato di interfaccia grafica nel momento in cui vogliamo effettuare il tipo di operazione sopra descritta saremo totalmente guidati dall'interfaccia grafica: ci verrà messa a disposizione la nostra lista dei contatti e andremo a selezionare i contatti da aggiungere alla rubrica, dunque non c'è modo di fornire dei contatti non validi.\
In seguito però ad una profonda analisi, il gruppo Overture ha stabilito che il focus principale del progetto è quello di implementare un backend che metta a disposizione un servizio tramite API dunque il client che fruisce dei nostri endpoints non è sotto il nostro dominio (potrebbe essere anche un #glossary("client CLI"), da linea di comando, dove è l'utente che manualmente digita con la tastiera i nomi dei contatti da inserire nella rubrica) e quindi dobbiamo prevedere dei controlli aggiuntivi che garantiscano l'integrità dei dati inviati da ogni client.

#pagebreak()


== Elenco dei casi d'uso

=== UC 1 - Login Base

#figure(image("//imgs/use_cases/login-base.svg", width: 100%), caption: [UC1 - Login Base])
#pagebreak()

==== UC 1.1 - Effettuazione Login

- *Attore principale*: Client di Posta Elettronica Non Autenticato;
- *Descrizione*: Un client di posta elettronica che non ha ancora effettuato l'accesso vuole autenticarsi presso il server mail JMAP per poter successivamente inviare e visualizzare le proprie email o svolgere altre attività dettate dai requisiti funzionali;
- *Precondizioni*: Un client di posta elettronica che non ha ancora effettuato l'accesso;
- *Postcondizioni*: Un client di posta elettronica che ha effettuato l'accesso o che ha ricevuto un errore specifico sul motivo del fallimento dell'autenticazione.
- *Scenario principale*: \
  + L'utente che utilizza il client deve fornire il suo Indirizzo Email;
  + L'utente che utilizza il client deve fornire la sua Password necessaria per l'autenticazione.

#set list(marker: ([•], [--]))
- *Estensioni*:
  - Errore formato Indirizzo Email non valido;
  - Errore Password non valida.
- *Inclusioni*: /
- *Generalizzazioni*: /

===== UC 1.1.1 - Inserimento Indirizzo Email personale

- *Attore principale*: Client di Posta Elettronica Non Autenticato;
- *Descrizione*: Un client di posta elettronica che non ha ancora effettuato l'accesso vuole autenticarsi presso il server mail JMAP e quindi inserisce uno dei campi obbligatori;
- *Precondizioni*: Un client di posta elettronica che non ha ancora effettuato l'accesso;
- *Postcondizioni*: Un client di posta elettronica che non ha ancora effettuato l'accesso ma ha inserito il suo Indirizzo Email personale.
- *Scenario principale*: 
  + L'utente che utilizza il client deve fornire il suo Indirizzo Email personale necessario per l'autenticazione.

==== UC 1.1.2 - Inserimento Password

- *Attore principale*: Client di Posta Elettronica Non Autenticato;
- *Descrizione*: Un client di posta elettronica che non ha ancora effettuato l'accesso vuole autenticarsi presso il server mail JMAP e quindi inserisce uno dei campi obbligatori;
- *Precondizioni*: Un client di posta elettronica che non ha ancora effettuato l'accesso;
- *Postcondizioni*: Un client di posta elettronica che non ha ancora effettuato l'accesso ma ha inserito la sua Password.
- *Scenario principale*: 
  +  L'utente che utilizza il client deve fornire la Password necessaria per l'autenticazione.

==== UC 1.2 - Errore formato Indirizzo Email non valido

- *Attore principale*: Client di Posta Elettronica Non Autenticato;
- *Descrizione*: Un client di posta elettronica che non ha ancora effettuato l'accesso vuole autenticarsi presso il server mail JMAP per poter successivamente inviare e visualizzare le proprie email o svolgere altre attività dettate dai requisiti funzionali ma ha inserito un indirizzo email con un formato errato;
- *Precondizioni*: Un client di posta elettronica che non ha ancora effettuato l'accesso;
- *Postcondizioni*: Un client di posta elettronica che ha provato ad effettuare l'accesso e ha ricevuto un messaggio di errore.
- *Scenario principale*: 
  + L'utente ha inserito un Indirizzo Email che non aveva un formato valido;
  + L'utente ha ricevuto un messaggio di errore specifico che descriveva il problema.

==== UC 1.3 - Errore Password non valida

- *Attore principale*: Client di Posta Elettronica Non Autenticato;
- *Descrizione*: Un client di posta elettronica che non ha ancora effettuato l'accesso vuole autenticarsi presso il server mail JMAP per poter successivamente inviare e visualizzare le proprie email o svolgere altre attività dettate dai requisiti funzionali ma ha inserito una password non valida;
- *Precondizioni*: Un client di posta elettronica che non ha ancora effettuato l'accesso;
- *Postcondizioni*: Un client di posta elettronica che ha provato ad effettuare l'accesso e ha ricevuto un messaggio di errore.
- *Scenario principale*: 
  + L'utente ha inserito una Password non valida per l'Indirizzo Email inserito in precedenza;
  + L'utente ha ricevuto un messaggio di errore specifico che descriveva il problema.
  
#pagebreak()

=== UC 2 - Scambio Email

#figure(image("//imgs/use_cases/scambio-email-1.svg", width: 100%), caption: [UC2 - Scambio Email])
#pagebreak()
#figure(image("//imgs/use_cases/scambio-email-2.svg", width: 100%), caption: [Scambio Email - Sottocasi])
#pagebreak()

==== UC 2.1 - Invio Email

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole inviare una email a uno o più destinatari;
- *Precondizioni*: Email non ancora inviata;
- *Postcondizioni*: Email inviata o visualizzazione di un messaggio di errore specifico.
- *Scenario principale*: 
  + L'utente che utilizza il client che deve fornire la lista degli Indirizzi Email dei destinatari;
  + L'utente che utilizza il client deve fornire l'oggetto dell'Email;
  + L'utente che utilizza il client deve fornire il corpo del messaggio dell'Email.

#set list(marker: ([•], [--]))
- *Estensioni*:
  - Formato di Indirizzi Email non valido;
  - Notifica di Indirizzi Email non esistenti.
- *Inclusioni*: /
- *Generalizzazioni*: /

===== UC 2.1.1 - Inserimento Indirizzi Email Destinatari

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole inviare una email a uno o più destinatari e quindi inserisce uno dei campi obbligatori;
- *Precondizioni*: Email non ancora inviata;
- *Postcondizioni*: Email non ancora inviata ma l'utente ha inserito la lista degli Indirizzi Email dei destinatari della Email.
- *Scenario principale*: 
  + L'utente che utilizza il client deve fornire la lista degli Indirizzi Email dei destinatari.

===== UC 2.1.2 - Inserimento Oggetto della Email

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole inviare una email a uno o più destinatari e quindi inserisce uno dei campi obbligatori;
- *Precondizioni*: Email non ancora inviata;
- *Postcondizioni*: Email non ancora inviata ma l'utente ha inserito l'Oggetto della Email.
- *Scenario principale*: 
  + L'utente che utilizza il client deve fornire l'Oggetto della Email.


===== UC 2.1.3 - Inserimento Corpo del Messaggio della Email

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole inviare una email a uno o più destinatari e quindi inserisce uno dei campi obbligatori;
- *Postcondizioni*: Email non ancora inviata ma l'utente ha inserito il Corpo del Messaggio dell'Email.
- *Scenario principale*: 
  + L'utente che utlizza il client deve fornire il Corpo del Messaggio della Email.


==== UC 2.2 - Formato Indirizzi Email non validi

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole inviare una email a uno o più destinatari;
- *Precondizioni*: Email non ancora inviata;
- *Postcondizioni*: Email non inviata e ricevimento di un messaggio di errore che cita gli Indirizzi Email di destinazione inseriti con un formato non valido.
- *Scenario principale*: 
  + L'utente che utilizza il client ha inserito tutte le informazioni per inviare l'Email ma uno o più degli Indirizzi Email di destinazione inseriti non aveva un formato valido;
  + L'utente che utilizza il client ha ricevuto un messaggio che segnalava l'errore specifico.


==== UC 2.3 - Notifica di Indirizzi Email non esistenti

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole inviare una email a uno o più destinatari;
- *Precondizioni*: Email non ancora inviata;
- *Postcondizioni*: Email non inviata e ricevimento di un messaggio di errore che cita gli Indirizzi Email di destinazione inseriti non esistenti;
- *Scenario principale*: 
  + L'utente  che utilizza il client ha inserito tutte le informazioni per inviare l'Email ma uno o più degli Indirizzi Email di destinazione inseriti non esisteva;
  + L'utente che utilizza il client ha ricevuto un messaggio che segnalava l'inesistenza di alcuni degli Indirizzi Email di destinazione inseriti.


==== UC 2.4 - Visualizza Lista Email

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole visualizzare la lista di tutte le Email che gli sono arrivate nella casella di posta elettronica;
- *Precondizioni*: L'utente vuole vedere la lista di tutte le Email;
- *Postcondizioni*: L'utente ottiene la lista di tutte le Email e la vede a video.
- *Scenario principale*: 
  + Un utente dopo essersi autenticato, vuole visualizzare la lista di tutte le Email che gli sono arrivate nella casella di posta elettronica.

#set list(marker: ([•], [--]))
- *Estensioni*: / - *Inclusioni*: / - *Generalizzazioni*: /

==== UC 2.5 - Visualizza Dettaglio Email

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole visualizzare i dettagli di una Email che gli è arrivata;
- *Precondizioni*: Visualizzazione lista email;
- *Postcondizioni*: Visualizzazione dettagli di una determinata email;
- *Scenario principale*: 
  + Un utente visualizza la lista di tutte le sue Email;
  + L'utente clicca su una delle email e ne visualizza quindi il dettaglio.

#set list(marker: ([•], [--]))
- *Estensioni*: / - *Inclusioni*: / - *Generalizzazioni*: /

==== UC 2.6 - Identificativo Email fornito non valido

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole visualizzare i dettagli di una Email che gli è arrivata;
- *Precondizioni*: Visualizzazione lista email;
- *Postcondizioni*: Tentativo di visualizzazione di una email il cui identificativo non esiste e quindi visualizzazione di un messaggio di errore specifico;
- *Scenario principale*: 
  + Un utente visualizza la lista di tutte le sue Email;
  + L'utente fornisce un identificativo di una Email che non esiste e quindi riceve un messaggio di errore specifico.

#pagebreak()

=== UC 3 - Gestione delle cartelle

#figure(image("//imgs/use_cases/gestione-cartelle-1.svg", width: 100%), caption: [UC 3 - Gestione delle cartelle])
#pagebreak()
#figure(image("//imgs/use_cases/gestione-cartelle-2.svg", width: 80%), caption: [Gestione delle cartelle - Sottocasi])
#pagebreak()

==== UC 3.1 - Creazione di una cartella

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole creare una cartella di posta elettronica;
- *Precondizioni*: Cartella di posta elettronica non ancora creata;
- *Postcondizioni*: Cartella di posta elettronica creata.
- *Scenario principale*: 
  + L'utente deve fornire il nome della cartella di posta elettronica che intende creare;
  + L'utente deve fornire la descrizione della cartella di posta elettronica che intende creare;

#set list(marker: ([•], [--]))
- *Estensioni*:
  - Nome cartella inserito non valido.
- *Inclusioni*: /
- *Generalizzazioni*: /

==== UC 3.1.1 - Inserimento Nome cartella

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole creare una cartella di posta elettronica e quindi inserisce uno dei campi obbligatori; 
- *Precondizioni*: Cartella di posta elettronica non ancora creata;
- *Postcondizioni*: Cartella di posta elettronica non ancora creata ma l'utente ha inserito il Nome.
- *Scenario principale*: 
  + L'utente deve fornire il nome della cartella di posta elettronica che intende creare.


==== UC 3.1.2 - Inserimento Descrizione cartella

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole creare una cartella di posta elettronica e quindi inserisce uno dei campi obbligatori; 
- *Precondizioni*: Cartella di posta elettronica non ancora creata;
- *Postcondizioni*: Cartella di posta elettronica non ancora creata ma l'utente ha inserito la Descrizione.
- *Scenario principale*: 
  + L'utente deve fornire la Descrizione della cartella di posta elettronica che intende creare.


==== UC 3.2 - Rinominazione di una cartella

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole rinominare una cartella di posta elettronica;
- *Precondizioni*: Cartella di posta elettronica non ancora rinominata;
- *Postcondizioni*: Cartella di posta elettronica rinominata;
- *Scenario principale*: 
  + L'utente deve fornire l'identificativo della cartella che intende rinominare;
  + L'utente deve fornire il nuovo nome per la cartella.

#set list(marker: ([•], [--]))
- *Estensioni*:
  - Nome cartella inserito non valido.
- *Inclusioni*: /
- *Generalizzazioni*: /

==== UC 3.2.1 - Inserimento Identificativo cartella da rinominare

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole rinominare una cartella di posta elettronica e quindi inserisce uno dei campi obbligatori; 
- *Precondizioni*: Cartella di posta elettronica non ancora rinominata;
- *Postcondizioni*: Cartella di posta elettronica non ancora rinominata ma l'utente ha fornito l'Identificativo della cartella che intende rinominare.
- *Scenario principale*: 
  + L'utente deve fornire l'identificativo della cartella di posta elettronica che intende rinominare.


==== UC 3.2.2 - Inserimento nuovo Nome cartella

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole rinominare una cartella di posta elettronica e quindi inserisce uno dei campi obbligatori; 
- *Precondizioni*: Cartella di posta elettronica non ancora rinominata;
- *Postcondizioni*: Cartella di posta elettronica non ancora rinominata ma l'utente ha fornito il nuovo Nome per la cartella.
- *Scenario principale*: 
  + L'utente deve fornire il nuovo Nome per la cartella di posta elettronica che intende rinominare.


==== UC 3.3 - Eliminazione di una cartella

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole eliminare una cartella di posta elettronica;
- *Precondizioni*: Cartella di posta elettronica non ancora eliminare;
- *Postcondizioni*: Cartella di posta elettronica eliminata;
- *Scenario principale*: 
  + L'utente deve fornire l'Identificativo della cartella che intende eliminare.

#set list(marker: ([•], [--]))
- *Estensioni*:
  - Nome cartella inserito non valido.
- *Inclusioni*: /
- *Generalizzazioni*: /

==== UC 3.3.1 - Inserimento Identificativo cartella da eliminare

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole eliminare una cartella di posta elettronica e quindi inserisce uno dei campi obbligatori; 
- *Precondizioni*: Cartella di posta elettronica non ancora rinominata;
- *Postcondizioni*: Cartella di posta elettronica non ancora rinominata ma l'utente ha fornito l'Identificativo della cartella che intende eliminare.
- *Scenario principale*: 
  + L'utente deve fornire l'Identificativo della cartella che intende eliminare.

==== UC 3.4 - Nome cartella inserito non valido.

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole creare, rinominare o eliminare una cartella di posta elettronica;
- *Precondizioni*: Operazione sulla cartella non ancora effettuata;
- *Postcondizioni*: Operazione sulla cartella non effettuata, l'utente ha ricevuto un messaggio di errore specifico.
- *Scenario principale*: 
  + L'utente ha fornito un Nome per la cartella in questione che non è valido;
  + L'utente ha ricevuto un messaggio di errore specifico.


==== UC 3.5 - Identificativo cartella non esistente.

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole creare, rinominare o eliminare una cartella di posta elettronica;
- *Precondizioni*: Operazione sulla cartella non ancora effettuata;
- *Postcondizioni*: Operazione sulla cartella non effettuata, l'utente ha ricevuto un messaggio di errore.
- *Scenario principale*: 
  + L'utente ha fornito un Identificativo non associato a nessuna cartella;
  + L'utente ha ricevuto un messaggio di errore specifico.

#pagebreak()

=== UC 4 - Gestione contenuti delle cartelle

#figure(image("//imgs/use_cases/gestione-contenuti-1.svg", width: 90%), caption: [UC 4 - Gestione contenuti delle cartelle])
#pagebreak()
#figure(image("//imgs/use_cases/gestione-contenuti-2.svg", width: 75%), caption: [Gestione contenuti delle cartelle - Sottocasi])
#pagebreak()

==== UC 4.1 - Aggiungi oggetto alla cartella

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole aggiungere una Email ad una cartella;
- *Precondizioni*: Email ancora in nessuna cartella;
- *Postcondizioni*: Email aggiunta alla cartella indicata.
- *Scenario principale*: 
  + L'utente deve fornire l'identificativo univoco della cartella in cui intende aggiungere l'Email;
  + L'utente deve fornire l'identificativo univoco dell'Email che intende aggiungere.

#set list(marker: ([•], [--]))
- *Estensioni*:
  - Errore Identificativo Email fornito non esistente;
  - Errore Identificativo Cartella fornito non esistente.
- *Inclusioni*: /
- *Generalizzazioni*: /

===== UC 4.1.1 - Inserimento Identificativo Email

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole aggiungere una Email ad una cartella e quindi fornisce un campo obbligatorio;
- *Precondizioni*: Email ancora in nessuna cartella;
- *Postcondizioni*: Email ancora in nessuna cartella ma l'utente ha fornito l'identificativo della Email;
- *Scenario principale*: 
  + L'utente fornisce l'identificativo della Email che intende aggiungere.


===== UC 4.1.2 - Inserimento Identificativo cartella

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole aggiungere una Email ad una cartella e quindi fornisce un campo obbligatorio;
- *Precondizioni*: Email ancora in nessuna cartella;
- *Postcondizioni*: Email ancora in nessuna cartella ma l'utente ha fornito l'identificativo della cartella;
- *Scenario principale*: 
  + L'utente fornisce l'identificativo della cartella dove aggiungere l'Email.


==== UC 4.2 - Spostamento Email da una cartella ad un'altra

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole spostare una Email da una cartella ad un'altra;
- *Precondizioni*: Email ancora nella cartella di partenza;
- *Postcondizioni*: Email trasferita nella cartella di destinazione.
- *Scenario principale*: 
  + L'utente fornisce l'identificativo della Email che intende spostare;
  + L'utente fornisce l'Identificativo della cartella di partenza;
  + L'utente fornisce l'Identificativo della cartella di destinazione.
  
#set list(marker: ([•], [--]))
- *Estensioni*:
  - Errore Identificativo Email fornito non esistente;
  - Errore Identificativo Cartella fornito non esistente.
- *Inclusioni*: /
- *Generalizzazioni*: /

===== UC 4.2.1 - Inserimento Identificativo Email

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole spostare una Email da una cartella ad un'altra e quindi fornisce un campo obbligatorio;
- *Precondizioni*: Email ancora nella cartella di partenza;
- *Postcondizioni*: Email ancora nella cartella di partenza ma l'utente ha fornito l'Identificativo della Email che intende spostare.
- *Scenario principale*: 
  + L'utente fornisce l'identificativo dell'Email che intende spostare.


===== UC 4.2.2 - Inserimento Identificativo cartella di partenza

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole spostare una Email da una cartella ad un'altra e quindi fornisce un campo obbligatorio;
- *Precondizioni*: Email ancora nella cartella di partenza;
- *Postcondizioni*: Email ancora nella cartella di partenza ma l'utente ha fornito l'Identificativo della cartella di partenza.
- *Scenario principale*: 
  + L'utente fornisce l'identificativo della cartella di partenza.
  

===== UC 4.2.3 - Inserimento Identificativo cartella di destinazione

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole spostare una Email da una cartella ad un'altra e quindi fornisce un campo obbligatorio;
- *Precondizioni*: Email ancora nella cartella di destinazione;
- *Postcondizioni*: Email ancora nella cartella di partenza ma l'utente ha fornito l'Identificativo della cartella di destinazione.
- *Scenario principale*: 
  + L'utente fornisce l'identificativo della cartella di destinazione.


==== UC 4.3 - Elimina Email cartella

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole eliminare una Email da una cartella;
- *Precondizioni*: Email ancora nella cartella;
- *Postcondizioni*: Email eliminata dalla cartella.
- *Scenario principale*: 
  + L'utente deve fornire l'identificativo univoco dell'Email;
  + L'utente deve fornire l'identificativo univoco della cartella dove si trova;

#set list(marker: ([•], [--]))
- *Estensioni*:
  - Errore Identificativo Email fornito non esistente;
  - Errore Identificativo Cartella fornito non esistente.
- *Inclusioni*: /
- *Generalizzazioni*: /

===== UC 4.3.1 - Inserimento Identificativo Email

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole eliminare una Email da una cartella ad un'altra e quindi fornisce un campo obbligatorio;
- *Precondizioni*: Email ancora nella cartella;
- *Postcondizioni*: Email ancora nella cartella ma l'utente ha fornito l'Identificativo della Email che intende eliminare.
- *Scenario principale*: 
  + L'utente fornisce l'identificativo della Email che intende eliminare.


===== UC 4.3.2 - Inserimento Identificativo cartella

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole eliminare una Email da una cartella ad un'altra e fornisce un elemento obbligatorio;
- *Precondizioni*: Email ancora nella cartella;
- *Postcondizioni*: Email ancora nella cartella ma l'utente ha fornito l'Identificativo della cartella dove si trova l'Email che intende eliminare.
- *Scenario principale*: 
  + L'utente fornisce l'identificativo della cartella dove si trova l'Email che intende eliminare.

==== UC 4.4 - Errore Identificativo Email fornito non esistente

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole performare un'operazione su una Email che è su una cartella;
- *Precondizioni*: Operazione ancora non effettuata;
- *Postcondizioni*: Operazione non effettuata e ricevimento da parte dell'utente di un messaggio di errore specifico;
- *Scenario principale*: 
  + L'utente performa un'operazione su una Email che è su una cartella;
  + Se viene fornito un Identificativo di un Email non valido l'utente riceverà un messaggio di errore.

==== UC 4.5 - Errore Identificativo Cartella fornito non esistente

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole performare un'operazione su una Email che è su una cartella;
- *Precondizioni*: Operazione ancora non effettuata;
- *Postcondizioni*: Operazione non effettuata e ricevimento da parte dell'utente di un messaggio di errore;
- *Scenario principale*: 
  + L'utente performa un'operazione su una Email che è su una cartella;
  + Se viene fornito un Identificativo di una Cartella non valido l'utente riceverà un messaggio di errore.
  

#pagebreak()

=== UC 5 - Condivisione delle cartelle

#figure(image("//imgs/use_cases/condivisione-cartelle-1.svg", width: 100%), caption: [UC 5 - Condivisione delle cartelle])
#pagebreak()
#figure(image("//imgs/use_cases/condivisione-cartelle-2.svg", width: 100%), caption: [Condivisione delle cartelle - Sottocasi])

#pagebreak()

==== UC 5.1 - Condividi una cartella con un'altro utente

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole condividere una cartella con un altro utente;
- *Precondizioni*: Cartella non ancora condivisa;
- *Postcondizioni*: Cartella condivisa.
- *Scenario principale*: 
  + L'utente deve fornire l'identificativo della cartella che vuole condividere;
  + L'utente deve condividere l'Indirizzo Email dell'utente con il quale vuole condividere la cartella.

#set list(marker: ([•], [--]))
- *Estensioni*:
  - Errore Utente fornito non esistente;
  - Errore Identificativo cartella fornito non esistente.
- *Inclusioni*: /
- *Generalizzazioni*: /

===== UC 5.1.1 - Inserimento Indirizzo Email Utente

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole condividere una cartella con un altro utente e quindi inserisce uno dei campi obbligatori;
- *Precondizioni*: Cartella non ancora condivisa;
- *Postcondizioni*: Cartella non ancora condivisa e fornita l'indirizzo Email dell'utente con il quale si vuole condividere la cartella.
- *Scenario principale*: 
  + L'utente deve fornire l'Indirizzo Email dell'utente con il quale vuole condividere la cartella.


===== UC 5.1.2 - Inserimento Identificativo cartella

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole condividere una cartella con un altro utente e quindi inserisce uno dei campi obbligatori;
- *Precondizioni*: Cartella non ancora condivisa;
- *Postcondizioni*: Cartella non ancora condivisa e fornita l'Identificativo della cartella che vuole condividere.
- *Scenario principale*: 
  + L'utente deve fornire l'Identificativo della cartella che intende condividere.


==== UC 5.2 - Rimozione della condivisione di una cartella

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole togliere la condivisione di una cartella ad un altro utente;
- *Precondizioni*: Cartella ancora condivisa;
- *Postcondizioni*: Cartella non ancora condivisa;
- *Scenario principale*: 
  + L'utente deve fornire l'Identificativo della cartella a cui intende togliere la condivisione.

#set list(marker: ([•], [--]))
- *Estensioni*:
  - Errore Utente fornito non esistente;
  - Errore Identificativo cartella non esistente.
- *Inclusioni*: /
- *Generalizzazioni*: /

===== UC 5.2.1 - Inserimento Indirizzo Email Utente

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole condividere una cartella con un altro utente e quindi inserisce uno dei campi obbligatori;
- *Precondizioni*: Cartella ancora condivisa;
- *Postcondizioni*: Cartella ancora condivisa e fornita l'indirizzo Email dell'utente con il quale si vuole rimuovere la condivisione della cartella.
- *Scenario principale*: 
  + L'utente deve fornire l'Indirizzo Email dell'utente con il quale vuole rimuovere la condivisione della cartella.

===== UC 5.2.2 - Inserimento Identificativo cartella

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole condividere una cartella con un altro utente e quindi inserisce uno dei campi obbligatori;
- *Precondizioni*: Cartella ancora condivisa;
- *Postcondizioni*: Cartella ancora condivisa e fornito l'Identificativo della cartella con il quale si vuole rimuovere la condivisione.
- *Scenario principale*: 
  + L'utente deve fornire l'Identificativo della cartella con il quale si vuole rimuovere la condivisione.


==== UC 5.3 - Errore Utente non esistente

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole performare un'operazione di condivisione (aggiunta o rimozione);
- *Precondizioni*: Operazione ancora non effettuata;
- *Postcondizioni*: Operazione non effettuata e ricevimento da parte dell'utente di un messaggio di errore;
- *Scenario principale*: 
  + L'utente effettua un'operazione di condivisione.
  + L'utente riceverà un messaggio di errore se inserisce un Indirizzo Email non valido per l'utente con il quale vuole effettuare la condivisione.


==== UC 5.4 - Errore Identificativo cartella non esistente

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole performare un'operazione di condivisione (aggiunta o rimozione);
- *Precondizioni*: Operazione ancora non effettuata;
- *Postcondizioni*: Operazione non effettuata e ricevimento da parte dell'utente di un messaggio di errore;
- *Scenario principale*: 
  + L'utente effettua un'operazione di condivisione.
  + L'utente riceverà un messaggio di errore se inserisce un Identificativo di una cartella che non esiste.


#pagebreak()
/*
=== UC 6 - Stress Test

#figure(image("//imgs/use_cases/stress-test.svg", width: 100%))
#pagebreak()

==== UC 6.1 - Invio Massivo di Email

- *Attore principale*: Client di Posta Elettronica Autenticato Con Funzionalità di Test;
- *Descrizione*: Un client di posta elettronica autenticato con funzionalità di test intende effettuare un invio massivo di Email per fare dei benchmark sulla velocità di invio del sistema;
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

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato con funzionalità di test intende effettuare un invio massivo di Email per fare dei benchmark sulla velocità di invio del sistema e quindi deve fornire uno dei campi obbligatori;
- *Precondizioni*: Email non inviate;
- *Postcondizioni*: Email non inviate ma si ha fornito l'Indirizzo Email dei destinatari.
- *Scenario principale*: 
  + L'utente deve fornire gli Indirizzi Email dei destinatari.


===== UC 6.1.2 - Inserimento Oggetto dell'Email

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato con funzionalità di test intende effettuare un invio massivo di Email per fare dei benchmark sulla velocità di invio del sistema e quindi deve fornire uno dei campi obbligatori;
- *Precondizioni*: Email non inviate;
- *Postcondizioni*: Email non inviate ma si ha fornito l'Oggetto dell'Email.
- *Scenario principale*: 
  + L'utente deve fornire l'Oggetto dell'Email.


===== UC 6.1.3 - Inserimento Corpo del Messaggio dell'Email

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato con funzionalità di test intende effettuare un invio massivo di Email per fare dei benchmark sulla velocità di invio del sistema e quindi deve fornire uno dei campi obbligatori;
- *Precondizioni*: Email non inviate;
- *Postcondizioni*: Email non inviate ma si ha fornito il Corpo del messaggio dell'Email.
- *Scenario principale*: 
  + L'utente deve fornire il Corpo del messaggio dell'Email.


===== UC 6.1.4 - Inserimento Numero di copie dell'email da inviare ad ogni destinatario

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato con funzionalità di test intende effettuare un invio massivo di Email per fare dei benchmark sulla velocità di invio del sistema e quindi deve fornire uno dei campi obbligatori;
- *Precondizioni*: Email non inviate;
- *Postcondizioni*: Email non inviate ma si ha fornito il numero di copie che vogliamo inviare per ogni destinatario.
- *Scenario principale*: 
  + L'utente deve fornire il Numero di copie dell'email da inviare ad ogni destinatario.
  

==== UC 6.2 - Fetch Massivo Di Email

- *Attore principale*: Client di Posta Elettronica Autenticato;
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

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato con funzionalità di test intende effettuare un fetch massivo di Email da una cartella per fare dei benchmark sulla velocità di fetch del sistema e quindi deve fornire uno dei campi obbligatori;
- *Precondizioni*: Fetch non effettuato;
- *Postcondizioni*: Fetch non effettuato e inserito l'Identificativo della cartella a partire dalla quale si vuole effettuare il test.
- *Scenario principale*: 
  + L'utente deve fornire l'Identificativo della cartella a partire dalla quale si vuole effettuare il test.;


===== UC 6.2.2 - Inserimento Identificativo Email

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato con funzionalità di test intende effettuare un fetch massivo di Email da una cartella per fare dei benchmark sulla velocità di fetch del sistema e quindi deve fornire uno dei campi obbligatori;
- *Precondizioni*: Fetch non effettuato;
- *Postcondizioni*: Fetch non effettuato e inserito l'Identificativo dell'Email che si vuole caricare massivamente nella cartella.
- *Scenario principale*: 
  + L'utente deve fornire l'Identificativo dell'Email che si vuole caricare massivamente nella cartella.


===== UC 6.2.3 - Inserimento Numero di copie di Email da copiare nella cartella

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato con funzionalità di test intende effettuare un fetch massivo di Email da una cartella per fare dei benchmark sulla velocità di fetch del sistema e quindi deve fornire uno dei campi obbligatori;
- *Precondizioni*: Fetch non effettuato;
- *Postcondizioni*: Fetch non effettuato e inserito il  Numero di copie di Email da copiare nella cartella.
- *Scenario principale*: 
  + L'utente deve fornire il Numero di copie di Email da copiare nella cartella
  

==== UC 6.3 - Overflow

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato con funzionalità di test intende effettuare un fetch massivo di Email da una cartella per fare dei benchmark sul sistema;
- *Precondizioni*: Operazione di test non ancora effettuata;
- *Postcondizioni*: Operazione di test non ancora effettuata e visualizzazione di un messaggio di errore specifico;
- *Scenario principale*: 
  + Lo sviluppatore effettua un'operazione di quelle citate in precedenza;
  + Se l'operazione è troppo onerosa viene mostrato un messaggio di errore che esplicita le motivazioni del crash del sistema.


#pagebreak()
*/
=== UC 6 - Sincronizzazione

#figure(image("//imgs/use_cases/sincronizzazione.svg", width: 100%), caption: [UC 6 - Sincronizzazione])
#pagebreak()

==== UC 6.1 - Sincronizzazione casella posta di arrivo

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole sincronizzare la propria casella di posta elettronica con le ultime Email arrivate;
- *Precondizioni*: Cartella di posta elettronica non ancora sincronizzata;
- *Postcondizioni*: Cartella di posta elettronica sincronizzata.
- *Scenario principale*:
  + L'utente vedrà le ultime email arrivate nella sua casella di posta elettronica.

#set list(marker: ([•], [--]))
- *Estensioni*: /
- *Inclusioni*: /
- *Generalizzazioni*: /

==== UC 6.2 - Sincronizzazione contatti da rubrica

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole sincronizzare la propria rubrica con gli ultimi contatti;
- *Precondizioni*: Rubrica non ancora sincronizzata;
- *Postcondizioni*: Rubrica sincronizzata.
- *Scenario principale*: 
  + L'utente si vedrà aggiornare la rubrica con gli utlimi contatti.

#set list(marker: ([•], [--]))
- *Estensioni*: /
- *Inclusioni*: /
- *Generalizzazioni*: /

#pagebreak()

/*=== UC 7 - Calendari

#pagebreak()

==== UC 7.1 - Creazione di un calendario

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un Client di Posta Elettronica Autenticato vuole creare un calendario;
- *Precondizioni*: Calendario non creato;
- *Postcondizioni*: Calendario creato;
- *Scenario principale*: L'utente dovrà fornire il nome del calendario che si vuole creare.

#set list(marker: ([•], [--]))
- *Estensioni*: Nome calendario duplicato o non valido
- *Inclusioni*: /
- *Generalizzazioni*: /

==== UC 7.2 - Rinominazione di un calendario

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un Client di Posta Elettronica Autenticato vuole rinominare un calendario;
- *Precondizioni*: Calendario non rinominato;
- *Postcondizioni*: Calendario rinominato;
- *Scenario principale*: L'utente dovrà fornire il nome del calendario da rinominare e il nuovo nome.

#set list(marker: ([•], [--]))
- *Estensioni*: Nome calendario duplicato o non valido
- *Inclusioni*: /
- *Generalizzazioni*: /

==== UC 7.3 - Eliminazione di un calendario

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un Client di Posta Elettronica Autenticato vuole eliminare un calendario;
- *Precondizioni*: Calendario non eliminato;
- *Postcondizioni*: Calendario eliminato;
- *Scenario principale*: L'utente dovrà fornire il nome del calendario che intende eliminare.

#set list(marker: ([•], [--]))
- *Estensioni*: Nome calendario duplicato o non valido
- *Inclusioni*: /
- *Generalizzazioni*: /

==== UC 7.4 - Condivisione di un calendario con un altro utente

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un Client di Posta Elettronica Autenticato vuole condividere un calendario con un altro utente;
- *Precondizioni*: Calendario non condiviso;
- *Postcondizioni*: Calendario condiviso;
- *Scenario principale*: L'utente dovrà fornire il nome del calendario che vuole condividere e il nome dell'utente a cui vuole condividere.

#set list(marker: ([•], [--]))
- *Estensioni*: Nome calendario duplicato o non valido
- *Inclusioni*: /
- *Generalizzazioni*: /

==== UC 7.5 - Nome calendario duplicato o non valido

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un Client di Posta Elettronica Autenticato vuole fare un'operazione di quelle citate in precedenza con i calendario;
- *Precondizioni*: Operazione sul calendario non effettuata;
- *Postcondizioni*: Operazione sul calendario non effettuata e utente informato con un messaggio di errore;
- *Scenario principale*: L'utente in seguito ad aver fatto un'operazione sul calendario inserendo un nome duplicato o non valido si vedrà apparire un messaggio di errore.

#set list(marker: ([•], [--]))
- *Estensioni*: /
- *Inclusioni*: /
- *Generalizzazioni*: /

#pagebreak()

=== UC 8 - Appuntamenti

#pagebreak()

==== UC 8.1 - Creazione di un appuntamento a calendario

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un Client di Posta Elettronica Autenticato vuole creare un appuntamento a calendario;
- *Precondizioni*: Appuntamento non creato;
- *Postcondizioni*: Appuntamento creato;
- *Scenario principale*: L'utente dovrà fornire le informazioni per creare un appuntamento e il nome del calendario dove inserirlo.

#set list(marker: ([•], [--]))
- *Estensioni*: Nome calendario duplicato o non valido
- *Inclusioni*: /
- *Generalizzazioni*: /

==== UC 8.2 - Modifica di un appuntamento a calendario

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un Client di Posta Elettronica Autenticato vuole modificare un appuntamento a calendario;
- *Precondizioni*: Appuntamento non modificato;
- *Postcondizioni*: Appuntamento modficato;
- *Scenario principale*: L'utente dovrà fornire le informazioni per le modifiche dell'appuntamento e l'identificativo dell'appuntamento da modificare.

#set list(marker: ([•], [--]))
- *Estensioni*: Nome calendario duplicato o non valido
- *Inclusioni*: /
- *Generalizzazioni*: /

==== UC 8.3 - Eliminazione di un appuntamento a calendario

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un Client di Posta Elettronica Autenticato vuole eliminare un appuntamento a calendario;
- *Precondizioni*: Appuntamento non eliminato;
- *Postcondizioni*: Appuntamento eliminato;
- *Scenario principale*: L'utente dovrà fornire l'identificativo dell'appuntamento da eliminare.

#set list(marker: ([•], [--]))
- *Estensioni*: Nome calendario duplicato o non valido
- *Inclusioni*: /
- *Generalizzazioni*: /

==== UC 8.4 - Condivisione di un appuntamento nel calendario condiviso con un altro utente

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un Client di Posta Elettronica Autenticato vuole condividere un appuntamento a calendario di con un'altro utente;
- *Precondizioni*: Appuntamento non condiviso;
- *Postcondizioni*: Appuntamento condiviso;
- *Scenario principale*: L'utente dovrà fornire le informazioni relative all'appuntamento da creare, dell'utente che possiede il calendario e il nome del calendario dove avverrà la condivisione.

#set list(marker: ([•], [--]))
- *Estensioni*: Nome calendario duplicato o non valido
- *Inclusioni*: /
- *Generalizzazioni*: /

==== UC 8.5 - Nome calendario duplicato o non valido

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un Client di Posta Elettronica Autenticato vuole fare un'operazione di quelle citate in precedenza con gli appuntamenti;
- *Precondizioni*: Operazione sull'appuntamento non effettuata;
- *Postcondizioni*: Operazione sull'appuntamento non effettuata e utente informato con un messaggio di errore;
- *Scenario principale*: L'utente in seguito ad aver fatto un'operazione sul appuntamento inserendo un nome duplicato o non valido per il calendario si vedrà apparire un messaggio di errore.

#set list(marker: ([•], [--]))
- *Estensioni*: /
- *Inclusioni*: /
- *Generalizzazioni*: /

#pagebreak()
*/

=== UC 7 - Contatti

#figure(image("//imgs/use_cases/contatti-1.svg", width: 100%), caption: [UC 7 - Contatti])
#pagebreak()
#figure(image("//imgs/use_cases/contatti-2.svg", width: 90%), caption: [Contatti - Sottocasi])
#pagebreak()

==== UC 7.1 - Creazione di un contatto

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole creare un contatto;
- *Precondizioni*: Contatto non creato;
- *Postcondizioni*: Contatto creato.
- *Scenario principale*: 
  + L'utente deve fornire il Nome e Cognome del contatto;
  + L'utente deve fornire l'Indirizzo Email del contatto che vuole creare.

#set list(marker: ([•], [--]))
- *Estensioni*: Indirizzo Email contatto duplicato o non valido
- *Inclusioni*: /
- *Generalizzazioni*: /

==== UC 7.1.1 - Inserimento Nome e Cognome contatto

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole creare un contatto e quindi deve inserire un campo obbligatorio;
- *Precondizioni*: Contatto non creato;
- *Postcondizioni*: Contatto non creato e l'Utente ha inserito il Nome e il Cognome per il contatto.
- *Scenario principale*: 
  + L'utente deve fornire il Nome e Cognome del contatto;


==== UC 7.1.2 - Inserimento Indirizzo Email contatto

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole creare un contatto e quindi deve inserire un campo obbligatorio;
- *Precondizioni*: Contatto non creato;
- *Postcondizioni*: Contatto non creato e l'Utente ha inserito l'Indirizzo Email del contatto.
- *Scenario principale*: 
  + L'utente deve fornire l'Indirizzo Email del contatto che vuole creare.


==== UC 7.2 - Modifica di un contatto

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole modificare un contatto;
- *Precondizioni*: Contatto non modificato;
- *Postcondizioni*: Contatto modificato.
- *Scenario principale*: 
  + L'utente deve fornire l'Indirizzo Email contatto da modificare;
  + L'utente deve fornire il nuovo Nome, Cognome e Indirizzo Email da modificare.

#set list(marker: ([•], [--]))
- *Estensioni*: Indirizzo Email contatto duplicato o non valido
- *Inclusioni*: /
- *Generalizzazioni*: /

==== UC 7.2.1 - Inserimento Indirizzo Email contatto da modificare

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole modificare un contatto e quindi deve inserire un campo obbligatorio;
- *Precondizioni*: Contatto non creato;
- *Postcondizioni*: Contatto non creato e l'Utente ha inserito il Nome e il Cognome per il contatto.
- *Scenario principale*: 
  + L'utente deve fornire l'Indirizzo Email del contatto che si vuole modificare.


==== UC 7.2.2 - Inserimento nuovo Nome, Cognome e Indirizzo Email da modificare

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole modificare un contatto e quindi deve inserire un campo obbligatorio;
- *Precondizioni*: Contatto non creato;
- *Postcondizioni*: Contatto non creato e l'Utente ha inserito il nuovo nuovo Nome, Cognome e Indirizzo Email da modificare.
- *Scenario principale*: 
  + L'utente deve fornire il nuovo Nome, Cognome e Indirizzo Email da modificare.


==== UC 7.3 - Eliminazione di un contatto

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole eliminare un contatto;
- *Precondizioni*: Contatto non eliminato;
- *Postcondizioni*: Contatto eliminato;
- *Scenario principale*: 
  + L'utente dovrà fornire l'indirizzo Email del contatto da eliminare.

#set list(marker: ([•], [--]))
- *Estensioni*: Indirizzo Email contatto duplicato o non valido
- *Inclusioni*: /
- *Generalizzazioni*: /

==== UC 7.3.1 - Inserimento Indirizzo Email contatto da eliminare

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole eliminare un contatto e quindi deve inserire il campo obbligatorio;
- *Precondizioni*: Contatto non eliminato;
- *Postcondizioni*: Contatto non eliminato e inserito l'Indirizzo Email del contatto da eliminare.
- *Scenario principale*: 
  + L'utente dovrà fornire l'indirizzo Email del contatto da eliminare.


==== UC 7.4 - Condivisione di un contatto con un'altro utente

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole condividere un contatto con un'altro utente;
- *Precondizioni*: Contatto non condiviso;
- *Postcondizioni*: Contatto condiviso.
- *Scenario principale*: 
  + L'utente dovrà fornire l'indirizzo Email del contatto che intende condividere;
  + L'utente dovrà fornire l'indirizzo Email del contatto con il quale vuole effettaure la condivisione.

#set list(marker: ([•], [--]))
- *Estensioni*: Indirizzo Email contatto duplicato o non valido
- *Inclusioni*: /
- *Generalizzazioni*: /

==== UC 7.4.1 - Inserimento Indirizzo Email contatto da condividere

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole creare un contatto e quindi deve inserire un campo obbligatorio;
- *Precondizioni*: Contatto non creato;
- *Postcondizioni*: Contatto non creato e l'Utente ha inserito l'Indirizzo Email del contatto da condividere.
- *Scenario principale*: 
  + L'utente deve fornire l'Indirizzo Email del contatto da condividere;


==== UC 7.4.2 - Inserimento Indirizzo Email del contatto con il quale si vuole condividere il contatto

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole creare un contatto e quindi deve inserire un campo obbligatorio;
- *Precondizioni*: Contatto non creato;
- *Postcondizioni*: Contatto non creato e l'Utente ha inserito l'Indirizzo Email del contatto con il quale si vuole condividere il contatto.
- *Scenario principale*: 
  + L'utente deve fornire l'Indirizzo Email del contatto con il quale si vuole condividere il contatto.


==== UC 7.5 - Indirizzo Email contatto duplicato o non valido

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole fare un'operazione di quelle citate in precedenza con i contatti;
- *Precondizioni*: Operazione sul contatto non effettuata;
- *Postcondizioni*: Operazione sul contatto non effettuata e utente informato con un messaggio di errore.
- *Scenario principale*:
  + L'utente esegue to un'operazione sul contatto inserendo un indirizzo Email duplicato o non valido;
  + L'utente si vedrà apparire un messaggio di errore specifico.

#set list(marker: ([•], [--]))
- *Estensioni*: /
- *Inclusioni*: /
- *Generalizzazioni*: /

#pagebreak()

=== UC 8 - Rubriche

#figure(image("//imgs/use_cases/rubriche-1.svg", width: 100%), caption: [UC 8 - Rubriche])
#pagebreak()
#figure(image("//imgs/use_cases/rubriche-2.svg", width: 85%), caption: [Rubriche - Sottocasi])
#pagebreak()

==== UC 8.1 - Creazione di una rubrica

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole creare una rubrica;
- *Precondizioni*: Rubrica non creata;
- *Postcondizioni*: Rubrica creata.
- *Scenario principale*: 
  + L'utente dovrà fornire il nome della rubrica che vuole creare;
  + L'utente dovrà fornire la lista dei contatti da includere nella rubrica.

#set list(marker: ([•], [--]))
- *Estensioni*: 
  + Nome rubrica duplicato o non valido;
  + Identificativo contatti fornito non valido.
- *Inclusioni*: /
- *Generalizzazioni*: /

==== UC 8.1.1 - Creazione di una rubrica

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole creare una rubrica e inserisce uno dei campi obbligatori;
- *Precondizioni*: Rubrica non creata;
- *Postcondizioni*: Rubrica non creata ma è stato fornito il nome della rubrica.
- *Scenario principale*: 
  + L'utente dovrà fornire il nome della rubrica che vuole creare;


==== UC 8.1.2 - Inserimento Indirizzi Email dei contatti da inserire nella rubrica

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole creare una rubrica e inserisce uno dei campi obbligatori;
- *Precondizioni*: Rubrica non creata;
- *Postcondizioni*: Rubrica non creata ma è stato fornita la lista dei contatti da aggiungere.
- *Scenario principale*: 
  + L'utente dovrà fornire la lista dei contatti da aggiungere alla rubrica;

==== UC 8.2 - Rinominazione di una rubrica

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole rinominare una rubrica;
- *Precondizioni*: Rubrica non rinominata;
- *Postcondizioni*: Rubrica rinominata.
- *Scenario principale*: 
  + L'utente dovrà fornire l'Identificativo della rubrica che si vuole rinominare; 
  + L'utente dovrà fornire il nuovo nome per la rubrica.

#set list(marker: ([•], [--]))
- *Estensioni*:
    + Identificativo rubrica non valido;
    + Nome rubrica duplicato o non valido.
- *Inclusioni*: /
- *Generalizzazioni*: /

==== UC 8.2.1 - Inserimento Identificativo della rubrica da rinominare

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole rinominare una rubrica e inserisce uno dei campi obbligatori;
- *Precondizioni*: Rubrica non rinominata;
- *Postcondizioni*: Rubrica non rinominata ma è stato fornito l'Identificativo della rubrica da rinominata.
- *Scenario principale*: 
  + L'utente dovrà fornire l'Identificativo della rubrica da rinominata.


==== UC 8.2.2 - Inserimento Nuovo nome per la rubrica

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole rinominare una rubrica e inserisce uno dei campi obbligatori;
- *Precondizioni*: Rubrica non rinominata;
- *Postcondizioni*: Rubrica non rinominata ma è stato fornito il nuovo nome.
- *Scenario principale*: 
  + L'utente dovrà fornire il nuovo nome per la rubrica;
  

==== UC 8.3 - Modifica di una rubrica

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole modificare una rubrica;
- *Precondizioni*: Rubrica non modificata;
- *Postcondizioni*: Rubrica modficata.
- *Scenario principale*: 
  + L'utente dovrà fornire l'Identificativo della rubrica che si vuole modificare; 
  + L'utente dovrà fornire la nuova lista di contatti da associare a quella rubrica.

#set list(marker: ([•], [--]))
- *Estensioni*: 
  + Identificativo rubrica non valido;
  + Identificativo contatti forniti non validi.
- *Inclusioni*: /
- *Generalizzazioni*: /

==== UC 8.3.1 - Inserimento Identificativo della rubrica da modificare

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole modificare una rubrica e inserisce uno dei campi obbligatori;
- *Precondizioni*: Rubrica non modificata;
- *Postcondizioni*: Rubrica non modificata ma è stato fornito l'Identificativo della rubrica da modificare.
- *Scenario principale*: 
  + L'utente dovrà fornire l'Identificativo della rubrica da modificare.


==== UC 8.3.2 - Inserimento Indirizzi Email dei contatti da inserire nella rubrica

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole modificare una rubrica e inserisce uno dei campi obbligatori;
- *Precondizioni*: Rubrica non modificata;
- *Postcondizioni*: Rubrica non modificata ma è stato fornita la nuova lista dei contatti.
- *Scenario principale*: 
  + L'utente dovrà fornire la nuova lista dei contatti della rubrica;
  

==== UC 8.4 - Eliminazione di una rubrica

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole eliminare un una rubrica;
- *Precondizioni*: Rubrica non eliminata;
- *Postcondizioni*: Rubrica eliminata;
- *Scenario principale*: 
  + L'utente dovrà fornire l'Identificativo della rubrica che intende eliminare.

#set list(marker: ([•], [--]))
- *Estensioni*: 
  + Identificativo rubrica non valido.
  
- *Inclusioni*: /
- *Generalizzazioni*: /

==== UC 8.4.1 - Inserimento Identificativo dela rubrica da eliminare

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole eliminare una rubrica e inserisce uno dei campi obbligatori;
- *Precondizioni*: Rubrica non eliminata;
- *Postcondizioni*: Rubrica non eliminata ma è stato fornit l'Identificativo della rubrica che si vuole eliminare.
- *Scenario principale*: 
  + L'utente dovrà fornire l'Identificativo della rubrica che vuole eliminare.
  

==== UC 8.5 - Condivisione di una rubrica con un altro utente

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole condividere una intera rubrica con un'altro utente;
- *Precondizioni*: Rubrica non condivisa;
- *Postcondizioni*: Rubrica non condivisa ;
- *Scenario principale*: 
  + L'utente dovrà fornire l'Identificativo della rubrica che intende condividere;
  + L'utente dovrà fornire l'Indirizzo Email dell'utente con il quale vuole effettuare la condivisione.

#set list(marker: ([•], [--]))
- *Estensioni*: 
  + Identificativo rubrica non valido;
  + Indirizzo Email non valido.
- *Inclusioni*: /
- *Generalizzazioni*: /

==== UC 8.5.1 - Inserimento Identificativo della rubrica da condividere

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole condividere una intera rubrica con un'altro utente e quindi deve inserire un campo obbligatorio;
- *Precondizioni*: Rubrica non condivisa;
- *Postcondizioni*: Rubrica non condivisa e l'Utente ha inserito l'Identificativo della rubrica che intende condividere.
- *Scenario principale*: 
  + L'utente deve fornire l'Identificativo della rubrica che intende condividere.


==== UC 8.5.2 - Inserimento Indirizzo Email del contatto con il quale si vuole condividere la rubrica

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole condividere una intera rubrica con un'altro utente e quindi deve inserire un campo obbligatorio;
- *Precondizioni*: Rubrica non condivisa;
- *Postcondizioni*: Rubrica non condivisa e l'Utente ha inserito Indirizzo Email del contatto con il quale si vuole condividere la rubrica.
- *Scenario principale*: 
  + L'utente deve fornire l'Indirizzo Email del contatto con il quale si vuole condividere la rubrica.
  

==== UC 8.6 - Nome rubrica duplicato o non valido

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole creare o rinominare un rubrica;
- *Precondizioni*: Operazione sulla rubrica non effettuate;
- *Postcondizioni*: Operazione sulla rubrica non effettuate e utente informato con un messaggio di errore;
- *Scenario principale*: 
  + L'utente fa un'operazione sulla rubrica (creazione o rinominazione) inserendo un nome duplicato o non valido per la rubrica 
  + L'utente si vedrà apparire un messaggio di errore specifico per questo errore.

==== UC 8.7 - Identificativo rubrica non valido

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole rinominare, modificare, eliminare o condividere un rubrica;
- *Precondizioni*: Operazione sulla rubrica non effettuate;
- *Postcondizioni*: Operazione sulla rubrica non effettuate e utente informato con un messaggio di errore;
- *Scenario principale*: 
  + L'utente fa un'operazione sulla rubrica (rinomina, modifica, eliminazione o condivisione) inserendo un identificativo non valido per la rubrica 
  + L'utente si vedrà apparire un messaggio di errore specifico per questo errore.

==== UC 8.8 - Identificativo contatti forniti non validi

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole creare o modificare una rubrica;
- *Precondizioni*: Operazione sulla rubrica non effettuate;
- *Postcondizioni*: Operazione sulla rubrica non effettuate e utente informato con un messaggio di errore;
- *Scenario principale*: 
  + L'utente fa un'operazione sulla rubrica (creazione o modifica) inserendo uno o più identificativi per i contatti da aggiungere non validi; 
  + L'utente si vedrà apparire un messaggio di errore specifico per questo errore.

==== UC 8.9 - Indirizzo Email non valido

- *Attore principale*: Client di Posta Elettronica Autenticato;
- *Descrizione*: Un client di posta elettronica autenticato vuole condividere una rubrica;
- *Precondizioni*: Operazione sulla rubrica non effettuate;
- *Postcondizioni*: Operazione sulla rubrica non effettuate e utente informato con un messaggio di errore;
- *Scenario principale*: 
  + L'utente fa un'operazione sulla rubrica (condivisione) inserendo un Indirizzo Email con cui condividere la rubrica non valido;
  + L'utente si vedrà apparire un messaggio di errore specifico per questo errore.

#pagebreak()


= *Requisiti*
In questa sezione andremo ad elencare tutti i requisiti del capitolato, ragruppandoli per tipologia. Ogni requisito è identificato univocamente da un codice il cui formato è definito qui di seguito. \
Ogni requisito è caratterizzato da un codice alfanumerico così formato:\
#set align(center) 
*R-[numero]-[tipo]-[priorità]*
#set align(left)
dove:
- *Numero*: un progressivo a tre cifre che parte dal numero 001.

- *Tipo*: la tipologia di requisito tra le seguenti:
  - *F (funzionale)*: indica i servizi che il sistema mette a disposizione.
  - *Q (qualità)*: definisce i requisiti di qualità contenuti nel capitolato.
  
- *Priorità*: il grado di priorità assegnato al requisito con un numero da 1 a 3:
  + Requisito obbligatorio che deve essere tassativamente soddisfatto dalla soluzione informatica proposta.
  + Requisito desiderabile il cui soddisfacimento è apprezzato dal committente.
  + Requisito facoltativo, la cui realizzazione è totalmente a discrezione del team in base all'andamento del progetto.

In alcuni casi verrà esplicitato nella colonna relativa alle fonti se il requisito è stato chiaramente dettato dal Capitolato o se è stato dedotto implicitamente da altri requisiti obbligatori (in questo caso parleremo di requisito interno).


== Requisiti di funzionalità
#figure(
requirements("#f9fac5", (
  [R-001-F-2],
  [L'utente che utilizza un client di posta elettronica deve avere la possibilità di autenticarsi all'interno del sistema.],
  [
    UC1.1\
    Interno
  ],
  [R-002-F-2],
  [È necessario che il client fornisca l'Indirizzo Email per procedere con l'autenticazione.],
  [
    UC1.1.1\
    Interno
  ],
  [R-003-F-2],
  [È necessario che il client fornisca la Password associata all'Indirizzo Email inserito per procedere con l'autenticazione.],
  [
    UC1.1.2\
    Interno
  ],
  [R-004-F-2],
  [È necessario che il client riceva un messaggio di errore se l'Indirizzo Email inserito non ha un formato corretto.],
  [
    UC1.2\
    Interno
  ],
  [R-005-F-2],
  [È necessario che il client riceva un messaggio di errore se la password associata a quell'Indirizzo Email non è corretta.],
  [
    UC1.3\
    Interno
  ],

  [],
  [],
  [],

  [R-006-F-1],
  [Il client deve avere la possibilità di inviare una Email ad uno o più destinatari.],
  [
    UC2.1\
    Capitolato
  ],
  [R-007-F-1],
  [È necessario che il client fornisca i vari indirizzi Email dei destinatari per procedere con l'invio.],
  [
    UC2.1.1\
    Interno
  ],
  [R-008-F-1],
  [È necessario che il client fornisca l'oggetto della Email prima di procedere con l'invio.],
  [
    UC2.1.2\
    Interno
  ],
  [R-009-F-1],
  [È necessario che il client fornisca il corpo del messaggio dell'Email prima di procedere con l'invio.],
  [
    UC2.1.3\
    Interno
  ],
  [R-010-F-1],
  [È necessario che il client riceva un messaggio di errore se il formato di uno degli Indirizzi Email di destinazione forniti non ha un formato valido.],
  [
    UC2.2\
    Interno
  ],
  [R-011-F-1],
  [È necessario che il client riceva una notifica che specifichi quali degli Indirizzi Email di destinazione forniti non esiste.],
  [
    UC2.3\
    Interno
  ],
  [R-012-F-1],
  [L'utente deve avere la possibilità di visualizzare tutte le Email che gli sono arrivate nella casella di arrivo di posta elettronica.],
  [
    UC2.4\
    Capitolato
  ],
  [R-013-F-1],
  [L'utente deve avere la possibilità di visualizzare i dettagli di una delle Email presenti nella casella di arrivo di posta elettronica.],
  [
    UC2.5\
    Capitolato
  ],
  
  [],
  [],
  [],

  [R-014-F-1],
  [Il client deve avere la possibilità di creare una cartella di posta elettronica.],
  [
    UC3.1\
    Capitolato
  ],
  [R-015-F-1],
  [È necessario che il client fornisca un Nome per la cartella di posta elettronica che intende creare.],
  [
    UC3.1.1\
    Interno
  ],
  [R-016-F-1],
  [È necessario che il client fornisca una Descrizione per la cartella di posta elettronica che intende creare.],
  [
    UC3.1.2\
    Interno
  ],
  [R-017-F-1],
  [Il client deve avere la possibilità di rinominare una cartella di posta elettronica.],
  [
    UC3.2\
    Capitolato
  ],
  [R-018-F-1],
  [È necessario che il client fornisca l'Identificativo della cartella di posta elettronica che intende rinominare.],
  [
    UC3.2.1\
    Interno
  ],
  [R-019-F-1],
  [È necessario che il client fornisca il nuovo Nome per la cartella di posta elettronica che intende rinominare.],
  [
    UC3.2.2\
    Interno
  ],
  [R-020-F-1],
  [Il client deve avere la possibilità di eliminare una cartella di posta elettronica.],
  [
    UC3.3\
    Capitolato
  ],
  [R-021-F-1],
  [È necessario che il client fornisca l'Identificativo della cartella di posta elettronica che intende eliminare.],
  [
    UC3.3.1\
    Interno
  ],
  [R-022-F-1],
  [È necessario che il client riceva un messaggio di errore se inserisce un Nome non valido.],
  [
    UC3.4\
    Interno
  ],
  [R-023-F-1],
  [È necessario che il client riceva un messaggio di errore se inserisce un Identificativo di cartella non esistente.],
  [
    UC3.5\
    Interno
  ],
  
  [],
  [],
  [],
  
  [R-024-F-1],
  [Il client deve avere la possibilità di aggiungere una Email a una cartella.],
  [
    UC4.1\
    Capitolato
  ],
  [R-025-F-1],
  [È necessario che il client fornisca l'identificativo univoco della Email.],
  [
    UC4.1.1\
    Interno
  ],
  [R-026-F-1],
  [È necessario che il client fornisca l'identificativo univoco della cartella dove aggiungere l'Email.],
  [
    UC4.1.2\
    Interno
  ],
  [R-027-F-1],
  [Il client deve avere la possibilità di spostare un oggetto da una cartella di partenza a una cartella di destinazione.],
  [
    UC4.2\
    Capitolato
  ],
  [R-028-F-1],
  [È necessario che il client fornisca l'identificativo univoco della Email.],
  [
    UC4.2.1\
    Interno
  ],
  [R-029-F-1],
  [È necessario che il client fornisca l'identificativo univoco della cartella dove si trova attualmente l'Email.],
  [
    UC4.2.2\
    Interno
  ],
  [R-030-F-1],
  [È necessario che il client fornisca l'identificativo univoco della cartella dove spostare l'Email.],
  [
    UC4.2.3\
    Interno
  ],
  [R-031-F-1],
  [Il client deve avere la possibilità di eliminare una Email da una cartella.],
  [
    UC4.3\
    Capitolato
  ],
  [R-032-F-1],
  [È necessario che il client fornisca l'identificativo univoco dell'Email che intende eliminare.],
  [
    UC4.3.1\
    Interno
  ],
  [R-033-F-1],
  [È necessario che il client fornisca l'identificativo univoco della cartella dove si trova attualmente l'Email da eliminare.],
  [
    UC4.3.2\
    Interno
  ],
  [R-034-F-1],
  [È necessario che il client riceva un messaggio di errore se inserisce un identificativo per un'Email non valido.],
  [
    UC4.4\
    Interno
  ],
  [R-035-F-1],
  [È necessario che il client riceva un messaggio di errore se inserisce un identificativo per una cartella non valido.],
  [
    UC4.5\
    Interno
  ],

  
  [],
  [],
  [],
  
  [R-036-F-1],
  [Il client deve avere la possibilità di condividere una cartella con un altro utente.],
  [
    UC5.1
    Capitolato
  ],
  [R-037-F-1],
  [È necessario che il client fornisca l'Indirizzo Email dell'utente con il quale effettuare la condivisione.],
  [
    UC5.1.1
    Interno
  ],
  [R-038-F-1],
  [È necessario che il client fornisca l'Identificativo della cartella che vuole condividere.],
  [
    UC5.1.2
    Interno
  ],
  [R-039-F-1],
  [Il client deve avere la possibilità di rimuovere la condivisione di una cartella con un utente.],
  [
    UC5.2
    Capitolato
  ],
  [R-040-F-1],
  [È necessario che il client fornisca l'Indirizzo Email dell'utente con il quale effettuare la condivisione.],
  [
    UC5.2.1
    Interno
  ],
  [R-041-F-1],
  [È necessario che il client fornisca l'Identificativo della cartella che si vuole condividere.],
  [
    UC5.2.2
    Interno
  ],
  [R-042-F-1],
  [È necessario che il client riceva un messaggio di errore qualora fornisca un Indirizzo Email non esistente.],
  [
    UC5.3
    Interno
  ],
  [R-043-F-1],
  [È necessario che il client riceva un messaggio di errore qualora fornisca un Identificativo per la cartella non valida.],
  [
    UC5.4
    Interno
  ],
  
  [],
  [],
  [],

  /*
  [R-044-F-1],
  [L'utente deve avere la possibilità di effettuare un invio massivo di Email per testare il sistema informatico.],
  [
    UC6.1
    Capitolato
  ],
  [R-045-F-1],
  [È necessario che l'utente fornisca la lista dei destinatari.],
  [
    UC6.1.1
    Interno
  ],
  [R-046-F-1],
  [È necessario che l'utente fornisca l'Oggetto dell'Email che si vuole inviare.],
  [
    UC6.1.2
    Interno
  ],
  [R-047-F-1],
  [È necessario che l'utente fornisca il Corpo dell'Email che si vuole inviare.],
  [
    UC6.1.3
    Interno
  ],
  [R-048-F-1],
  [È necessario che l'utente fornisca il Numero di copie dell'email da inviare ad ogni destinatario.],
  [
    UC6.1.4
    Interno
  ],
  [R-049-F-1],
  [L'utente deve avere la possibilità di effettuare un fetch massivo delle Email da una cartella caricata artificialmente con un numero arbitrario di Email.],
  [
    UC6.2
    Capitolato
  ],
  [R-050-F-1],
  [È necessario che l'utente fornisca l'Identificativo cartella dove effettuare il fetch.],
  [
    UC6.2.1
    Interno
  ],
  [R-051-F-1],
  [È necessario che l'utente fornisca l'Identificativo dell'Email che si vuole caricare massivamente nella cartella.],
  [
    UC6.2.2
    Interno
  ],
  [R-052-F-1],
  [È necessario che l'utente fornisca il Numero di copie di Email da copiare nella cartella.],
  [
    UC6.2.3
    Interno
  ],
  [R-053-F-1],
  [È necessario che l'utente venga informato se accade un overflow del sistema dovuto all'eccessivo carico applicativo.],
  [
    UC6.3
    Interno
  ],
  */
  
  [],
  [],
  [],

  [R-044-F-1],
  [L'utente deve avere la possibilità di sincronizzare la propria casella di posta elettronica.],
  [
    UC6.1\
    Capitolato
  ],
  [R-045-F-1],
  [L'utente deve avere la possibilità di sincronizzare la rubrica con gli ultimi contatti.],
  [
    UC6.2\
    Capitolato
  ],
  
  [],
  [],
  [],

  [R-046-F-3],
  [L'utente deve avere la possibilità di creare un contatto.],
  [
    UC7.1\
    Capitolato
  ],
  [R-047-F-3],
  [È necessario che l'utente inserisca il Nome e il Cognome del contatto che intende creare.],
  [
    UC7.1.1\
    Interno
  ],
  [R-048-F-3],
  [È necessario che l'utente inserisca l'Indirizzo Email del contatto che intende creare.],
  [
    UC7.1.2\
    Interno
  ],
  [R-049-F-3],
  [L'utente deve avere la possibilità di modificare un contatto.],
  [
    UC7.2\
    Capitolato
  ],
  [R-050-F-3],
  [È necessario che l'utente inserisca l'Indirizzo Email contatto da modificare.],
  [
    UC7.2.1\
    Interno
  ],
  [R-051-F-3],
  [È necessario che l'utente inserisca il nuovo Nome, Cognome e Indirizzo Email da modificare.],
  [
    UC7.2.2\
    Interno
  ],
  [R-052-F-3],
  [L'utente deve avere la possibilità di eliminare un contatto.],
  [
    UC7.3\
    Capitolato
  ],
  [R-053-F-3],
  [È necessario che l'utente inserisca l'Indirizzo Email del contatto che intende eliminare.],
  [
    UC7.3.1\
    Interno
  ],
  [R-054-F-3],
  [L'utente deve avere la possibilità di condividere un contatto con un altro utente.],
  [
    UC7.4\
    Capitolato
  ],
  [R-055-F-3],
  [È necessario che l'utente inserisca l'Indirizzo Email del contatto che intende condividere.],
  [
    UC7.4.1\
    Interno
  ],
  [R-056-F-3],
  [È necessario che l'utente inserisca l'Indirizzo Email del contatto con il quale effettuare la condivisione.],
  [
    UC7.4.2\
    Interno
  ],
  [R-057-F-3],
  [È necessario che l'utente riceva un messaggio di errore se il client fornisce un Indirizzo Email duplicato o non valido.],
  [
    UC7.5\
    Interno
  ],

  [],
  [],
  [],

  [R-058-F-3],
  [L'utente deve avere la possibilità di creare una rubrica.],
  [
    UC8.1\
    Capitolato
  ],
  [R-059-F-3],
  [È necessario che l'utente inserisca il Nome della rubrica che intende creare.],
  [
    UC8.1.1\
    Interno
  ],
  [R-060-F-3],
  [È necessario che l'utente inserisca i conttatti da aggiungere alla rubrica.],
  [
    UC8.1.2\
    Interno
  ],
  [R-061-F-3],
  [L'utente deve avere la possibilità di rinominare una rubrica.],
  [
    UC8.2\
    Capitolato
  ],
  [R-062-F-3],
  [È necessario che l'utente inserisca l'Identificativo della rubrica da rinominare.],
  [
    UC8.2.1\
    Interno
  ],
  [R-063-F-3],
  [È necessario che l'utente inserisca il nuovo nome per la rubrica che intende rinominare.],
  [
    UC8.2.2\
    Interno
  ],
  [R-064-F-3],
  [L'utente deve avere la possibilità di modificare una rubrica.],
  [
    UC8.3\
    Capitolato
  ],
  [R-065-F-3],
  [È necessario che l'utente inserisca l'Identificativo della rubrica da modficare.],
  [
    UC8.3.1\
    Interno
  ],
  [R-066-F-3],
  [È necessario che l'utente inserisca i nuovi contatti di cui la rubrica sarà composta.],
  [
    UC8.3.2\
    Interno
  ],
  [R-067-F-3],
  [L'utente deve avere la possibilità di eliminare una rubrica.],
  [
    UC8.4\
    Capitolato
  ],
  [R-068-F-3],
  [È necessario che l'utente inserisca l'Identificativo della rubrica che intende eliminare.],
  [
    UC8.4.1\
    Interno
  ],
  [R-069-F-3],
  [L'utente deve avere la possibilità di condividere una rubrica con un altro utente.],
  [
    UC8.5\
    Capitolato
  ],
  [R-070-F-3],
  [È necessario che l'utente inserisca l'Identificativo della rubrica che si vuole condividere.],
  [
    UC8.5.1\
    Interno
  ],
  [R-071-F-3],
  [È necessario che l'utente inserisca l'Indirizzo Email del contatto con il quale effettuare la condivisione.],
  [
    UC8.5.2\
    Interno
  ],
  [R-072-F-3],
  [È necessario che l'utente riceva un messaggio di errore se inserisce un nome duplicato o non valido per una rubrica.],
  [
    UC8.6\
    Interno
  ],
  [R-073-F-3],
  [È necessario che l'utente riceva un messaggio di errore se inserisce un identificativo non valido per una rubrica.],
  [
    UC8.7\
    Interno
  ],
  [R-074-F-3],
  [È necessario che l'utente riceva un messaggio di errore se inserisce uno o più identificativi non validi per dei contatti.],
  [
    UC8.8\
    Interno
  ],
  [R-075-F-3],
  [È necessario che l'utente riceva un messaggio di errore se inserisce un Indirizzo Email non valido con cui condividere una rubrica.],
  [
    UC8.9\
    Interno
  ],
))
,caption: [requisiti di funzionalità])

== Requisiti di qualità
#figure(
requirements("#bbfabe", ( 
  [R-001-Q-1],
  [Bisogna realizzare e consegnare un documento di analisi dei requisiti con un diagramma dei casi d'uso in formato UML],
  [
    Capitolato
  ],
  [R-002-Q-1],
  [Bisogna realizzare e consegnare uno schema della base di dati in formato di diagramma entità relazione],
  [Capitolato],
  [R-003-Q-1],
  [Bisogna implementare ed esporre a lato backend una lista di endpoint cosicchè un client possa fruire dei vari servizi],
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
  [Bisogna effettuare una serie di stress test (test di carico) per alcuni casi d'uso implementati e riportare con un apposito documento i benchmark del sistema in ogni situazione: normale, di carico e di sovraccarico],
  [Capitolato],
  [R-008-Q-1],
  [La codifica dell'intera soluzione informativa deve essere conferme con quanto riportato nel `Piano di Qualifica`],
  [Capitolato],
))
,caption: [requisiti di qualità])

#pagebreak()

= *Tracciamento Requisiti*

=== Tracciamento fonte-requsito
#figure(
tracking2((
  [UC1.1],
[
R-001-F-2
],
[UC1.1.1],
[
R-002-F-2
],
[UC1.1.2],
[
R-003-F-2
],
[UC1.2],
[
R-004-F-2
],
[UC1.3],
[
R-005-F-2
],

[UC2.1],
[
R-006-F-1
],
[UC2.1.1],
[
R-007-F-1
],
[UC2.1.2],
[
R-008-F-1
],
[UC2.1.3],
[
R-009-F-1
],
[UC2.2],
[
R-010-F-1
],
[UC2.3],
[
R-011-F-1
],
[UC2.4],
[
R-012-F-1
],
[UC2.5],
[
R-013-F-1
],

[UC3.1],
[
R-014-F-1
],
[UC3.1.1],
[
R-015-F-1
],
[UC3.1.2],
[
R-016-F-1
],
[UC3.2],
[
R-017-F-1
],
[UC3.2.1],
[
R-018-F-1
],
[UC3.2.2],
[
R-019-F-1
],
[UC3.3],
[
R-020-F-1
],
[UC3.3.1],
[
R-021-F-1
],
[UC3.4],
[
R-022-F-1
],
[UC3.5],
[
R-023-F-1
],

[UC4.1],
[
R-024-F-1
],
[UC4.1.1],
[
R-025-F-1
],
[UC4.1.2],
[
R-026-F-1
],
[UC4.2],
[
R-027-F-1
],
[UC4.2.1],
[
R-028-F-1
],
[UC4.2.2],
[
R-029-F-1
],
[UC4.2.3],
[
R-030-F-1
],
[UC4.3],
[
R-031-F-1
],
[UC4.3.1],
[
R-032-F-1
],
[UC4.3.2],
[
R-033-F-1
],
[UC4.4],
[
R-034-F-1
],
[UC4.5],
[
R-035-F-1
],
[UC5.1],
[
R-036-F-1
],
[UC5.1.1],
[
R-037-F-1
],
[UC5.1.2],
[
R-038-F-1
],
[UC5.2],
[
R-039-F-1
],
[UC5.2.1],
[
R-040-F-1
],
[UC5.2.2],
[
R-041-F-1
],
[UC5.3],
[
R-042-F-1
],
[UC5.4],
[
R-043-F-1
],
/*
[UC6.1],
[
R-044-F-1
],
[UC6.1.1],
[
R-045-F-1
],
[UC6.1.2],
[
R-046-F-1
],
[UC6.1.3],
[
R-047-F-1
],
[UC6.1.4],
[
R-048-F-1
],
[UC6.2],
[
R-049-F-1
],
[UC6.2.1],
[
R-050-F-1
],
[UC6.2.2],
[
R-051-F-1
],
[UC6.2.3],
[
R-052-F-1
],
[UC6.3],
[
R-053-F-1
],
*/
[UC6.1],
[
R-044-F-1
],
[UC6.2],
[
R-045-F-1
],

[UC7.1],
[
R-046-F-3
],
[UC7.1.1],
[
R-047-F-3
],
[UC7.1.2],
[
R-048-F-3
],
[UC7.2],
[
R-049-F-3
],
[UC7.2.1],
[
R-050-F-3
],
[UC7.2.2],
[
R-051-F-3
],
[UC7.3],
[
R-052-F-3
],
[UC7.3.1],
[
R-053-F-3
],
[UC7.4],
[
R-054-F-3
],
[UC7.4.1],
[
R-055-F-3
],
[UC7.4.2],
[
R-056-F-3
],
[UC7.5],
[
R-057-F-3
],
[UC8.1],
[
R-058-F-3
],
[UC8.1.1],
[
R-059-F-3
],
[UC8.1.2],
[
R-060-F-3
],
[UC8.2],
[
R-061-F-3
],
[UC8.2.1],
[
R-062-F-3
],
[UC8.2.2],
[
R-063-F-3
],
[UC8.3],
[
R-064-F-3
],
[UC8.3.1],
[
R-065-F-3
],
[UC8.3.2],
[
R-066-F-3
],
[UC8.4],
[
R-067-F-3
],
[UC8.4.1],
[
R-068-F-3
],
[UC8.5],
[
R-069-F-3
],
[UC8.5.1],
[
R-070-F-3
],
[UC8.5.2],
[
R-071-F-3
],
[UC8.6],
[
R-072-F-3
],
[UC8.7],
[
R-073-F-3
],
[UC8.8],
[
R-074-F-3
],
[UC8.9],
[
R-075-F-3
],
))
,caption: [tracciamento requisiti])

#pagebreak()

== Riepilogo 
#figure(
summary((
  [Funzionali],
  [40],
  [5],
  [30],
  [Qualità],
  [8],
  [0],
  [0],
))
,caption: [riepilogo])

== Conclusioni
I requisiti del prodotto possono essere modificati durante il suo ciclo di vita per apportare miglioramenti o aggiornamenti. In caso di disponibilità di risorse sufficienti, il gruppo considererà di aggiungere nuovi requisiti per migliorare e aumentare il valore del prodotto. Pertanto, eventuali aggiornamenti saranno presi in considerazione in futuro.