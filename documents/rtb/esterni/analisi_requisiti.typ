#import "//templates/document.typ": *

#show: project.with(
  title: "Analisi dei Requisiti",
  managers: p.vedovato,
  recipients: (
    p.vardanega,
    p.cardin,
    p.zextras,
    g.name,        
  ),
  changelog: (
    "0.0.2", "2023-11-12", p.bulychov, p.amadori, "Stesura dei primi Use Case",
    "0.0.1", "2023-11-10", p.bettin, p.amadori, "Struttura di base ed introduzione",
  ),
)

\

//TODO: Individuare i termini da aggiungere nel glossario

= Introduzione
== Scopo del documento
L'analisi dei requisiti è un documento fondamentale per tutti i progetti di sviluppo software che vogliono essere in ottemperanza con gli standard di qualità definiti dalla materia di ingegneria del software.\
Lo scopo del documento è quello di definire le funzionalità che il sistema sarà in grado di offire, ovvero i requisiti obbligatori, desiderati e opzionali che devono essere soddisfatti dal software sviluppato al fine di rispondere alle richieste fatte dal proponente.\
L'analisi quindi non deve fornire la soluzione al problema, ma deve essere consapevole della sua fattibilità tecnologica (costruendo quindi un confine tra analisi del problema e il suo design, quindi la soluzione).
In particolare, le finalità di questo documento possono essere definite e sintentizzate nei seguenti punti:\

- *Definire le esigenze dei proponenti*:\
Il documento di analisi dei requisiti fonda le sue basi sulle esigenze del proponente, ovvero le sue aspettative in merito al prodotto software che dovremmo andare a sviluppare. Queste richieste verranno raccolte tramite i documenti forniti dal proponente Zextras e dalle varie interviste svolte durante lo svolgimento del progetto.\

- *Tracciare i requisiti del sistema*:\
Una volta raccolte le esigenze del proponente, il documento di analisi dei requisiti deve identificare i requisiti del sistema suddividendoli in requisiti funzionali e non funzionali.\

- *Verificazione e validazione dei requisiti*:\
Il processo di verifica dei requisiti ha lo scopo di garantire che le attività siano svolte in modo corretto, senza errori, ponendo in primo piano il way of working del gruppo.\
La validazione dei requisiti invece consiste nel accertare che il prodotto corrisponda alle attese, ponendo attenzione al prdotto software finale.\

- *Fornire una base per la progettazione del sistema*:\
Il documento di analisi dei requisiti fornisce una base per la progettazione del sistema, in quanto definisce le funzionalità che il sistema deve offrire. I programmatori possono utilizzare il documento per comprendere le esigenze dei proponenti e identificare le soluzioni più appropriate per soddisfare tali esigenze.\

- *Fornire una base per la progettazione del sistema*:\
Un documento di analisi dei requisiti completo e accurato può aiutare a ridurre i rischi del progetto. Ciò è dovuto al fatto che il documento aiuta a garantire che i requisiti siano effettivamente corretti e completi, evitando così errori e ritardi nello sviluppo del sistema.

Arrivati al punto in cui si ha una chiara visione dei requisiti e degli attori del sistema software in questo documento se ne darà una formale rappresentazione grafica utilizzando il diagramma dei casi d'uso.
#pagebreak()

== Introduzione ai Casi d'Uso
=== Scopo
I casi d'uso seguono una struttura logica descrivendo ognuno di questi seguendo questo modello:
- Descrizione: Titolo del caso d’uso e breve commento;
- Attori coinvolti: Il soggetto che esegue una certa azione;
- Precondizioni: Stato del sistema prima del caso d’uso;
- Postcondizioni: Stato del sistema dopo l’esecuzione dello scenario del caso d’uso;
- Scenario principale: Una descrizione dettagliata delle azioni che un attore deve intraprendere per completare un caso d'uso. È un'espressione formale delle ipotesi e dei risultati del caso d'uso.



== Scopo del prodotto
Lo scopo principale del prodotto é quello di permettere all'azienda proponente di poter valutare se ha senso investire tempo e risorse per implementare il protocollo JMAP nel loro prodotto di punta chiamato Carbonio, una soluzione di collaborazione online che ruota attorno alla gestione delle email. Attualmente, Carbonio si basa protocolli standard IMAP, POP e Exchange Active Sync.\
L'utilizzo di JMAP potrebbe potenzialmente offrire piú funzionalitá e piú efficienza ad un costo inferiore.\
Sulla base del prodotto software realizzato si andranno ad eseguire una serie di stress test su diversi contesti (server con diverse caratteristiche hardware e software) con lo scopo di fornire delle valutazioni obiettive sulle prestazione e sulla scalabilità del protocollo JMAP.

== Glossario
Per evitare ambiguitá o incomprensioni riguardanti la terminologia usata nel documento, é stato deciso di adottare un glossario in cui vengono riportate le varie definizioni. In questa maniera in esso verranno riportati tutti i termini specifici del dominio d'uso con relativi significati.
\
La presenza di un termine all'interno del glossario viene indicata applicando #glossary("questo stile").

== Riferimenti
=== Riferimenti normativi
- Norme di progetto
- Capitolato d'appalto C8: JMAP, il nuovo protocollo standard per la comunicazione email
 \ https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C8.pdf

=== Riferimenti informativi
- T5 - Analisi dei requisiti
 \ https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T5.pdf
- P2 - I Diagrammi dei Casi d'Uso (UML)
 \ https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20Use%20Case.pdf
#pagebreak()

= Descrizione
== Obiettivi del prodotto
L'obiettivo del prodotto é lo sviluppo di un servizio di demo testabile per valutare le prestazioni, la manutenibilità e la completezza del protocollo JMAP in confronto agli altri protocolli attualmente utilizzati in Carbonio.

== Funzionalitá del prodotto
Le funzionalità chiave del prodotto includono:
- Invio e ricezione di email
- Gestione delle cartelle e dei relativi contenuti
- Eliminazione di email e cartelle
- Condivisione di cartelle tra gli utenti
- Eliminazione delle condivisioni di cartelle tra gli utenti

Inoltre il prodotto puó essere eseguito in un container Docker, permettendo all'azienda di eseguire in batteria i test di funzionalità e di performance, ed é sviluppato per essere scalabile mediante l’inizializzazione di più nodi stateless(B).

// TODO: Non so se mettere anche le funzionalitá opzionali, probabilmente andranno messe solo nel caso in cui vengano effettivamente implementate

== Caratteristiche utente
Gli utenti del prodotto sono principalmente aziende e organizzazioni che desiderano implementare un sistema di posta elettronica avanzato all'interno della propria infrastruttura. Questi utenti includono sia coloro che utilizzano già la soluzione Carbonio di Zextras, i quali potrebbero quindi richiedere nuove funzionalitá, che nuovi clienti.

= Casi d'uso
== Obiettivi
Questa sezione identifica e descrive tutti i casi d'uso individuati a seguito dell'analisi del capitolato d'appalto e del dialogo con l'azienda proponente.

== Attori

== Elenco
=== UC 1 - Login

#figure(image("//imgs/AdR-UC1.svg", width: 100%))

Attori:
- Utente;
Precondizioni:
- L’utente possiede un account valido a cui sono associati permessi specifici;
- L’utente non ha già fatto l’accesso;
- L’utente ha una connessione internet stabile.
Postcondizioni:
- L’utente ha effettuato correttamente l’accesso ed è stato riconosciuto sulla base dei propri permessi.
Scenario principale:
- L’utente:
  - inserisce la propria email nel modulo di accesso (UC1.1);
  - inserire la propria password nel modulo di accesso (UC1.2).
- Il sistema:
  - verifica la correttezza delle credenziali inserite dall’utente e concede l’accesso alla propria area riservata sulla base dei permessi rilevati;
  - se le credenziali non sono corrette, il sistema mostra un messaggio di errore esplicativo all'utente (UC3).
Generalizzazioni:
- UC1.1 - Inserimento email;
- UC1.2 - Inserimento password.
Estensioni:
- UC3 - Visualizzazione errore login.

#figure(image("//imgs/AdR-UC1.1.svg", width: 90%))


== UC 1.1 - Inserimento mail

Attori:
- Utente;
- SuperAdmin.
Precondizioni:
- L’utente possiede un account valido a cui sono associati permessi specifici;
- L’utente non ha già fatto l’accesso;
- L’utente sta facendo il login (UC1.1).
Postcondizioni:
- L’utente ha inserito correttamente la propria email e verrà utilizzata per l’autenticazione dell’utente.
Scenario principale:
- L'Utente/Il SuperAdmin:
  - inserisce la propria email nell’apposito campo.
- Il sistema:
  - verifica la correttezza dell’indirizzo email;
  - continua con l'autenticazione dell'utente utilizzando l'email inserita.

== UC 1.2 - Inserimento password

Attori:
- Utente.
Precondizioni:
- L’utente possiede un account valido a cui sono associati permessi specifici;
- L’utente non ha già fatto l’accesso;
- L’utente sta facendo il login (UC1.1).
Postcondizioni:
- L’utente ha inserito correttamente la propria password e verrà utilizzata per l’autenticazione dell'utente.
Scenario principale:
- L'Utente:
  - inserisce la propria password nell’apposito campo.
- Il sistema:
  - verifica la correttezza della pawwword inserita;
  - continua con l'autenticazione dell'utente.


=== UC 2 - Recupero password

#figure(image("//imgs/AdR-UC2.svg", width: 50%))

Attori:
- Utente.
Precondizioni:
- L'utente ha un account con il sistema;
- L'utente non ha già effettuato l'accesso al sistema;
- L'utente può riprovare ad accedere fornendo la nuova password quando reimpostata.
Postcondizioni:
- La password dell'utente è stata reimpostata e la vecchia password non è più valida e può provare ad utilizzarla per accedere.
Scenario principale:
- L’utente:
  - accede alla pagina di login dedicata;
  - utilizza l’opzione apposita “Password Dimenticata”;
  - inserisce il proprio indirizzo email;
  - inserisce la nuova password;
  - conferma la nuova password da inserire.
- Il sistema:
  - chiede all'utente di inserire il proprio indirizzo email;
  - chiede all'utente di inserire una nuova password;
  - aggiorna la password dell'utente correttamente.

=== UC 3 - Errore login: visualizzazione messaggio

Attori:
- Utente.
Precondizioni:
- L'utente ha inserito una combinazione non valida di email e password durante il processo di login;
- Il sistema ha verificato che le credenziali inserite dall'utente non siano valide.
Postcondizioni:
- L'utente visualizza un messaggio di errore relativo all'autenticazione fallita.
Scenario principale:
- L’utente:
  - accede alla pagina di login dedicata;
  - visualizza il messaggio di errore e può scegliere di reinserire le credenziali o di utilizzare la funzione di recupero password (UC2).
- Il sistema:
  - verifica che le credenziali inserite dall'utente siano corrette;
  - se le credenziali inserite dall'utente non sono corrette, il sistema visualizza un messaggio di errore relativo all'autenticazione fallita.
