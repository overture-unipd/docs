#import "//templates/document.typ": *

#show: project.with(
  title: "Norme di Progetto",
  managers: p.vedovato,
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "0.0.8", "2023-11-20", p.fabbian, p.vedovato, "Aggiunta prima parte della sezione 'Sviluppo'",
    "0.0.7", "2023-11-20", p.furno, p.vedovato, "Aggiunta della sezione 'Fornitura'",
    "0.0.6", "2023-11-18", p.vedovato, p.amadori, "Aggiunta della sezione 'Formazione'",
    "0.0.5", "2023-11-17", p.vedovato, p.amadori, "Aggiunta della sezione 'Miglioramento'",
    "0.0.4", "2023-11-16", (p.furno, p.fabbian), p.amadori, "Aggiunta della sezione 'Gestione dei processi'",
    "0.0.3", "2023-11-13", p.furno, p.amadori, "Aggiunta della sezione 'Documentazione'",
    "0.0.2", "2023-11-11", p.fabbian, p.amadori, "Aggiunta delle sezioni 'Verifica' e 'Validazione'",
    "0.0.1", "2023-11-11", p.vedovato, p.amadori, "Struttura iniziale del documento ed introduzione",
  ),
)

= Introduzione

== Scopo del documento
Questo documento ha lo scopo di descrivere le regole relative al Way of Working adottato da parte del gruppo per lo svolgimento del progetto didattico. In esso, dunque, appaiono tutte le best practices da seguire per ciascun processo e correlate attività che lo compongono, seguendo nel fare ciò la struttura definita dallo standard ISO/IEC 12207:1995.
\
Per la stesura è stato intrapreso un approccio di tipo incrementale, ovvero che prevede una realizzazione in più passi con aggiunte successive ad un impianto base. Di conseguenza ogni aggiornamento avverrà in
funzione delle decisioni prese dal gruppo durante lo svolgimento del progetto stesso.
\
I membri del gruppo si impegnano a visionare regolarmente questo documento e a rispettare con disciplina le regole definite in esso, per fare in modo di essere professionali, coerenti, sistematici ed uniformi nello svolgere il lavoro necessario.

== Scopo del progetto
Il progetto richiede lo sviluppo e la valutazione di un'estensione dello standard in Carbonio: questa deve mantenere la compatibilità con i client attualmente supportati e permettere l'espansione delle funzionalità per i client di nuova generazione.
\
L'obiettivo che si vuole raggiungere è essere in grado di valutare se conviene investire tempo e denaro per integrare il protocollo JMAP su Carbonio. Una volta completato, infatti, il servizio sarà impiegato internamente presso _#(p.zextras)_ insieme agli stress test sviluppati dal gruppo per valutare le prestazioni, la manutenibilità e la completezza del protocollo in questione. Tale valutazione sarà effettuata in confronto con i protocolli attualmente sviluppati in Carbonio e permetterà di rispondere effettivamente alla domanda posta dal capitolato.

== Glossario
Per evitare ambiguitá o incomprensioni riguardanti la terminologia usata nel documento, é stato deciso di adottare un glossario in cui vengono riportate le varie definizioni. In questa maniera in esso verranno posti tutti i termini specifici del dominio d'uso con relativi significati.
\
La presenza di un termine all'interno del glossario viene indicata applicando #glossary("questo stile").

== Riferimenti
=== Riferimenti normativi
- Capitolato d'appalto C8: JMAP, il nuovo protocollo standard per la comunicazione email \
  https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C8.pdf
- Standard ISO/IEC 12207:1995: \
  https://www.math.unipd.it/~tullio/IS-1/2009/Approfondimenti/ISO_12207-1995.pdf

=== Riferimenti informativi
- I processi di ciclo di vita del software \
  https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T2.pdf

#pagebreak()


= Processi primari

== Fornitura
=== Scopo
Come stabilito dallo standard ISO/IEC 1995, il processo di fornitura contiene le attività e i compiti del fornitore necessari per lo svolgimento del progetto. Il fornitore dovrà accordarsi con il proponente per stabilire, all'interno di un contratto, i requisiti, i vincoli e la data di consegna del prodotto finale.\ Lo scopo di questo processo è di tracciare e descrivere le attività svolte da ogni componente del gruppo _#(g.name)_, per determinare quanto lavoro è ancora da completare oppure è stato ultimato rispetto alle richieste del proponente. \
Una volta trovato l'accordo con il proponente sarà possibile passare alla fase esecutiva, redigendo il `Piano di Progetto`.

=== Descrizione
Questo processo è diviso nelle seguenti fasi:
- Inizializzazione
- Preparazione delle risposte alla richieste
- Contrattazione
- Pianificazione
- Esecuzione e controllo
- Revisione e valutazione
- Consegna e completamento

=== Aspettative
Il gruppo _#(g.name)_ intende instaurare e mantenere uno stretto rapporto di collaborazione con l'azienda proponente _Zextras_ e, in particolare, con le figure dei referenti: Alessio Crestani e Federico Rispo.  Grazie ad un dialogo continuo, il gruppo vuole:
- ricevere feedback sul lavoro svolto
- verificare che i vincoli e i requisiti individuati corrispondano a quanto richiesto dal capitolato e dall'azienda proponente

=== Comunicazioni con il proponente
L'azienda proponente _Zextras_ mette a disposizione l'email, i profili discord dei referenti e la piattaforma Carbonio come canali di comunicazione attraverso i quali chiarire dubbi e stabilire futuri incontri telematici. Le riunioni esterne non hanno una cadenza regolare, ma vengono richieste in base alle necessità dal gruppo o dall'azienda. \
Un incontro può essere richiesto, per esempio, per alcune delle seguenti necessità:
- chiarimenti relativi a requisiti o vincoli del capitolato
- chiarimenti relativi alle tecnologie utilizzate
- richieste di feedback su quanto prodotto

Per ogni colloquio con l'azienda proponente verrà redatto un resoconto sotto forma di `Verbale Esterno`, che riporterà nel nome e all'interno del documento la data del relativo incontro. \
I verbali redatti potranno essere consultati all'interno della relativa cartella presente sul repository #link("https://github.com/overture-unipd/docs/tree/master/documents"), disponibile per ogni baseline del progetto. 

=== Documentazione fornita
Vengono elencati di seguito i documenti che il gruppo _#(g.name)_ consegnerà all'azienda proponente _Zextras_ e ai committenti _Prof. Tullio Vardanega_ e _Prof. Riccardo Cardin_.

==== `Valutazione dei Capitolati`
La `Valutazione dei capitolati` è un documento che fornisce una panoramica dettagliata sui capitolati d'appalto, presentati il giorno 2023-10-17. Per ogni progetto si individuano le richieste del proponente, le possibili soluzioni ed eventuali criticità. \
È suddiviso nelle seguenti sezioni:
- *Descrizione*: nome del progetto, azienda proponente, informazioni generali relative al prodotto da sviluppare secondo quanto descritto nella presentazione del capitolato
- *Dominio applicativo*: contesto del progetto
- *Dominio tecnologico*: tecnologie da utilizzare per lo sviluppo
- *Aspetti positivi*
- *Fattori critici*
- *Conclusione*: motivazioni sulla scelta/non scelta del capitolato

==== `Analisi dei Requisiti`
L'`Analisi dei Requisiti` è un documento che definisce le funzionalità che il prodotto è in grado di offrire ed i requisiti da soddisfare affinchè il software sviluppato sia conforme alle richieste fatte dal proponente.
Contiene le seguenti informazioni:
- *Descrizione del prodotto*: obiettivo finale del prodotto e le sue funzionalità principali
- *Lista dei casi d'uso*: identificazione di tutti gli scenari di utilizzo del sistema da parte degli utenti. Per ogni caso d'uso sono analizzati: lo scenario, gli attori coinvolti e le azioni che possono compiere
- *Lista dei requisiti*: tutte le richieste o vincoli definiti dal proponente o dedotti dal team per la realizzazione del prodotto finale. I requisiti possono essere obbligatori, desiderabili e opzionali e verranno classificati dal gruppo a seconda della loro importanza.

==== `Piano di Progetto`
Il `Piano di Progetto` è un documento soggetto a versionamento e approvazione, redatto e aggiornato dal Responsabile con il supporto degli Amministratori durante tutta la durata del progetto. Ha l'obiettivo di delineare la pinaificarzione e la gestione delle attività necessarie per la realizzazione del progetto. \
Contiene le seguenti informazioni:
- *Analisi dei Rischi*: identificazione di eventuali problematiche riscontrate durante lo sviluppo che potrebbero rallentare o ostacolare le attività di progetto. Al fine di fare prevenzione sui problemi, il gruppo metterà a disposizione delle soluzioni per il team il prima possibile. Sono classificati in: rischi organizzativi e rischi tecnologici.
- *Modello di sviluppo*: descrizione dell'approccio metodologico e strutturato utilizzato dal gruppo per lo sviluppo del prodotto
- *Pianificazione*: scansione dei periodi, con i relativi eventi e attività da svolgere, all'interno di un calendario. Per ogni periodo verranno inserite le suddivisioni dei ruoli e una stima dell'impegno richiesto da ogni componente del gruppo per svolgere le proprie attività.
- *Preventivo*: stima della durata di ogni singolo periodo; il tempo necessario per poter completare tutte le attività.
- *Consuntivo*: confronto del lavoro svolto rispetto al preventivo per ottentere lo stato di avanzamento del progetto alla fine di ogni periodo.

==== `Piano di Qualifica`
Il `Piano di Qualifica` è un documento formale che descrive i compiti e le attività svolte dal Verificatore all'interno del progetto, necessarie a garantire qualità al prodotto software che si intende sviluppare. È uno strumento fondamentale per la gestione del processo di sviluppo software: assicura che il prodotto finale sia conforme alle specifiche richieste e alle aspettative del committente, monitorando il suo stato di avanzamento rispetto agli obiettivi prefissati. Ogni membro del gruppo che parteciperà allo sviluppo farà riferimento a questo documento al fine di garantire la qualità richiesta.\
È suddiviso nelle seguenti sezioni:
- *Qualità di processo*: definizione dei parametri e delle metriche da rispettare per garantire processi di qualità elevata
- *Qualità di prodotto*: definizione dei parametri e delle metriche da rispettare per garantire un prodotto finale di qualità elevata
- *Test*: descrizione dei test necessari per assicurare che i requisiti stabiliti vengano soddisfatti nel prodotto
- *Valutazioni per il miglioramento*: resoconto dell'attività di verifica svolta e delle criticità riscontrate durante il processo di sviluppo del software

==== `Glossario`
Il `Glossario` è un documento di supporto concepito sia per i membri del gruppo, ma anche per i committenti e l'azienda proponente. La sua stesura permette di evitare ambiguitá o incomprensioni riguardanti la terminologia utilizzata in tutta la documentazione del progetto. 

==== `Lettera di Presentazione`
La `Lettera di Presentazione` è il documento con cui il gruppo _#(g.name)_ esprime la volontà di partecipare alla fase di revisione del prodotto software. All'interno del documento viene elencata la documentazione messa a disposizione dei committenti e del proponente e i termini stabiliti per la consegna del prodotto ultimato. 

=== Strumenti
Gli strumenti software utilizzati per il processo di fornitura sono di seguito descritti.

==== Google Calendar
È un sistema di calendari creato da Google, offre la possibilità di pianificare le riunioni interne e condividerle a tutti i membri del gruppo.

==== Typst
Linguaggio utilizzato per la creazione dei diari di bordo, attraverso l'omonimo sito #link("typst.app").

==== Carbonio - Zextras Chats
Il prodotto principale dell'azienda _Zextras_; è utilizzato dal gruppo _#(g.name)_ per organizzare videoconferenze con il proponente. 

==== Discord //vediamo se toglierlo
Piattaforma di messaggistica e videochat utilizzata dal gruppo per le riunioni interne e come metodo informale per contattare l'azienda proponente.

== Sviluppo
=== Scopo
Facendo riferimento allo standard ISO/IEC 1995: lo scopo del processo di sviluppo è definire le attività di analisi, progettazione, codifica, integrazione, testing, installazione ed accettazione dei requisiti richiesti nel contratto.

=== Descrizione
Le attività che compongono il processo di sviluppo sono:
+ Implementazione del processo;
+ Analisi dei requisiti di sistema;
+ Progettazione architetturale del sistema;
+ Analisi dei requisiti software;
+ Progettazione architetturale del software;
+ Progettazione dettagliata del software;
+ Codifica e testing del software;
+ Integrazione del software;
+ Test di qualifica del software;
+ Integrazione di sistema;
+ Test di qualifica di sistema;
+ Installazione del software;
+ Supporto all'accettazione del software.

==== Implementazione del processo
Nel processo di implementazione per lo sviluppo del software, il primo passo consiste nella scelta di un modello di ciclo di vita adatto al progetto. Dopo aver definito le responsabilità dello sviluppatore, che includono aspetti come la documentazione, la gestione delle configurazioni, la risoluzione dei problemi e l'esecuzione dei processi di supporto, si procede ad affinare ulteriormente il processo mediante la specifica dell'utilizzo di standard, metodi, strumenti e linguaggi di programmazione.\
Segue la richiesta di formulare piani dettagliati, inclusivi di standard, metodi, strumenti e responsabilità, allo scopo di guidare le attività di sviluppo. Infine, si sottolinea l'importanza di garantire che, nonostante elementi non consegnabili possano essere impiegati durante lo sviluppo o la manutenzione del software, l'operatività e la manutenzione del prodotto software, dopo la consegna all'acquirente, siano indipendenti da tali elementi.

==== Analisi dei requisiti di sistema
Nel contesto dell'Analisi dei Requisiti di Sistema, il processo coinvolge il developer nell'esecuzione o supporto di attività contrattualmente previste. La prima fase richiede l'analisi dell'uso specifico del sistema in sviluppo per definire accuratamente i requisiti di sistema. Questi requisiti devono dettagliare funzioni, capacità, requisiti aziendali, organizzativi e utente, nonché aspetti come sicurezza, ingegneria dei fattori umani, interfaccia, operazioni e manutenzione, insieme a vincoli di progettazione e requisiti di qualifica, tutti documentati in modo approfondito.\
La fase successiva richiede la valutazione dei requisiti di sistema secondo criteri come rintracciabilità ai bisogni di acquisizione, coerenza con tali bisogni, testabilità e fattibilità della progettazione architettonica del sistema, oltre alla fattibilità delle operazioni e della manutenzione. Anche i risultati di queste valutazioni devono essere accuratamente documentati.

==== Progettazione architetturale del sistema
Nel contesto della progettazione architetturale del sistema, la prima fase prevede la definizione di un'architettura di alto livello del sistema, identificando gli elementi hardware, software e le operazioni manuali. Si assicura l'allocazione di tutti i requisiti di sistema tra gli elementi e successivamente si individuano gli elementi di configurazione hardware, gli elementi di configurazione software e le operazioni manuali. L'architettura del sistema e i requisiti di sistema allocati agli elementi vengono documentati.\
La fase successiva comporta la valutazione dell'architettura di sistema e dei requisiti degli elementi, con attenzione ai criteri di rintracciabilità, coerenza, adeguatezza degli standard e metodi di progettazione, fattibilità degli elementi software nel soddisfare i requisiti loro allocati, e la fattibilità di operazione e manutenzione. I risultati di tali valutazioni vengono accuratamente documentati.

==== Analisi dei requisiti software
L'Analisi dei Requisiti Software richiede che, per ciascun elemento software o elemento di configurazione software identificato, lo sviluppatore esegua i seguenti compiti:
- Definizione e documentazione dei requisiti software, inclusi dettagliati orientamenti per le caratteristiche qualitative consultando la norma ISO/IEC 9126. Tale definizione comprende:
	+ Specifiche funzionali e di capacità, con considerazioni su prestazioni, caratteristiche fisiche e condizioni ambientali in cui l'elemento software opererà;
	+ Identificazione delle interfacce esterne all'elemento software;
	+ Stipula dei requisiti di qualifica;
	+ Specifiche di sicurezza, riguardanti i metodi di operazione e manutenzione, le influenze ambientali e il rischio di lesioni al personale;
	+ Specifiche di sicurezza, focalizzate sui compromessi di informazioni sensibili;
	+ Specifiche di ingegneria dei fattori umani (ergonomia), comprendenti operazioni manuali, interazioni umano-apparecchio, vincoli sul personale e ambiti che richiedono concentrazione umana, sensibili agli errori umani e formazione;
	+ Definizione dei dati e requisiti del database;
	+ Requisiti di installazione e accettazione del prodotto software presso i siti di operazione e manutenzione;
	+ Documentazione per l'utente;
	+ Requisiti di operazione ed esecuzione dell'utente;
	+ Requisiti di manutenzione dell'utente.
- Valutazione dei requisiti software secondo i seguenti criteri, con documentazione dei risultati:
	+ Rintracciabilità ai requisiti di sistema e di progettazione del sistema;
	+ Coerenza esterna con i requisiti di sistema;
	+ Coerenza interna;
	+ Testabilità;
	+ Fattibilità della progettazione software;
	+ Fattibilità di operazione e manutenzione.
- Conduzione di una o più revisioni congiunte al cui completamento con successo, sarà istituita una baseline per i requisiti dell'elemento software.

==== Progettazione architetturale del software
Per ogni elemento software (o elemento di configurazione software, se identificato), l'attività include i seguenti compiti:
- Lo sviluppatore converte i requisiti dell'elemento software in un'architettura, delineandone la struttura di alto livello e identificando i componenti software. L'assegnazione di tutti i requisiti dell'elemento software ai suoi componenti e la loro ulteriore definizione per agevolare la progettazione dettagliata sono garantite. L'architettura dell'elemento software dovrà essere documentata.
- Sviluppo e documentazione di un progetto di alto livello per le interfacce esterne all'elemento software e tra i componenti software dello stesso.
- Sviluppo e documentazione di un progetto di alto livello per il database.
- Sviluppo e documentazione di versioni preliminari della documentazione per l'utente.
- Definizione e documentazione dei requisiti preliminari di prova e della pianificazione per l'integrazione del software.
- Valutazione dell'architettura dell'elemento software e dei progetti delle interfacce e del database, considerando criteri come rintracciabilità, coerenza interna ed esterna, appropriata utilizzo di metodi e standard di progettazione, fattibilità della progettazione dettagliata, e fattibilità di operazione e manutenzione. I risultati di queste valutazioni sono documentati.
- Conduzione di una o più revisioni.


==== Progettazione dettagliata del software
Per ogni elemento software (o elemento di configurazione software, se identificato), l'attività include i seguenti compiti:
- Sviluppo della progettazione dettagliata dei componenti software, ovvero, lo sviluppatore crea una progettazione dettagliata per ciascun componente software, definendo livelli inferiori con unità software che possono essere codificate, compilate e testate;
- Sviluppo e documentazione di una progettazione dettagliata per le interfacce esterne all'elemento software, tra i componenti software e tra le unità software. La progettazione dettagliata delle interfacce deve consentire la codifica senza ulteriori informazioni;
- Sviluppo e documentazione di una progettazione dettagliata per il database;
- Aggiornamento della documentazione utente;
- Definizione e documentazione dei requisiti di prova e pianificazione per i test delle unità software;
- Aggiornamento dei requisiti di prova e pianificazione per l'integrazione del software;
- Valutazione della progettazione dettagliata del software e dei requisiti di prova in base a criteri come rintracciabilità, coerenza interna ed esterna, appropriato utilizzo di metodi e standard di progettazione, fattibilità dei test, e fattibilità di operazione e manutenzione. I risultati vengono documentati;
- Conduzione di una o più revisioni.

= Processi di supporto
== Documentazione
=== Scopo
Il processo di documentazione serve a tenere traccia di tutti processi e attività relativi al ciclo di vita
del software, riportando le decisioni adottate e le norme attuate dal grupppo durante lo svolgimento del progetto. Le norme stabilite all'interno di questo documento verranno rispettate da tutti i membri del gruppo _#(g.name)_.

=== Descrizione
La documentazione software traccia il lavoro svolto e le decisioni prese. Questa sezione del documento si occupa di tutte le norme adottate dal gruppo relative alla documentazione.

=== Aspettative
- Definire delle regole chiare e concise per la stesura di tutti i documenti relativi al progetto
- Creare template per tutti i tipi di documenti per garantire omogeneità

=== Ciclo di vita
Il ciclo di vita di un documento è composto da sette fasi:
+ Creazione o adattamento del template: la prima fase prevede la creazione o l'adattamento di un template per il documento corrente. Il template contiene la struttura e la formattazione del documento, nonché le informazioni di base, come titolo, autore e data.
+ Pianificazione e assegnazione delle sezioni: nella seconda fase le sezioni del documento vengono pianificate e assegnate ai Redattori incaricati. I Redattori sono responsabili della stesura delle proprie sezioni in conformità con le `Norme di Progetto`.
+ Raccolta dei contenuti e creazione della prima bozza: nella terza fase i Redattori raccolgono i contenuti da discutere e creano una prima bozza del documento. La bozza viene utilizzata come punto di partenza per la discussione e la revisione.
+ Stesura effettiva del documento: la quarta fase vede i Redattori redirigere le proprie sezioni in conformità con il modello e le `Norme di Progetto`.
+ Controllo dei contenuti: nella quinta fase i Redattori verificano che il contenuto delle proprie sezioni sia conforme alle `Norme di Progetto` e non contenga errori di compilazione.
+ Revisione: la sesta fase prevede che un Verificatore incaricato revisioni il documento per assicurarsi che le modifiche apportate siano corrette.
+ Approvazione e rilascio: nell'ultima fase il documento viene approvato da un Responsabile e rilasciato in versione finale.

=== Sistema di composizione tipografica
Per la composizione tipografica dei documenti, abbiamo deciso di utilizzare Typst, al posto del noto LaTeX. Offre diversi vantaggi rispetto a LaTeX:
- semplicità di utilizzo (simile a Markdown)
- programmabilità reale invece di un sistema di macro
- compilazione pressochè immediata.\
L'utilizzo di Typst semplifica la creazione e la manutenzione dei documenti, liberando i redattori dalla responsabilità della visualizzazione grafica e garantendo una certa coerenza nella documentazione del progetto.\
Il template sviluppato ed utilizzato è presente nella #link(g.org+"/"+g.docs)[repository #g.docs], nella cartella `templates`.

=== Struttura dei documenti
Ogni documento prodotto viene organizzato nelle seguenti sezioni:

==== Intestazione
La prima pagina funge da intestazione del documento e presenta gli elementi di seguito:
- *Nome del documento*
- *Data*: la data in cui è stata approvata l'ultima versione del documento
- *Versione*: la versione corrente del documento
- *Logo del gruppo*: presente nel percorso `imgs/group_logo.png`
- *Email*: #link("mailto:"+g.mail)
- *Destinatari*: a chi è il rivolto il documento
- *Responsabile*: chi ha approvato il documento
- *Redattori*: incaricati della stesura del documento
- *Verificatori*: incaricati della verifica del documento

==== Registro delle modifiche
La seconda pagina è dedicata al registro delle modifiche. Le informazioni sono organizzate in una tabella e permettono di tenere traccia dei cambiamenti subiti dal documento. La tabella riporta i seguenti dati:
- *Versione*: il numero di versione del documento
- *Data*: data di approvazione del documento
- *Autori*: chi ha effettuato le modifiche
- *Verificatori*: chi ha approvato le modifiche
- *Dettaglio*: una breve descrizione

==== Indice
Nella terza pagina è presente l'indice che elenca le sezioni contenute nel documento.

==== Corpo del documento
Il contenuto del documento è suddiviso in capitoli, ognuno dei quali è formato da più sezioni ed eventuali sottosezioni.

==== Corpo del verbale
Il contenuto del verbale è suddiviso nelle seguenti sezioni:

- *Informazioni sulla riunione*:
  - *Luogo*: può essere il luogo fisico dove si è tenuto l'incontro oppure il nome della piattaforma online utilizzata
  - *Ora di inizio*
  - *Ora di fine*
  - *Partecipanti*: i nomi dei componenti del gruppo che hanno partecipato alla riunione
  - *Partecipanti esterni*: i nomi di eventuali partecipanti esterni
- *Ordine del giorno*: un elenco di ciò che verrà discusso durante la riunione
- *Sintesi dell'incontro*: contiene un breve riassunto delle discussioni e dei temi affrontati durante l'incontro.
- *Decisioni prese*: sezione che elenca in forma testuale le decisioni prese durante l'incontro. Alcune di queste potrebbero risultare in "attività individuate"
- *Attività individuate*: illustrazione dettagliata delle attività assegnate ai diversi membri del gruppo a conclusione dell'incontro. Queste informazioni, inserite in un'apposita tabella, riportano:
  - *ID*: collegamento alla relativa issue su GitHub
  - *Dettaglio*: breve spiegazione dell'attività
  - *Assegnatari*: i nomi degli incaricati a svolgere l'attività

==== Documenti del progetto
Verranno prodotti i seguenti documenti:
- *`Norme di Progetto`*
- *`Piano di Progetto`*
- *`Piano di Qualifica`*
- *`Analisi dei requisiti`*
- *`Glossario`*
- *`Verbali Interni`*
- *`Verbali Esterni`*


=== Regole stilistiche

==== Nomi assegnati ai file
I documenti PDF presenti nella #link(g.org+"/"+g.docs)[repository #g.docs], rispettano le seguenti regole per la nominazione dei file:
- minuscolo per i nomi, tranne che per i verbali (marcati `VI` e `VE`, rispettivamente per interni ed esterni)
- spaziatura fra le parole sostituita da un underscore
- per i verbali, la data dell'incontro è presente nel nome
- versione del documento alla fine del nome del file

I nomi dei documenti presenti nel progetto saranno quindi del tipo:
- *`Norme di Progetto`*: `norme_di_progetto_vX.X.X`
- *`Piano di Progetto`*: `piano_di_progetto_vX.X.X`
- *`Piano di Qualifica`*: `piano_di_qualifica_vX.X.X`
- *`Analisi dei Requisiti`*: `analisi_dei_requisiti_vX.X.X`
- *`Glossario`*: `glossario_vX.X.X`
- *`Verbali Interni`*: `VI_YYYY_MM_DD_vX.X`
- *`Verbali Esterni`*: `VE_YYYY_MM_DD_vX.X`

Si noti che i sorgenti `.typ` non includono la versione nel nome, ma è aggiunta ai PDF dopo la compilazione.\
Usare lo stesso nome per i documenti consente di utilizzare Git in modo appropriato: tracciare i cambiamenti di file di testo, con relativa facilità di utilizzo della funzione di "diff".

==== Stile del testo
//link sottolineati, grassetto per elenchi puntati nei documenti (non verbali altrimenti bisogna correggere) e parole importanti. Font "New Computer Modern Mono" per nomi di file, documenti, esempi di codice. Maiuscolo per iniziali dei nomi e dei ruoli,
Nei documenti, esclusi i verbali, verranno utilizzati:
- il _corsivo_ per:
  - il nome del gruppo (_#(g.name)_)
  - il nome dell'azienda proponente (_#(p.zextras)_)

- il *grassetto* per:
  - parole seguite da descrizione negli elenchi puntati
  - termini importanti
- un `font monospace` per:
  - i nomi dei documenti
  - i nomi dei file
  - i nomi delle cartelle o repository
  - esempi di codice
- il #underline("sottolineato") per:
  - i link
  - l'indirizzo email
- le lettere maiuscole per:
  - le iniziali dei nomi
  - gli acronimi
  - le iniziali dei ruoli svolti dai componenti del gruppo

==== Formato delle date
Viene adottato lo standard internazionale *ISO 8601*, nella forma `YYYY-MM-DD`, indicante rispettivamente
- *`YYYY`*: l'anno con 4 cifre
- *`MM`*: il mese con 2 cifre
- *`DD`*: il giorno con 2 cifre

=== Strumenti
I seguenti strumenti sono stati scelti dal gruppo per la realizzazione della documentazione:
- *Typst*: linguaggio per la stesura dei documenti, tramite #link("typst.app")
- *GitHub*: servizio di hosting di repository

//=== Metriche, più avanti

== Verifica
=== Scopo ed aspettative
La verifica nel ciclo di vita del software è un processo continuo che inizia dalla fase iniziale di progettazione e si estende fino alla manutenzione successiva. Questo elemento cruciale mira a garantire la conformità tra gli output del software (codice sorgente, documentazione, test e così via) e le relative aspettative, fondandosi su criteri come coerenza, completezza e correttezza dei risultati.\
L'obiettivo principale è implementare un processo di verifica per ogni prodotto, assicurando efficienza e accuratezza. Attraverso l'applicazione di tecniche di analisi e test, il processo verifica che i prodotti soddisfino i requisiti specificati. Seguire procedure definite, adottare criteri affidabili e validare il prodotto al termine della verifica sono elementi chiave per garantirne il corretto sviluppo.\
La stabilità del prodotto, risultato del processo di verifica, è fondamentale per agevolare il passaggio verso la successiva fase di validazione, assicurando complessivamente la qualità del software.

=== Descrizione
La verifica rappresenta un processo affidato a un team di verificatori, che si estende a tutti i processi in corso al fine di garantire l'aderenza agli standard stabiliti. Questo procedimento non è un evento isolato, ma piuttosto un ciclo continuo che si ripete periodicamente, adattandosi alle mutevoli esigenze del progetto nel corso del tempo.\
Il fulcro di questo processo è il `Piano di Qualifica`, un documento dettagliato che traccia il percorso della verifica. Esso delinea chiaramente gli obiettivi da raggiungere, i criteri di accettazione da rispettare e i metodi specifici che saranno impiegati per condurre la verifica in modo accurato ed efficiente.\
La documentazione derivante dalla verifica non è semplicemente un compito burocratico, ma riveste un ruolo cruciale nell'assicurare la trasparenza, la ripetitibilità e la tracciabilità dell'intero processo. Nei seguenti punti, saranno elencate le possibili attività da adottare.

=== Analisi statica
L'analisi statica rappresenta una metodologia di verifica che prescinde dall'esecuzione del prodotto, fondata su una revisione critica del codice e della documentazione. L'obiettivo primario di questa analisi è verificare la conformità ai vincoli, l'assenza di difetti e la presenza delle proprietà desiderate.
Applicabile a qualsiasi prodotto del progetto, l'analisi statica adotta comunemente due metodi di lettura: il walkthrough e l'inspection.\
Il walkthrough, una tecnica collaborativa che coinvolge sia il verificatore che l'autore del prodotto, prevede una lettura a pettine della documentazione e del codice sorgente.\
L'inspection, preferibile al walkthrough per la sua velocità ed efficienza, si basa su una lista di controllo e consente di identificare tempestivamente e sistematicamente potenziali problematiche.\
L'analisi statica costituisce una fase cruciale nel processo di verifica, ed è vantaggiosa nelle prime fasi del progetto quando i documenti sono ancora relativamente semplici e tutte le attività accuratamente documentate.

=== Analisi dinamica
L'analisi dinamica costituisce una tecnica di verifica del software che si basa sull'esecuzione del codice al fine di individuare difetti o eventuali problemi di funzionamento ed assicurare la qualità del prodotto finale.\
Le tecniche principali utilizzate in questa fase sono i test, rappresentati da esecuzioni del codice con insiemi specifici di dati di input, finalizzati a verificare il comportamento atteso del software.\
L'efficacia di un test è legata alla sua natura decidibile e ripetibile. Il termine "decidibile" implica che, dati gli stessi input, il test deve produrre sempre lo stesso risultato, mentre il termine "ripetibile" suggerisce che il test può essere eseguito più volte senza che i risultati siano influenzati da fattori esterni.\
Fattori determinanti per l'efficacia dei test includono la qualità del codice, l'accurata identificazione dei requisiti e la definizione di un dominio di casi di prova adeguato. Quest'ultimo rappresenta l'insieme completo di tutti i possibili casi di prova che possono essere eseguiti sul software, ed è responsabilità del verificatore definirlo in base ai requisiti del software e alla sua complessità.\
L'automazione dei test può essere realizzata attraverso l'utilizzo di strumenti specifici come driver, stub e logger. I driver sono componenti attive che guidano il test, mentre gli stub sono componenti passive che simulano parti del sistema non direttamente coinvolte nel test. I logger, invece, registrano i risultati dei test.\
Diversi tipi di test sono disponibili, differenziandosi sulla base della dimensione dell'oggetto del test. I test di unità focalizzano singole unità di codice, come funzioni o metodi, mentre i test di integrazione si concentrano sull'interazione tra diverse unità di codice. I test di sistema, invece, esaminano il comportamento del software come sistema completo, mentre i test di integrazione di sistema considerano l'interazione tra diversi sistemi. I test di accettazione, infine, sono eseguiti dal cliente o utente finale per verificare la conformità del software ai requisiti.

== Validazione
=== Scopo ed aspettative
La validazione costituisce l'essenziale verifica che il prodotto software sia in linea con i requisiti e le aspettative del cliente, rappresentando una fase cruciale nello sviluppo del software.\
Questo processo si concentra attentamente su diversi aspetti:
- *Conformità ai requisiti*: Il prodotto deve soddisfare integralmente tutti i requisiti specificati dal cliente.
- *Funzionamento corretto*: Il prodotto deve operare correttamente, in conformità con la logica di progettazione.
- *Usabilità*: Il prodotto deve essere intuitivo e di facile utilizzo.
- *Efficacia*: Il prodotto deve dimostrarsi efficace nel soddisfare le necessità dei clienti.
L'aspettativa finale è di giungere ad un prodotto che risponda pienamente ai requisiti identificati ed operi.

=== Descrizione
Durante la fase di validazione, concentreremo l'attenzione sull'utilizzo dei test precedentemente eseguiti durante l'attività di verifica, dettagliatamente normati nelle sezioni pertinenti delle `Norme di Progetto`. Con l'esecuzione del test di accettazione concluderemo la validazione del prodotto.


== Gestione della configurazione

== Gestione della qualità

= Processi organizzativi

== Gestione dei processi

=== Scopo
Il processo di gestione, come stabilito dallo standard ISO/IEC 12207:1997, identifica le attività generali e compiti che ogni membro del gruppo dovrà attuare per la gestione dei processi di progetto.

=== Descrizione
Questo processo è suddiviso nelle seguenti attività:
- Inizio e definizione dello scopo
- Pianificazione
- Esecuzione e controllo
- Revisione e valutazione
- Chiusura

=== Pianificazione
==== Scopo
Come stabilito dallo standard ISO/IEC 12207:1997, il Responsabile ha il compito di predisporre i piani per l'esecuzione di tutte le attività relative alla pianificazione. I piani dovranno contenere la descrizione delle attività e dei compiti associati. \
Il Responsabile redigerà questa pianificazione all'interno del documento `Piano di Progetto`, che riporterà una descrizione delle attività e dei compiti necessari a raggiungere l'obiettivo prefissato in un determinato periodo.

==== Descrizione
L'attività di pianificazione verrà articolata nelle seguenti sezioni:
- Ruoli
- Ticketing

==== Aspettative
L'attività di pianificazione serve a stabilire delle regole comuni che il gruppo _Ouverture_ attuerà per la sua organizzazione lavorativa.

==== Ruoli
I ruoli svolti dai membri
del gruppo per il progetto sono decisi dal Responsabile di Progetto. Al termine del progetto ogni componente dovrà aver ricoperto tutti i ruoli, che sono di seguito descritti.

*Responsabile di Progetto*\
Il Responsabile ha il compito fondamentale di coordinare i membri del gruppo e rappresentarlo presso il proponente e i committenti. \
I suoi principali compiti sono:
- approvare la documentazione
- gestire la pianificazione del progetto: determina le attività da svolgere e la loro priorità
- coordinare i membri: assegna e verifica l'avanzamento dei compiti che devono essere protati a termine
- studiare e gestire l'analisi dei rischi
- curare i rapporti tra i membri del gruppo e soggetti esterni

*Amministratore di Progetto*\
L'Amministratore definisce, controlla e gestisce l'ambiente e gli strumenti di lavoro del gruppo, con piena responsabilità sull'efficacia ed efficienza del Way of Working.\
I suoi principali compiti sono:
- migliorare l'ambiente di lavoro: ricercare gli strumenti necessari ad automatizzare i processi
- gestione dei processi: atta a risolverne i problemi legati
- redigere e mantenere la documentazione: gestisce il versionamento
- gestire la configurazione di prodotto: controllo sul prodotto software


*Analista*\
L'Analista approfondisce le richieste del Capitolato ed è presente principalmente nelle fasi iniziali del progetto. E' fondamentale che l' `Analisi dei Requisiti` sia adeguata: l'identificazione errata dei requisiti può compromettere in modo significato la fase di Progettazione e l'esito del progetto. Conosce meglio degli altri componenti il dominio del problema. \
Ha il compito di:
- studiare il problema e il relativo contesto applicativo
- raccogliere e studiare i bisogni dei committenti
- scrivere i documenti `Analisi dei Requisiti` e `Studio di Fattibilità`
- studiare i requisiti definendo la loro complessità

*Progettista*\
Il Progettista determina le scelte realizzative del progetto, trasformando i requisiti individuati dagli Analisti in un'architettura che modelli il problema. Il Progettista seguirà lo sviluppo particolarmente, ma non la manutenzione. \
Ha il compito di:
- sviluppare un prodotto economico, facilmente manutenibile a partire dal lavoro dell'analista
- favorire efficienza ed efficacia grazie alle scelte tecniche effettuate
- garantire un basso grado di accoppiamento grazie ad un sistema ben strutturato

*Verificatore*\
Il Verificatore controlla il lovoro svolto dagli altri componenti del gruppo, assicurandosi che le norme vengano attuate correttamente. \
Ha il compito di:
- verificare la correttezza delle attività tramite gli strumenti e tecniche definiti nelle `Norme di Progetto`
- redigere la sezione "Retrospettiva" del `Piano di Qualifica`, in cui descriverà che tipo di verifiche e metriche sono state adottare per le revisioni

*Programmatore*\
Il Programmatore è incaricato a svolgere l'attività di codifica del progetto e delle componenti di supporto con lo scopo di realizzare l'architettura proposta dal progettista. \
Ha il compito di:
- implementare la Specifica Tecnica scritta dal Progettista
- scrivere codice mantenibile, che rispetti le `Norme di Progetto`
- creare test per la verifica e validazione del codice
- scrivere il manuale utente

==== Ticketing
Il gruppo _Ouverture_ adotta l'*Issue Tracking System* (ITS) interno di GitHub. GitHub permette una gestione semplice e chiara dei compiti da svolgere: le Issue vengono create molto velocemente e possono essere chiuse con altrettanta rapidità.\
È compito del Responsabile creare i task ed assegnarli ai vari membri del gruppo, il cui stato di avanzamento è consultabile all'interno della Board. \
Le Issue sono create dal Responsabile e hanno:
- *titolo*: identifica in modo univoco il compito da svolgere
- *descrizione*: una lista dei nomi dei file coinvolti nel task
- *assegnatario*: il componente incaricato a svolgere il task
- *verificatore*: il componente incaricato ad accertare il corretto completamento del task
- *milestone*: il traguardo da raggiungere
- *etichetta*: il tipo di task
- *stato*: avanzamento del task
Ogni qualvolta ci sia la necessità di portare a termine un compito è necessario seguire la seguente procedura:
+ il Responsabile crea una nuova Issue su GitHub e la assegna. La Issue ha stato "to do"
+ all'inizio del lavoro di produzione la Issue cambia stato, passando a "in progress". Viene creato un nuovo branch per ogni Issue
+ finito il lavoro di produzione, viene aperta una pull request su GitHub, inserendo nella descrizione il comando `closes(#X)`, dove X identifica univocamente la Issue. Viene assegnato il Verificatore
+ il Verificatore si accerta del lavoro svolto:
  - se la verifica ha esito *positivo*:
    + il Verificatore conferma su GitHub la pull requet ED effettua il merge al ramo principale
    + la Issue viene marcata "Done" su GitHub automaticamente
  - se la verifica ha esito *negativo*:
    + il Verificatore rilascia una lista di cambiamenti suggeriti nella relativa Issue su GitHub
    + l'incaricato apporta le modifiche suggerite e si torna al punto 3

=== Coordinamento
Il Coordinamento è l'attività responsabile della gestione delle comunicazioni e degli incontri tra le diverse parti coinvolte nel progetto, ovvero membri del team, proponente e committenti. Il coordinamento assume un ruolo di rilievo nell'assicurare l'efficienza del progetto e il coinvolgimento di tutte le parti interessate.\
Le attività di coordinamento comprendono la gestione della comunicazione interna ed esterna, la conduzione delle riunioni e la definizione di comportamenti comuni per i membri del team.\
La comunicazione, cruciale per garantire chiarezza e concisione nel dialogo tra le parti coinvolte, si configura, seppur complessa, come un elemento essenziale per il successo del progetto.

==== Comunicazioni
*Comunicazioni interne*
Le comunicazioni saranno gestite attraverso due canali principali: *Telegram* e *Discord.* Telegram, un servizio di messaggistica istantanea, sarà utilizzato per consentire conversazioni rapide, informali e accessibili via smartphone. Le riunnioni remote, invece, avverranno in videcohiamata su Discord.\
Per organizzare efficacemente il lavoro di gruppo le discussioni saranno condotte su Telegram e si organizzerà un incontro straordinario tramite videochiamata su Discord per trattare eventuali temi critici. In caso di malfunzionamenti di Telegram, il gruppo si sposterà temporaneamente su Discord, includendo anche gli scambi informali.

*Comunicazioni esterne*
Il Responsabile del progetto sarà incaricato di gestire il dialogo esterno attraverso l'indirizzo email: #link("mailto:"+g.mail). Si assicurerà che ogni membro del gruppo sia informato sulle corrispondenze con committenti e proponente, seguendo le norme precedentemente stabilite per le comunicazioni interne.

==== Riunioni
Al fine di garantire l'efficienza delle riunioni il responsabile corrente avrà il compito di introdurre l'agenda e trattare in modo chiaro gli argomenti di discussione, inoltre sarà responsabile di riepilogare i punti principali e l'esito delle votazioni nel verbale successivo alla riunione.

*Riunioni Interne:*\
Le riunioni interne sono programmate settimanalmente alle ore 16:00 di ogni mercoledì, concordate di comune accordo tra i membri del gruppo. In caso di necessità, è possibile richiedere riunioni straordinarie durante la settimana tramite il canale dedicato su Telegram, con data e orario stabiliti attraverso un sondaggio. Tutte le riunioni online si svolgeranno nel canale Discord appositamente designato.

*Compiti del responsabile*
- Esporre i punti all'ordine del giorno relativamente alla loro priorità
- Aggiornare il resto del gruppo in caso di variazioni orarie
- Pianificare le attività da svolgere
- Assegnare i task ai membri del gruppo
- Approvare il verbale

*Doveri partecipanti*
- Essere presenti e puntuali alle riunioni settimanali
- Mantenere un comportamento consono durante lo svolgimento della riunione

*Riunioni Esterne:*\
Le riunioni esterne coinvolgono i membri del gruppo _#(g.name)_, il proponente e i committenti.\
Per le riunioni con il proponente, viene utilizzata la piattaforma #glossary("Carbonio"), e l'indirizzo viene comunicato al team di volta in volta. I membri del gruppo si impegnano a partecipare costantemente, cercando di adattare i propri impegni per garantire la presenza a tali incontri. Nel caso in cui gli impegni irrinunciabili dei membri rendano impossibile la partecipazione, il responsabile si assicurerà di informare tempestivamente il proponente o i committenti, proponendo di posticipare la riunione a una data successiva.

==== Verbali
*Verbali Interni:*\
L'obiettivo di una sessione di incontri è affrontare e risolvere gli argomenti specificati nell'ordine del giorno. Al termine di ogni incontro, viene aperta una Issue su Github per la preparazione, la verifica e l'approvazione del verbale. Il compito di redigere il verbale, seguendo il formato indicato nella sezione 3.1 di questo documento, è affidato al Responsabile, il quale deve assicurarsi di includere tutte le informazioni rilevanti discusse.

*Verbali Esterni*\
Come per il caso delle riunioni interne verrà redatto un Verbale con le stesse modalità descritte in precedenza.

== Miglioramento

=== Scopo
Il miglioramento rappresenta un procedimento volto a istituire, valutare, misurare, controllare e ottimizzare il ciclo di vita del software. In questo processo si va ad adottare un approccio ciclico, ovvero in cui le fasi vengono continuamente rivisitate e migliorate per garantire che il prodotto software risponda alle aspettative e mantenga elevati standard di qualità e efficienza.

=== Descrizione
Questo processo organizzativo è costituito da tre attività: 
- stabilimento dei processi;
- valutazione dei processi;
- miglioramento dei processi.

==== Stabilimento dei processi
Innanzitutto occorre stabilire una serie di processi organizzativi per l'intero ciclo di vita del software applicabili alle varie attività di progetto. Quest'ultimi devono essere documentati, come viene fatto proprio qui, e va implementato un meccanismo di controllo per sviluppare, monitorare e migliorare i processi stessi.

==== Valutazione dei processi
Come anticipato prima occorre sviluppare, documentare e applicare una procedura di valutazione del processo. Questa viene eseguita basandosi sugli obiettivi del processo, sulle metriche adottate e sull'analisi dei dati raccolti per poter poi proporre delle migliorie da applicare. Pianificare ed effettuare revisioni dei processi a intervalli appropriati garantisce la loro continua idoneità ed efficacia.

==== Miglioramento dei processi
Una volta identificati i potenziali miglioramenti questi vanno effettivamente implementati. La documentazione del processo di conseguenza deve essere aggiornata a riflettere il miglioramento dei processi organizzativi ed inoltre i dati storici, tecnici e di valutazione devono essere raccolti e analizzati per avere un avanzamento continuo e non regredire.

=== Metriche
La misurazione del miglioramento nello sviluppo del software può coinvolgere diverse metriche che riflettono aspetti chiave del processo stesso. Generalmente andiamo a valutare le seguenti:
- velocità di sviluppo;
- tasso di errori;
- conformità agli standard.

=== Strumenti
I seguenti strumenti sono stati scelti dal gruppo per il miglioramento:
- *GitHub*: per valutare tramite issues o project board fattori come la velocità di sviluppo, ed inoltre per automatizzare molte attività ripetitive nel processo di sviluppo, come la build degli artefatti, migliorando l'efficienza complessiva.

== Formazione

=== Scopo
Dato che alla base di un progetto di successo troviamo un personale esperto e qualificato, per fare in modo che tutti i componenti del gruppo siano preparati ed aggiornati nel ricoprire i ruoli di progetto è fondamentale il processo di formazione. \
In esso definiamo come approfondire i temi necessari per il lavoro che andiamo a svolgere, al fine di essere tempestivi ed efficaci nell'apprendimento.

=== Descrizione
Per poter formare i membri del gruppo è necessario innanzitutto comprendere a pieno il dominio del problema. Occorre quindi capire quali sono i temi da approfondire ed identificare nei vari processi da svolgere quali nozioni è necessario apprendere. \
Fatto ciò si deve passare all'individuazione del materiale di formazione, il quale crescerà nel tempo, dato che man mano che il progetto avanza anche il nostro grado di conoscenza e comprensione del problema dovrà aumentare il più possibile. \
Infine, una volta capito cosa e da dove studiare, è necessario che ognuno dei componenti del gruppo vada ad aggiornarsi individualmente oppure, quando possibile, tramite supporto di altri membri più esperti.

=== Aspettative
È previsto che ciascun membro del gruppo acquisisca le competenze fondamentali per lo svolgimento del progetto attraverso un adeguato percorso formativo. Questo non riguarda soltanto le tecnologie necessarie, ma si estende anche a ogni altro aspetto coinvolto nell'ingegneria del software.

=== Strumenti
Al fine di agevolare il processo di formazione, abbiamo optato per l'adozione di un repository privato, accessibile esclusivamente ai membri del gruppo, nel quale tutte le risorse utili sono organizzate in categorie per favorire un accesso efficiente e ordinato.