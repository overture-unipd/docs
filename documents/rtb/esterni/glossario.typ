#import "//templates/document.typ": *

#show: project.with(
  title: "Glossario",
  managers: p.vedovato,
  recipients: (
    p.vardanega,
    p.cardin,
    [_#(p.zextras)_],
  ),
  changelog: (
    "0.0.2", "2023-11-15", p.vedovato, p.amadori, "Definizione e aggiunta dei primi termini",
    "0.0.1", "2023-11-13", p.vedovato, p.amadori, "Struttura di base ed introduzione",
  ),
  heading_numbers: none,
)

= Introduzione
Il seguente documento nasce con lo scopo di evitare ambiguitá o incomprensioni riguardanti la terminologia utilizzata nella varia documentazione del progetto. Per questo motivo qui vengono riportate le definizioni dei termini specifici del dominio d'uso, adottando nel farlo una struttura alfabetica per navigare con facilità internamente al documento.
\
La presenza di un termine all'interno del glossario negli altri documenti viene indicata applicando #glossary("questo stile").

#pagebreak()
= A
- Analisi dei requisiti
L'analisi dei requisiti è un processo fondamentale nel ciclo di vita dello sviluppo del software che mira a comprendere a fondo i bisogni e a definire e documentare le necessità e le aspettative degli utenti o degli stakeholder relativamente a un sistema software. \
Definisce quindi cosa deve succedere per rispondere alle richieste fatte al prodotto e riflette la struttura funzionale di quest'ultimo, e non quella architetturale, infatti non deve costruire l’algoritmo di soluzione ma deve essere consapevole della fattibilità tecnologica.

- API
Acronimo di Application Programming Interface (Interfaccia di Programmazione delle Applicazioni), è un insieme di regole e protocolli che consentono a diversi software o componenti di comunicare tra loro. Esse definiscono i metodi e le strutture dati che possono essere utilizzati per interagire con un'applicazione o un servizio, consentendo a diverse applicazioni di scambiare informazioni e funzionalità in modo standardizzato, agendo in sostanza come un ponte che consente a diversi programmi di collaborare e condividere dati in modo efficiente.

- Attore
Un attore è una qualsiasi entità, umana o meno, che interagisce con la parte di prodotto alla quale l’attore è esposto (sistema) per raggiungere uno scopo o soddisfare un bisogno. Questo viene fatto eseguendo una serie di azioni possibili definite dal ruolo assunto dall'attore e dai casi d'uso associati a quest'ultimo.

#pagebreak()
= B
- Board
In GitHub, un project board, o semplicemente board, è uno strumento che aiuta a organizzare e tenere traccia delle attività del progetto. Consiste in colonne che rappresentano lo stato delle attività, come "To Do" (Da Fare), "In Progress" (In Corso), e "Done" (Fatto). Gli issue e le pull request possono essere assegnati a queste colonne per indicare il loro stato corrente.

- Branch
Nello sviluppo software un branch è una copia separata del codice sorgente che consente agli sviluppatori di lavorare alle modifiche su un ramo a parte senza influenzare direttamente il ramo principale. I branch facilitano lo sviluppo parallelo e la gestione delle versioni.

- Baseline
Una baseline è la versione approvata di un prodotto di lavoro (parte di un progetto) che può essere modificato solo attraverso procedure formali di controllo delle modifiche. Ogni baseline è soggetta a controllo di versione e di configurazione.

#pagebreak()
= C
- Capitolato
Un capitolato è un documento che stabilisce le specifiche, i requisiti e le condizioni principali di un progetto o di un'appalto. Viene utilizzato per definire in modo dettagliato ciò che deve essere realizzato, quali sono le prestazioni attese e le regole che devono essere seguite. Il capitolato fornisce una base solida per la pianificazione e l'esecuzione di un progetto, assicurando che tutte le parti coinvolte abbiano una chiara comprensione delle aspettative, esponendo un problema/bisogno a cui trovare soluzione.

- Carbonio
Carbonio, il prodotto principale di _#(p.zextras)_, è una soluzione di collaborazione online on-premise che offre un’insieme di funzionalità il cui fulcro ruota attorno al servizio principale: l’email personale. Carbonio è distribuito come prodotto Open Source e senza supporto da parte di _#(p.zextras)_, oppure a pagamento con funzionalità aggiuntive e supporto diretto con un team di professionisti dedicati.

- Caso d’uso
Un caso d'uso è una tecnica per individuare i requisiti funzionali di un capitolato. Esso descrive interazioni tra sistema (una parte del prodotto) e attori come sono percepite dagli utenti, definendo come il sistema deve essere utilizzato e che funzionalità espone. Consiste dunque di un insieme di scenari (sequenze di azioni) che hanno in comune uno scopo finale (obiettivo) per un utente (attore).


#pagebreak()
= D
- Discord
Discord è una piattaforma di comunicazione online che combina chat testuale, vocale e video. Consente agli utenti di creare server, organizzare discussioni in canali e personalizzare l'esperienza. Discord offre un sistema di ruoli e autorizzazioni che consente di controllare l'accesso agli utenti e di definire chi può fare cosa all'interno del server. Inoltre supporta bot e integrazioni di terze parti che consentono di aggiungere funzionalità personalizzate ai server.


#pagebreak()
= E
- Economicità
Unione di efficacia ed efficienza, misura la capacità di raggiungere l'obiettivo prefissato unendo allo stesso tempo l'uso minimo delle risorse indispensabili.

- Efficacia
Misura della capacità di raggiungere l'obiettivo prefissato.

- Efficienza
Misura dell'abilità di raggiungere l’obiettivo impiegando le risorse minime indispensabili.

#pagebreak()
= F


#pagebreak()
= G
- Git
Git è un sistema di controllo versione distribuito (DVCS), progettato per tracciare le modifiche nel codice sorgente durante lo sviluppo del software. È uno strumento fondamentale per la gestione del controllo delle versioni, consentendo agli sviluppatori di lavorare in modo collaborativo e tenere traccia delle modifiche apportate al codice nel tempo, consentendo inoltre il ripristino a versioni precedenti del software in maniera controllata.

- GitHub
GitHub è una piattaforma di sviluppo collaborativo basata su Git che consente agli sviluppatori di lavorare insieme, gestire versioni del codice sorgente e facilitare la collaborazione in progetti software. Le sue caratteristiche principali includono repository per il controllo delle versioni, strumenti di tracciamento problemi (issues) e funzionalità di gestione progetti (project boards).

#pagebreak()
= H


#pagebreak()
= I //TODO ISO, IEC
- IETF
La Internet Engineering Task Force è un organismo internazionale, libero, composto da tecnici, specialisti e ricercatori interessati all'evoluzione tecnica e tecnologica di Internet.

- IMAP-to-JMAP proxy
Un IMAP-to-JMAP proxy è un software che consente ai client di posta elettronica JMAP di accedere a un server di posta elettronica IMAP. Il proxy traduce le richieste JMAP in richieste IMAP e le invia al server IMAP. Il server IMAP risponde al proxy, che poi traduce la risposta IMAP in una risposta JMAP e la invia al client di posta elettronica JMAP.

- Issue
In ambito di GitHub, una issue (problema) rappresenta un meccanismo attraverso il quale gli utenti possono segnalare, discutere e tenere traccia di attività specifiche all'interno di un progetto. Ogni issue ha un thread di commenti associato, consentendo la comunicazione tra i membri del team o i collaboratori esterni. Questo strumento facilita la collaborazione e la gestione delle attività nello sviluppo del software.

#pagebreak()
= J
- JMAP
Acronimo di JSON Meta Application Protocol, è un protocollo di comunicazione progettato per facilitare l'accesso e la gestione efficiente delle informazioni su server di posta elettronica e servizi di calendario. La caratteristica distintiva di JMAP è l'uso del formato di dati JSON (JavaScript Object Notation) per rappresentare le informazioni scambiate tra client e server, riducendo la quantità di dati scambiati. JMAP nasce inoltre per essere estendibile, consentendo l’introduzione di nuove funzionalità senza dover modificare il protocollo.

#pagebreak()
= K


#pagebreak()
= L


#pagebreak()
= M
- Milestone
Una milestone è una data di calendario che denota un punto di avanzamento atteso. Nel contesto di GitHub o di altre piattaforme di gestione progetti, le milestone sono spesso utilizzate per organizzare e tenere traccia di gruppi di issues o di attività correlate. Associare un gruppo di issues a una milestone può aiutare a monitorare il progresso e a stabilire obiettivi intermedi, contribuendo a gestire in modo più efficace lo sviluppo del progetto.

#pagebreak()
= N


#pagebreak()
= O


#pagebreak()
= P
- Proponente
Il proponente è colui che presenta ufficialmente l'iniziativa e promuove la sua realizzazione. Egli è cliente rispetto alle esigenze di prodotto e mentore rispetto alle scelte di sviluppo.

- Proof of Concept
Artefatto usa-e-getta, sotto forma di demo eseguibile, realizzato a inizio progetto per valutare la fattibilità tecnologica del prodotto atteso rispetto a specifiche funzionalità individuate con il proponente. Non si pone quindi l'obiettivo di essere una baseline architetturale bensì tecnologica, per dimostrare la padronanza delle teconlogie necessarie da parte del team.

- Protocollo
Un insieme di regole e convenzioni che regolano la comunicazione tra due o più entità (in informatica queste entità sono dispositivi elettronici).

- Pull request
Una pull request è una proposta di fusione delle modifiche apportate in un ramo del codice con il ramo principale di un progetto. È uno strumento chiave per la revisione del codice e l'integrazione collaborativa nello sviluppo del software.

#pagebreak()
= Q


#pagebreak()
= R
- Requisito
La capacità necessaria a un utente per risolvere un problema o raggiungere un obiettivo (lato bisogno), ma anche la capacità necessaria a un sistema per rispondere a una aspettativa(lato soluzione).

- RDBMS
Un sistema di gestione di basi di dati relazionali, che organizza i dati in tabelle collegate tra loro.

- Repository
Un repository, o più semplicemente repo, è uno spazio di archiviazione digitiale utilizzato per conservare e gestire i file di un progetto, in particolare nel contesto del controllo delle versioni del software. Un repository può includere file di codice, documentazione, risorse multimediali o qualsiasi altro elemento necessario per il progetto.

#pagebreak()
= S
- SMTP
Acronimo di Simple Mail Transfer Protocol, è un protocollo di comunicazione utilizzato per l'inoltro e la consegna di email su Internet. Esso definisce le regole e i comandi per il trasferimento di messaggi email tra il client e il server di posta del destinatario. SMTP è fondamentale per l'invio di email e garantisce che i messaggi vengano consegnati in modo affidabile e standardizzato attraverso la rete.

- Stress test
Uno stress test è un tipo di test che mette sotto pressione un sistema informatico, come un server o un'applicazione, al fine di valutarne le prestazioni e la stabilità in situazioni di carico massimo o condizioni di utilizzo intensivo. Questo tipo di test simula carichi di lavoro elevati o situazioni di sovraccarico al fine di identificare eventuali problemi di performance, di gestione delle risorse o di stabilità del sistema.

#pagebreak()
= T
- Telegram
Telegram è un'applicazione di messaggistica istantanea e una piattaforma di comunicazione che consente agli utenti di scambiare messaggi di testo, foto, video, documenti e altri tipi di file.

- Typst
Typst è un sistema di preparazione di documenti, simile a LaTeX, che semplifica la formattazione di documenti complessi, consentendo agli autori di concentrarsi sul contenuto senza preoccuparsi troppo della presentazione. Gli utenti scrivono il testo utilizzando comandi di markup Typst, i quali definiscono la struttura e l'aspetto del documento, sarà poi Typst ad occuparsi della formattazione, della creazione di indici, tabelle dei contenuti, bibliografie e altro ancora.


#pagebreak()
= U


#pagebreak()
= V
- Verifica dei requisiti
Processo che consiste nell'accertare che lo svolgimento delle attività di sviluppo non introduca errori. Ci si pone la domanda: ho costruito il sistema nel modo corretto? Ponendo attenzione quindi sul way of working.

- Validazione dei requisiti
Processo che consiste nell'accertare che il prodotto corrisponda alle attese. Ci si pone la domanda: ho costruito il sistema corretto/giusto? Ponendo attenzione quindi sul prodotto finale.

#pagebreak()
= W
- Way of Workinkg
Il Way of Working, che può essere tradotto in italiano come "modo di lavorare", definisce come organizzare al meglio le attività di progetto per far si che il team operi in maniera professionale. Esso può includere processi operativi, procedure, norme comportamentali, e l'utilizzo di strumenti o tecnologie specifiche. Adottare un Way of Working efficace può contribuire al successo e alla produttività nello svolgere il lavoro necessario.

#pagebreak()
= X


#pagebreak()
= Y


#pagebreak()
= Z
