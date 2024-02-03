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
    "1.1.0", "2024-02-03" , p.furno, p.bettin, "Modifiche conseguenti ai commenti derivanti dalla revisione RTB",
    "1.0.0", "2024-01-14" , p.bulychov, p.furno, "Approvazione per RTB",
    "0.3.1", "2024-01-14", p.bettin, p.furno, "Aggiornamento della sezione 'Iniziative di automiglioramento per la qualità'",
    "0.3.0", "2024-01-13", p.vedovato, p.bonavigo, "Aggiornamento della sezione 'Cruscotto di valutazione della qualità' conseguente al periodo V",
    "0.2.0", "2024-01-09", p.vedovato, p.bonavigo, "Aggiornamento della sezione 'Cruscotto di valutazione della qualità' conseguente al periodo IV",
    "0.1.1", "2024-01-08", p.bonavigo, p.bulychov, "Aggiornamento della sezione 'Metodologie di testing'",
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
Questo documento presenta le strategie di verifica e validazione implementate per garantire la #glossary("qualità") del prodotto e dei processi coinvolti nel progetto in questione. Data la natura evolutiva del documento, i contenuti saranno ampliati e modificati nel corso del tempo.\
Saranno inoltre riportati i risultati delle verifiche effettuate sul prodotto, con l'obiettivo di correggere tempestivamente eventuali problematiche riscontrate.

== Scopo del prodotto
Il prodotto mira principalmente a consentire all'azienda #glossary("proponente") di valutare se sia conveniente dedicare tempo e risorse all'integrazione del #glossary("protocollo") #glossary("JMAP") nel loro prodotto principale chiamato #glossary("Carbonio"), una soluzione di collaborazione online centrata sulla gestione delle email. Infatti JMAP é un protocollo di comunicazione progettato per semplificare l'interazione tra client e server nelle applicazioni di posta elettronica.\
Al momento, Carbonio utilizza protocolli standard come IMAP, POP e #glossary("Exchange Active Sync"), perció l'implementazione di JMAP potrebbe potenzialmente garantire maggiori #glossary("funzionalità") ed efficienza a un costo più contenuto.

== Glossario
Per evitare ambiguitá o incomprensioni riguardanti la terminologia usata nel documento, é stato deciso di adottare un glossario in cui vengono riportate le varie definizioni. In questa maniera in esso verranno riportati tutti i termini specifici del dominio d'uso con relativi significati.
\
La presenza di un termine all'interno del `Glossario` viene indicata applicando #glossary("questo stile").

== Riferimenti
=== Riferimenti normativi
- `Norme di Progetto v1.0.0`
- *Capitolato d'appalto C8*: JMAP, il nuovo protocollo standard per la comunicazione email \
  https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C8.pdf

=== Riferimenti informativi
- *ISO/IEC 9126* \
  https://en.wikipedia.org/wiki/ISO/IEC_9126
- *ISO/IEC 12207* \
  https://www.math.unipd.it/~tullio/IS-1/2009/Approfondimenti/ISO_12207-1995.pdf
- *Glossario* \
  https://overture-unipd.github.io/docs/rtb/esterni/glossario_v1.0.0.pdf

#pagebreak()
  
= Obiettivi metrici di qualità
Ogni #glossary("processo") viene valutato mediante l'applicazione di metriche specifiche, le cui definizioni sono dettagliate nelle `Norme di Progetto v1.0.0`. Questa sezione delinea i criteri che le metriche devono rispettare per essere valutate come accettabili o eccellenti.

== Qualità di processo 
La qualità di processo è esigenza primaria nello sviluppo software, difatti per poter avere un prodotto finale di qualità è necessario trovare alla base un'applicazione rigorosa di #glossary("best practice") ben definite che ci permettano di svolgere nel miglior modo possibile l'insieme delle attività da effettuare. \

=== Processi primari

==== Fornitura
#figure(metrics((
  [MPC01],
  [Earned value (EV)],
  [≥ 0],
  [≤ EAC],
  [MPC02],
  [Planned value (PV)],
  [≥ 0],
  [≤ #glossary("Budget At Completion") (BAC)],
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
)), caption: [Valori accettabili e ottimi per ogni metrica riguardante il processo di fornitura.])

==== Sviluppo
#figure(metrics((
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
)), caption: [Valori accettabili e ottimi per ogni metrica riguardante il processo di sviluppo.])

=== Processi di supporto

==== Documentazione
#figure(metrics((
  [MPC11],
  [Indice Gulpease],
  [≥ 60%],
  [≥ 80%],
  [MPC12],
  [Correttezza ortografica],
  [0 errori],
  [0 errori]
)), caption: [Valori accettabili e ottimi per ogni metrica riguardante il processo di documentazione.])

==== Verifica
#figure(metrics((
  [MPC13],
  [Code coverage],
  [≥ 90%],
  [100%],
  [MPC14],
  [Passed test cases percentage],
  [100%],
  [100%]
)), caption: [Valori accettabili e ottimi per ogni metrica riguardante il processo di verifica.])

==== Gestione della qualitá
#figure(metrics((
  [MPC15],
  [Quality metrics satisfied],
  [≥ 85%],
  [100%]
)), caption: [Valori accettabili e ottimi per ogni metrica riguardante il processo di gestione della qualitá.])

=== Processi organizzativi

==== Gestione dei processi
#figure(metrics((
  [MPC16],
  [Non-calculated risk],
  [≤ 3],
  [0],
  [MPC17],
  [Efficienza temporale],
  [≤ 3],
  [≤ 1]
)), caption: [Valori accettabili e ottimi per ogni metrica riguardante il processo di gestione dei processi.])

== Qualità di prodotto
La qualità di prodotto si riferisce all'insieme delle caratteristiche di un'entità risultante dallo sviluppo software, che ne determinano la capacità di soddisfare esigenze sia esplicite che implicite. In altre parole, essa è la misura in cui un prodotto risponde alle aspettative del cliente o agli standard prestabiliti.

=== Funzionalitá
#figure(metrics((
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
)), caption: [Valori accettabili e ottimi per ogni metrica riguardante la funzionalitá del prodotto.])

=== Affidabilitá
#figure(metrics((
  [MPD04],
  [Code coverage],
  [≥ 80%],
  [100%],
  [MPD05],
  [#glossary("Branch") coverage],
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
)), caption: [Valori accettabili e ottimi per ogni metrica riguardante l'affidabilitá del prodotto.])

=== Usabilitá
#figure(metrics((
  [MPD08],
  [Facilitá di utilizzo],
  [≤ 3 errori commessi nell'interazione],
  [0 errori commessi nell'interazione],
  [MPD09],
  [Tempo di apprendimento],
  [≤ 15 minuti],
  [≤ 5 minuti]
)), caption: [Valori accettabili e ottimi per ogni metrica riguardante l'usabilitá del prodotto.])

#pagebreak()

=== Efficienza
#figure(metrics((
  [MPD10],
  [Utilizzo risorse],
  [≥ 75%],
  [100%]
)), caption: [Valori accettabili e ottimi per ogni metrica riguardante l'efficienza del prodotto.])

=== Manutenibilitá
#figure(metrics((
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
)), caption: [Valori accettabili e ottimi per ogni metrica riguardante la manutenibilitá del prodotto.])

#pagebreak()

= Metodologie di testing
In questa sezione vengono elencati i #glossary("test") eseguiti sul prodotto, necessari per dimostrare che i vincoli individuati all'interno del documento `Analisi dei Requisiti v1.0.0` siano soddisfatti.\ Come anticipato all'interno delle `Norme di Progetto v1.0.0`, i test si dividono in:
- *Test di unità*: definiti sulle unità software autonome più piccole, sono implementati principalmente durante la progettazione;
- *Test di integrazione*: successivi ai test di unità, servono a verificare la corretta integrazione tra le diverse unità software;
- *Test di sistema*: garantiscono il corretto funzionamento del sistema. In particolare, verificano che tutti i requisiti individuati siano rispettati;
- *Test di accettazione*: alla presenza del committente, servono a verificare che il prodotto finale soddisfi tutti i requisiti.
Per la prima revisione del prodotto (RTB) vengono inseriti esclusivamente i test di *unità* e *integrazione* implementati e verificati per il #glossary("Proof of Concept") (PoC); ne verrano dunque aggiunti molti altri in seguito. Mentre per quanto riguarda i test di *sistema*, questi sono completi.

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
I test di unità sono concepiti per verificare il corretto funzionamento delle singole componenti di codice. Per 'unità' si intendono funzioni, classi o, in modo più generico, ogni singola entità di codice Responsabile di svolgere specifiche attività interne nel software. Per implementare efficacemente questa tipologia di test, l'azienda proponente ha consigliato l'utilizzo dei framework di unit testing *JUnit* e *Mockito*.
#figure(test(
  (
    "TU-1","Verificare il corretto funzionamento della funzione helper CreationIdResolver", "V",
    "TU-2","Verificare il corretto funzionamento della funzione helper ResultReferenceResolver", "V",
  )
), caption: [Stato dei test di unitá.])

== Test di integrazione
I test di integrazione sono progettati per verificare che le diverse parti di un'applicazione si integrino correttamente e collaborino senza problemi quando vengono combinate. Questi test mirano a identificare eventuali errori o problemi di interoperabilità tra i moduli o le unità di codice.
#figure(test(
  (
    "TI-1","Verificare che l'oggetto mail venga inserito correttamente nel database", "V",
    "TI-2","Verificare che l'oggetto mail inviato dal database venga ricevuto correttamente", "V",
    "TI-3","Verifica che la funzione create per la creazione di un oggetto mail imposti correttamente tutti i campi richiesti", "V",
    "TI-4","Verificare che l'allegato di un oggetto mail venga inserito correttamente nel database", "V",
    "TI-5","Verificare che l'allegato di un oggetto mail inviato dal database venga ricevuto correttamente", "V",
  )
), caption: [Stato dei test di integrazione.])

== Test di sistema
I test di sistema sono una fase del processo di testing software che mira a verificare che il sistema soddisfi i requisiti specificati nell'`Analisi dei Requisiti v1.0.0`. Questa fase di testing è condotta sul sistema nel suo complesso, dopo che i test di unità e di integrazione sono stati completati con successo. L'obiettivo principale dei test di sistema è assicurare che l'applicazione sia in grado di svolgere le sue funzioni nel contesto del suo ambiente operativo.
#figure(testSistema(
  (
    "TS-1","Verificare che un client di posta elettronica non autenticato possa autenticarsi all'interno del sistema.", "R-001-F-2", "NI",
    "TS-2","Verificare che il client fornisca all'interno della richiesta l'indirizzo email personale dell'utente per procedere con l'autenticazione.", "R-002-F-2", "NI",
    "TS-3","Verificare che il client fornisca all'interno della richiesta la password associata all'indirizzo email personale dell'utente per procedere con l'autenticazione", "R-003-F-2", "NI",
    "TS-4","Verificare che, nel caso in cui la fase di autenticazione fallisca, il client riceva dal server una risposta con eventuali dettagli che ne indicano il motivo.", "R-004-F-2", "NI",
    "TS-5","Verificare che un client autenticato possa essere in grado di reperire la risorsa JMAP Session, in modo da poter interagire con dati e servizi offerti dal server.", "R-005-F-1", "NI",
    "TS-6","Verificare che un client autenticato riceva una risposta contenente l'errore \"unknownCapability\" in caso di esecuzione di una richiesta con proprietà \"using\" non supportata dal server.", "R-006-F-1", "NI",
    "TS-7","Verificare che un client autenticato riceva una risposta contenente l'errore \"notJSON\" se il contenuto di una richiesta inviata al server non era application/json o se la richiesta non è stata interpretata dal server come I-JSON.", "R-007-F-1", "NI",
    "TS-8","Verificare che un client autenticato riceva una risposta contenente l'errore \"notRequest\" se una richiesta JSON non ha corrisposto alla firma di tipo dell'oggetto di richiesta (Request).", "R-008-F-1", "NI",
    "TS-9","Verificare che un client autenticato riceva una risposta contenente l'errore \"notRequest\" in caso di inserimento di una richiesta che supera uno dei limiti definiti sull'oggetto di capacità, come maxSizeRequest, maxCallsInRequest o maxCurrentRequests.", "R-009-F-1", "NI",
    "TS-10","Verificare che un client autenticato riceva una risposta contenente l'errore \"serverUnavailable\" in caso di inserimento di una richiesta che necessita di alcune risorse interne del server momentaneamente non disponibili.", "R-010-F-1", "NI",
    "TS-11","Verificare che un client autenticato riceva una risposta contenente l'errore \"serverFail\" in caso si verifichi un errore inaspettato o sconosciuto durante l'elaborazione di una sua richiesta dal server.", "R-011-F-1", "NI",
    "TS-12","Verificare che un client autenticato riceva una risposta contenente l'errore \"serverPartialFail\" e proceda risincronizzando i dati in caso si verifichi un errore inaspettato o sconosciuto durante l'elaborazione di una sua richiesta dal server.", "R-012-F-1", "NI",
    "TS-13","Verificare che un client autenticato riceva una risposta contenente l'errore \"unknownMethod\" in caso di inserimento di una richiesta contenente un metodo non riconosciuto dal server.", "R-013-F-1", "NI",
    "TS-14","Verificare che un client autenticato riceva una risposta contenente l'errore \"invalidArguments\" se uno degli argomenti di un metodo fornito all'interno di una richiesta al server è di tipo errato, non valido o, nel caso in cui sia obbligatorio, è assente", "R-014-F-1", "NI",
    "TS-15","Verificare che un client autenticato riceva una risposta contenente l'errore \"invalidResultReference\" se uno degli argomenti di un metodo fornito all'interno di una richiesta al server ha utilizzato un riferimento di risultato che non è stato possibile risolvere da parte del server.", "R-015-F-1", "NI",
    "TS-16","Verificare che un client autenticato riceva una risposta contenente l'errore \"forbidden\" in caso utilizzi, all'interno di una richiesta al server, un metodo la cui esecuzione violerebbe una Access Control List (ACL) o un’altra policy di autorizzazione.", "R-016-F-1", "NI",
    "TS-17","Verificare che un client autenticato riceva una risposta contenente l'errore \"accountNotFound\" se l’\"accountID\" fornito all'interno di una richiesta al server non corrisponde a un account valido.", "R-017-F-1", "NI",
    "TS-18","Verificare che un client autenticato riceva una risposta contenente l'errore \"accountNotSupportedByMethod\" se all'interno di una richiesta al server è presente un metodo o tipo di dato non supportato dall’\"accountID\" fornito.", "R-018-F-1", "NI",
    "TS-19","Verificare che un client autenticato riceva una risposta contenente l'errore \"accountReadOnly\" se all'interno di una richiesta al server è presente un metodo che tenta di modificare lo stato nonostante l’account sia in sola lettura.", "R-019-F-1", "NI",
    "TS-20","Verificare che un client autenticato riceva una risposta contenente l'errore \"cannotCalculateChanges\" se, in seguito all'inserimento di una richiesta, il server non possa calcolare le modifiche dello stato dalla stringa di stato fornita dal client.", "R-020-F-1", "NI",
    "TS-21","Verificare che un client autenticato riceva una risposta contenente l'errore \"overQuota\" se una richiesta inserita nel server richiede la creazione di oggetti che per dimensione o quantità superano il limite imposto dal server.", "R-021-F-1", "NI",
    "TS-22","Verificare che un client autenticato riceva una risposta contenente l'errore \"notFound\" se una richiesta inserita nel server fornisce degli ID che non possono essere trovati.", "R-022-F-1", "NI",
    "TS-23","Verificare che un client autenticato riceva una risposta contenente l'errore \"willDestroy\" se ha richiesto che un oggetto fosse sia aggiornato che distrutto all'interno della stessa richiesta al server.", "R-023-F-1", "NI",
    "TS-24","Verificare che un client autenticato riceva una risposta contenente l'errore \"tooLarge\" se una richiesta inserita nel server richiede la creazione di un oggetto che supera il limite definito dal server per la dimensione massima per un oggetto di quel tipo.", "R-024-F-1", "NI",
    "TS-25","Verificare che un client autenticato riceva una risposta contenente l'errore \"rateLimit\" se una richiesta inserita nel server comporta la creazione di un oggetto per cui sono stati creati troppi oggetti quel tipo di recente, raggiungendo un limite di frequeunza definito dal server.", "R-025-F-1", "NI",
    "TS-26","Verificare che un client autenticato riceva una risposta contenente l'errore \"invalidPatch\" se una richiesta inserita nel server fornisce un PatchObject non valido per modificare il record.", "R-026-F-1", "NI",
    "TS-27","Verificare che un client autenticato riceva una risposta contenente l'errore \"invalidProperties\" se una richiesta inserita nel server fornisce un record non valido.", "R-027-F-1", "NI",
    "TS-28","Verificare che un client autenticato riceva una risposta contenente l'errore \"singleton\" se una richiesta inserita nel server tentasse di agire erroneamente su un tipo singleton.", "R-028-F-1", "NI",
    "TS-29","Verificare che un client autenticato riceva una risposta contenente l'errore \"requestTooLarge\" se una richiesta inserita nel server contiene un numero di azioni che supera il massimo che il server è disposto a elaborare in una singola chiamata di metodo interna alla richiesta.", "R-029-F-1", "NI",
    "TS-30","Verificare che un client autenticato riceva una risposta contenente l'errore \"stateMismatch\" se una richiesta inserita nel server contiene un argomento ifInState e questo non corrisponde allo stato attuale.", "R-030-F-1", "NI",
    "TS-31","Verificare che un client autenticato riceva una risposta contenente l'errore \"blobNotFound\" e una richiesta inserita nel server contiene almeno un ID blob fornito per una parte del corpo dell'email che non esiste.", "R-031-F-1", "NI",
    "TS-32","Verificare che un client autenticato riceva una risposta contenente l'errore \"tooManyKeywords\" se una richiesta inserita nel server modifica un numero di parole chiave dell'email superiore al limite massimo definito dal server.", "R-032-F-1", "NI",
    "TS-33","Verificare che un client autenticato riceva una risposta contenente l'errore \"tooManyMailboxes\" se una richiesta inserita nel server modifica un numero di cartelle a cui appartiene l'email superiore al limite massimo definito dal server.", "R-033-F-1", "NI",
    "TS-34","Verificare che un client autenticato riceva una risposta contenente l'errore \"alreadyExists\" se una richiesta inserita in un server che vieta i duplicati contiene un record già esistente nell'account di destinazione.", "R-034-F-1", "NI",
    "TS-35","Verificare che un client autenticato riceva una risposta contenente l'errore \"fromAccountNotFound\" se una richiesta inserita nel server contiene un fromAccountId che non corrisponde a nessun account valido.", "R-035-F-1", "NI",
    "TS-36","Verificare che un client autenticato riceva una risposta contenente l'errore \"fromAccountNotSupportedByMethod\"  se una richiesta inserita nel server contiene un fromAccountId che non supporta un tipo di dato utilizzato.", "R-036-F-1", "NI",
    "TS-37","Verificare che un client autenticato riceva una risposta contenente l'errore \"anchorNotFound\" se una richiesta inserita nel server contiene un argomento di ancoraggio che non è stato trovato nei risultati della query.", "R-037-F-1", "NI",
    "TS-38","Verificare che un client autenticato riceva una risposta contenente l'errore \"unsupportedSort\" se una richiesta inserita nel server presenta una clausola di ordinamento non supportata o un metodo di collezione non riconosciuto dal server.", "R-038-F-1", "NI",
    "TS-39","Verificare che un client autenticato riceva una risposta contenente l'errore \"unsupportedFilter\" se una richiesta inserita nel server contiene un filtro che il server non è grado di elaborare.", "R-039-F-1", "NI",
    "TS-40","Verificare che un client autenticato riceva una risposta contenente l'errore \"tooManyChanges\" se una richiesta inserita nel server contiene un numero di modifiche superiore all'argomento maxChanges inserito del client.", "R-040-F-1", "NI",
    "TS-41","Verificare che un client autenticato riceva una risposta contenente l'errore \"mailboxHasChild\" se una richiesta inserita nel server desidera rimuovere una cartella(Mailbox) che ha ancora almeno una cartella figlia.", "R-041-F-1", "NI",
    "TS-42","Verificare che un client autenticato riceva una risposta contenente l'errore \"mailboxHasEmail\" se una richiesta inserita nel server, con l'argomento onDestroyRemoveEmails impostato su false, desidera rimuovere una cartella(Mailbox) che ha al suo interno almeno una email.", "R-042-F-1", "NI",
    "TS-43","Verificare che un client autenticato riceva una risposta contenente l'errore \"invalidEmail\" se una richiesta inserita nel server contiene un'email da inviare non valida.", "R-043-F-1", "NI",
    "TS-44","Verificare che un client autenticato riceva una risposta contenente l'errore \"tooManyRecipients\" se una richiesta inserita nel server contiene un envelope (insieme di destinatari) che ha più destinatari di quanti il server consenta.", "R-044-F-1", "NI",
    "TS-45","Verificare che un client autenticato riceva una risposta contenente l'errore \"noRecipients\" se una richiesta inserita nel server contiene un envelope (insieme di destinatari) che non presenta alcun destinatario.", "R-045-F-1", "NI",
    "TS-46","Verificare che un client autenticato riceva una risposta contenente l'errore \"invalidRecipients\" se una richiesta inserita nel server contiene un envelope (insieme di destinatari) con almeno un indirizzo email destinatario non valido.", "R-046-F-1", "NI",
    "TS-47","Verificare che un client autenticato riceva una risposta contenente l'errore \"forbiddenMailFrom\" se una richiesta è inserita in un server che non consente all'utente di inviare un messaggio con quel indirizzo mittente nell'envelope (From address).", "R-047-F-1", "NI",
    "TS-48","Verificare che un client autenticato riceva una risposta contenente l'errore \"forbiddenFrom\" se una richiesta è inserita in un server che non consente all'utente di inviare un messaggio con il campo di intestazione From del messaggio da inviare.", "R-048-F-1", "NI",
    "TS-49","Verificare che un client autenticato riceva una risposta contenente l'errore \"forbiddenToSend\" se una richiesta è inserita in un server che non consente all'utente di inviare un messaggio in quel momento.", "R-049-F-1", "NI",
    "TS-50","Verificare che un utente che utilizza un client autenticato abbia la possibilità di inviare email.", "R-050-F-1", "NI",
    "TS-51","Verificare che il client abbia inserito all'interno della richiesta l'identificazione delle capacità necessarie all'invio di una email.", "R-051-F-1", "NI",
    "TS-52","Verificare che il client abbia inserio all'interno della richiesta le chiamate di metodo necessarie all'invio di una email.", "R-052-F-1", "NI",
    "TS-53","Verificare che il client abbia inserito all'interno della richieta le proprietà dell'oggetto Email da creare.", "R-053-F-1", "NI",
    "TS-54","Verificare che il client abbia inserito all'interno della richiesta la proprietà dell'ogetto EmailSubmission da creare.", "R-054-F-1", "NI",
    "TS-55","Verificare se il client ha inserito all'interno della richiesta eventuali azioni da compiere in seguito al corretto invio dell'email.", "R-055-F-1", "NI",
    "TS-56","Verificare che il client riceva una risposta contenente l'esito dell'operazione di invio dell'email con i relativi parametri.", "R-056-F-1", "NI",
    "TS-57","Verificare che un utente che interagisce con il server abbia la possibilità di ricevere email e visualizzarne il dettaglio.", "R-057-F-1", "NI",
    "TS-58","Verificare che il client abbia inserito all'interno della richiesta l'identificazione delle capacità necessarie alla ricezione di una email.", "R-058-F-1", "NI",
    "TS-59","Verificare che il client abbia inserito all'interno della richiesta le chiamate di metodo necessarie alla ricezione di una email, con i relativi parametri e un identificatore univoco.", "R-059-F-1", "NI",
    "TS-60","Verificare che il client abbia inserito all'interno della richiesta l'identificativo delle email che è interessato a ricevere.", "R-060-F-1", "NI",
    "TS-61","Verificare se il cliente ha inserito all'interno della richiesta le proprietà specifiche delle email che è interessato a ricevere.", "R-061-F-1", "NI",
    "TS-62","Verificare che il client abbia ricevuto una risposta specifica contenente l'esito dell'operazione di recezione dell'email, con i relativi parametri e la lista delle email richieste.", "R-062-F-1", "NI",
    "TS-63","Verificare che l'utente che utilizza un client di posta elettronica per interagire con il server abbia la possibilità di eliminare email.", "R-063-F-1", "NI",
    "TS-64","Verificare che il client abbia inserito all'interno della richiesta l'identificazione delle capacità necessarie all'eliminazione di una email.", "R-064-F-1", "NI",
    "TS-65","Verificare che il client abbia inserito all'interno della richiesta le chiamate di metodo necessarie all'eliminazione di una email, con i relativi parametri e un identificatore univoco.", "R-065-F-1", "NI",
    "TS-66","Verificare che il client abbia inserito all'interno della richiesta la lista degli identificativi delle email da eliminare.", "R-066-F-1", "NI",
    "TS-67","Verificare che il client abbia ricevuto una risposta contenente l'esito dell'operazione di eliminazione dell'email, con i relativi parametri e gli identificativi degli oggetti eliminati.", "R-067-F-1", "NI",
    "TS-68","Verificare che un utente che utilizza un client di posta elettronica per interagire con il server abbia la possibilità di recevere cartelle e visualizzarne il dettaglio.", "R-068-F-1", "NI",
    "TS-69","Verificare che il client abbia inserito all'interno della richiesta l'identificazione delle capacità necessarie alla ricezione di una cartella.", "R-069-F-1", "NI",
    "TS-70","Verificare che il client abbia inserito all'interno della richiesta le chiamate di metodo necessarie alla ricezione di una cartella, con i relativi parametri e un identificatore univoco associato.", "R-070-F-1", "NI",
    "TS-71","Verificare che il client abbia inserito all'interno della richiesta l'identificativo delle cartelle da ricevere.", "R-071-F-1", "NI",
    "TS-72","Verificare se il client abbia inserito all'interno della richiesta le proprietà specifiche delle cartelle che è interessato a ricevere.", "R-072-F-1", "NI",
    "TS-73","Verificare che il client abbia ricevuto una risposta contenente l'esito dell'operazione di ricezione della cartella con relativi parametri e la lista delle cartelle richieste.", "R-073-F-1", "NI",
    "TS-74","Verificare che l'utente che utilizza un client di posta elettronica per interagire con il server abbia la possibilità di creare cartelle.", "R-074-F-1", "NI",
    "TS-75","Verificare che il client abbia inserito al'interno della richiesta l'identificazione delle capacità necessarie alla creazione di una cartella.", "R-075-F-1", "NI",
    "TS-76","Verificare che il client abbia inserito all'interno della richiesta le chiamate di metodo necessarie alla creazione di una cartella, con i relativi parametri e un identificatore univoco associato.", "R-076-F-1", "NI",
    "TS-77","Verificare che il cliente abbia inserito all'interno della richiesta le proprietà Mailbox da creare.", "R-077-F-1", "NI",
    "TS-78","Verificare che il client abbia ricevuto una risposta contenente l'esito dell'operazione di creazione della cartella, con i relativi parametri e la lista delle cartelle create.", "R-078-F-1", "NI",
    "TS-79","Verificare che l'utente che utilizza un client di posta elettronica per interagire con il server abbia la possibilità di modificare cartelle esistenti.", "R-079-F-1", "NI",
    "TS-80","Verificare che il cliente abbia inserito all'interno della richiesta l'identificazione delle capacità necessarie alla modifica di una cartella.", "R-080-F-1", "NI",
    "TS-81","Verificare che il client abbia inserito all'interno della richiesta le chiamate di metodo necessarie alla modifica di una cartella, con i relativi parametri e un identificatore univoco associato.", "R-081-F-1", "NI",
    "TS-82","Verificare che il client abbia inserito all'interno della richiesta le modifiche da apportare all'oggetto Mailbox che l'utente desidera modificare.", "R-082-F-1", "NI",
    "TS-83","Verificare che il client riceva una risposta contenente l'esito dell'operazione di modifica della cartella con relativi parametri e la lista delle cartelle modificate.", "R-083-F-1", "NI",
    "TS-84","Verificare che l'utente che utilizza un client di posta elettronica per interagire con il server abbia la possibilità di eliminare cartelle esistenti.", "R-084-F-1", "NI",
    "TS-85","Verificare che il client abbia inserito all'interno della richiesta l'identificazione delle capacità necessarie all'eliminazione di una cartella.", "R-085-F-1", "NI",
    "TS-86","Verificare che il client abbia inserito all'interno della richiesta le chiamate di metodo necessarie all'eliminazione di una cartella, con i relativi parametri e un identificatore univoco associato.", "R-086-F-1", "NI",
    "TS-87","Verificare che il client abbia inserito all'interno della richiesta la lista degli identificativi delle cartelle da eliminare.", "R-087-F-1", "NI",
    "TS-88","Verificare che il client abbia specificato all'interno della richiesta il comportamento desiderato da parte del server quando si cerca di eliminare una cartella che contiene ancora delle email.", "R-088-F-1", "NI",
    "TS-89","Verificare che il client abbia ricevuto una risposta contente l'esito dell'operazione di eliminazione della cartella, con i relativi parametri e la lista degli identificativi delle cartelle eliminate.", "R-089-F-1", "NI",
    "TS-90","Verificare che l'utente che utilizza il client di posta elettronica per interagire con il server abbia la possibilità di gestire i contenuti di una cartella.", "R-090-F-1", "NI",
    "TS-91","Verificare che il client abbia inserito all'interno della richiesta l'identificazione delle capacità necessarie alla gestione dei contenuti di una cartella.", "R-091-F-1", "NI",
    "TS-92","Verificare che il client abbia inserito all'interno della richiesta le chiamate di metodo necessarie alla gestione dei contenuti di una cartella, con i relativi parametri e un identificatore univoco associato.", "R-092-F-1", "NI",
    "TS-93","Verificare che il client abbia inserito all'interno della richiesta le modifiche da apportare agli oggetti Email che l'utente desidera aggiungere ad una o più cartelle.", "R-093-F-1", "NI",
    "TS-94","Verificare che il client abbia inserito all'interno della richiesta le modifiche da apportare agli oggetti Email che l'utente desidera rimuovere da una o più cartelle.", "R-094-F-1", "NI",
    "TS-95","Verificare che il client abbia inserito all'interno della richiesta le modifiche da apportare agli oggetti Email che l'utente desidera spostare da una o più cartelle ad una o più cartelle.", "R-095-F-1", "NI",
    "TS-96","Verificare che il client abbia ricevuto una risposta contenente l'esito delle operazioni di gestione dei contenuti di una cartella, con i relativi parametri e la lista delle email modificate.", "R-096-F-2", "NI",
    "TS-97","Verificare che l'utente che utilizza un client di posta elettronica per interagire con il server abbia la possibilità di condividere le sue cartelle con altri utenti.", "R-097-F-2", "NI",
    "TS-98","verificare che il client abbia inserito all'interno della richiesta l'identificazione delle capacità necessarie alla creazione della condivisione di una cartella.", "R-098-F-2", "NI",
    "TS-99","Verificare che il client abbia inserito all'interno della richiesta le chiamate di metodo necessarie alla creazione della condivisione di una cartella, con i relativi parametri e un identificatore univoco associato.", "R-099-F-2", "NI",
    "TS-100","Verificare che il client abbia inserito all'interno della richiesta le proprietà dell'oggetto Principal da creare.", "R-100-F-2", "NI",
    "TS-101","Verificare che il client abbia inserito all'interno della richiesta le modifiche da apportare all'oggetto Mailbox che l'utente desidera condividere.", "R-101-F-2", "NI",
    "TS-102","Verificare che il client abbia ricevuto una risposta contenente l'esito delle operazioni di creazione della condivisione di una cartella, con i relativi parametri e la lista delle cartella modificate.", "R-102-F-2", "NI",
    "TS-103","Verificare che l'utente che utilizza un client di posta elettronica per interagire con il server abbia la possibilità di modificare principali esistenti.", "R-103-F-2", "NI",
    "TS-104","Verificare che il client abbia inserito all'interno della richiesta l'identificazione delle capacità necessarie alla modifica di un principale.", "R-104-F-2", "NI",
    "TS-105","Verificare che il client abbia inserito all'interno della richiesta le chiamate di metodo necessarie alla modifica di un principale, con i relativi parametri e un identificatore univoco associato.", "R-105-F-2", "NI",
    "TS-106","Verificare che il client abbia inserito all'interno della richiesta le modifiche da apportare all'oggetto Principal che l'utente desidera modificare.", "R-106-F-2", "NI",
    "TS-107","Verificare che l'utente abbia ricevuto una risposta contenente l'esito dell'operazione di modifica del principale, con i relativi parametri.", "R-107-F-2", "NI",
    "TS-108","Verificare che l'utente che utilizza un client di posta elettronica per interagire con il server abbia la possibilità di eliminare principali esistenti.", "R-108-F-2", "NI",
    "TS-109","Verificare che il client abbia inserito all'interno della richiesta l'identificazione delle capacità necessarie alla eliminazione di un principale.", "R-109-F-2", "NI",
    "TS-110","Verificare che il client abbia inserito all'interno della richiesta le chiamate di metodo necessarie alla eliminazione di un principale, con i relativi parametri e un identificatore univoco associato.", "R-110-F-2", "NI",
    "TS-111","Verificare che il client abbia inserito all'interno della richiesta la lista degli identificativi dei principali da eliminare.", "R-111-F-2", "NI",
    "TS-112","Verificare che il client abbia ricevuto una risposta contenente l'esito dell'operazione di eliminazione del principale, con i relativi parametri e la lista degli identificativi dei principali eliminati.", "R-112-F-2", "NI",
    "TS-113","Verificare che l'utente che utilizza un client di posta elettronica per interagire con il server abbia la possibilità di modificare la condivisione di una cartella (compresa l'eliminazione di quest'ultima).", "R-113-F-2", "NI",
    "TS-114","Verificare che il client abbia inserito all'interno della richiesta l'identificazione delle capacità necessarie alla modifica della condivisione di una cartella (compresa l'eliminazione di quest'ultima).", "R-114-F-2", "NI",
    "TS-115","Verificare che il client abbia inserito all'interno della richiesta le chiamate di metodo necessarie alla modifica della condivisione di una cartella (compresa l'eliminazione di quest'ultima), con i relativi parametri e un identificatore univoco associato.", "R-115-F-2", "NI",
    "TS-116","Verificare che il client abbia inserito all'interno della richiesta le modifiche da apportare all'oggetto Mailbox di cui l'utente desidera modificare/eliminare la condivisione, specificando i nuovi diritti che hanno su quest'ultimo i membri del principale a cui si sta condividendo.", "R-116-F-2", "NI",
    "TS-117","Verificare che il client abbia ricevuto una risposta contenente l'esito dell'operazione di modifica della condivisione di una cartella (compresa l'eliminazione di quest'ultima), con i relativi parametri e la lista degli identificativi delle cartelle modificate.", "R-117-F-3", "NI",
    "TS-118","Verificare che un client di posta elettronica utilizzato da un utente per interagire con il server abbia la possibilità di mantenersi sincronizzato con gli ultimi aggiornamenti per quanto riguarda le email.", "R-118-F-3", "NI",
    "TS-119","Verificare che il client abbia inserito all'interno della richiesta l'identificazione delle capacità necessarie alla sincronizzazione delle email.", "R-119-F-3", "NI",
    "TS-120","Verificare che il client abbia inserito all'interno della richiesta le chiamate di metodo necessarie alla sincronizzazione delle email, con relativi parametri e un identificatore univoco associato.", "R-120-F-3", "NI",
    "TS-121","Verificare che il client abbia inserito all'interno della richiesta il suo stato corrente per quanto riguarda le email, con lo scopo sincronizzarsi.", "R-121-F-3", "NI",
    "TS-122","Verificare che il client abbia inserito all'interno della richiesta il numero massimo di identificatori di email che desidera ricevere come risposta, con lo scopo di sincronizzarsi.", "R-122-F-3", "NI",
    "TS-123","Verificare che il client abbia ricevuto una risposta contenente le informazioni di cui ha bisogno per sincronizzarsi per quanto riguarda le email.", "R-123-F-3", "NI",
    "TS-124","Verificare che un client di posta elettronica utilizzato da un utente per interagire con il server abbia la possibilità di mantenersi sincronizzato con gli ultimi aggiornamenti per quanto riguarda le cartelle.", "R-124-F-3", "NI",
    "TS-125","Verificare che il client abbia inserito all'interno della richiesta l'identificazione delle capacità necessarie alla sincronizzazione delle cartelle.", "R-125-F-3", "NI",
    "TS-126","Verificare che il client abbia inserito all'interno della richiesta le chiamate di metodo necessarie alla sincronizzazione delle cartelle, con relativi parametri e un identificatore univoco associato.", "R-126-F-3", "NI",
    "TS-127","Verificare che il client abbia inserito all'interno della richiesta il suo stato corrente per quanto riguarda le cartelle, con lo scopo sincronizzarsi.", "R-127-F-3", "NI",
    "TS-128","Verificare che il client abbia inserito all'interno della richiesta il numero massimo di identificatori di cartelle che desidera ricevere come risposta, con lo scopo di sincronizzarsi", "R-128-F-3", "NI",
    "TS-129","Verificare che il client abbia ricevuto una risposta contenente le informazioni di cui ha bisogno per sincronizzarsi per quanto riguarda le cartelle.", "R-129-F-3", "NI"
  )
), caption: [Stato dei test di sistema.])

#pagebreak()

= Cruscotto di valutazione della qualità

== MPC06 - Estimated at Completion (EAC)
#figure(image("//imgs/PdQ_graphs/EAC.png", width: 100%), caption: [Proiezione della stima del costo totale nei vari periodi di progetto.])

*RTB*: Osservando il grafico ne emerge che in seguito al primo periodo del progetto le stime dei costi totali si discostavano leggermente dal valore ottimale (ovvero la stima iniziale, detta anche BAC) di qualche decina di euro in eccesso. Questa discrepanza è attribuibile alla previsione di un maggior numero di ore nel ruolo di Analista rispetto a quelle successivamente stimate nei periodi II e III, di conseguenza, si è verificata una diminuzione dei costi in questi due periodi. Quest'ultima è stata seguita poi da un leggero aumento poichè, come riportato nel `Piano di Progetto v1.0.0`, tra il terzo ed il quarto periodo il gruppo si è reso conto di necessitare di quelle ore che ritenevamo superflue per approfondire ancora di più il documento `Analisi dei Requisiti`. Infine nel quinto ed ultimo periodo la stima è rimasta pressochè costante dato che tutto ha proceduto secondo i piani.

#pagebreak()

== MPC01 - Earned Value (EV) e MPC02 - Planned Value (PV)
#figure(image("//imgs/PdQ_graphs/EV_PV.png", width: 100%), caption: [Proiezione dell'EV e del PV nei vari periodi di progetto.])

*RTB*: Dal grafico, è evidente che le curve dell'Earned Value (valore guadagnato) e del Planned Value (valore pianificato) si sovrappongono, indicando che il lavoro effettivamente svolto è conforme alla pianificazione. Questa sovrapposizione suggerisce un avanzamento positivo rispetto alla pianificazione del progetto.

#pagebreak()

== MPC03 - Actual Cost (AC) e MPC07 - Estimate to Complete (ETC)
#figure(image("//imgs/PdQ_graphs/AC_ETC.png", width: 100%), caption: [Proiezione dell'AC e dell'ETC nei vari periodi di progetto.])

*RTB*: Il grafico visualizza l'Estimate to Complete (ETC), cioè la stima del costo rimanente previsto per portare a termine il progetto durante i vari periodi, e l'Actual Cost (AC), ossia una stima del costo effettivamente sostenuto per il lavoro eseguito fino al periodo attuale. Si osserva come l'ETC tenda giustamente a diminuire nel corso del periodo, mentre l'AC mostra una crescita proporzionale alla velocità con cui l'ETC decresce.

#pagebreak()

== MPC04 - Cost Variance (CV) e MPC05 - Schedule Variance (SV)
#figure(image("//imgs/PdQ_graphs/CV_SV.png", width: 100%), caption: [Proiezione della CV e della SV nei vari periodi di progetto.])

*RTB*: Il grafico evidenzia la Cost Variance (CV), rappresentante la differenza tra il valore guadagnato (EV) e i costi sostenuti (AC) in percentuale, e la Schedule Variance (SV), indicando la differenza tra il valore guadagnato (EV) e il valore pianificato (PV) in percentuale. Mentre la Cost Variance nei vari periodi è costante e pari a 0, dato che indica una corrispondenza tra i costi sostenuti e l'avanzamento reale nel progetto, si nota un andamento della Schedule Variance abbastanza altalenante. La prima diminuzione è attribuibile a incomprensioni interne che hanno impattato negativamente sul lavoro e, di conseguenza, sul valore guadagnato rispetto a quanto inizialmente specificato. Questa per fortuna, però, è stata seguita da un grande aumento dovuto ad uno sforzo del gruppo di tentare di svolgere più lavoro possibile, anche se non pianificato inizialmente. Infine si ha un calo dovuto ad una previsione di ore necessarie alla risoluzione del PoC che si è rivelata essere eccessiva.

#pagebreak()

== MPC08 - Requirements stability index (RSI)
#figure(image("//imgs/PdQ_graphs/RSI.png", width: 100%), caption: [Proiezione del RSI nei vari periodi di progetto.])

*RTB*: Il grafico illustra la dinamica della metrica RSI, volta a valutare la stabilità dei requisiti del progetto nel corso del tempo. Emerge chiaramente una rapida crescita tra il primo e il secondo periodo, coincidente con l'avvio dell'analisi dei requisiti da parte del gruppo. Inoltre, si nota un ulteriore aumento tra il secondo e il terzo periodo, indicativo di modifiche e/o aggiornamenti nell'analisi dei requisiti che sono andati a diminuire. Il parametro poi è diminuito nuovamente per via di modifiche importanti, necessarie a raggiungere un livello di dettaglio dei requisiti ancora maggiore. Infine si nota che nel quinto ed ultimo periodo i requisiti non sono stati toccati e quindi la metrica RSI risulta pari al 100%.

#pagebreak()


== MPC11 - Indice Gulpease
#figure(image("//imgs/PdQ_graphs/Gulpease.png", width: 100%), caption: [Proiezione dell'indice Gulpease per ogni documento (RTB) nei vari periodi di progetto.])

*RTB*: Dall'analisi del grafico emerge un generale trend di aumento e/o stabilizzazione dell'indice per ciascun documento nel corso dei differenti periodi. L'eccezione a questa tendenza è rappresentata dal `Piano di Progetto`, il quale si discosta da tale andamento a causa di una variazione sostanziale del suo contenuto nel corso del tempo. Inoltre, si osserva che l'`Analisi dei Requisiti` è l'unico documento che inizia al di sotto del limite accettabile inferiore, fenomeno causato dalla specificità degli argomenti trattati e dal linguaggio utilizzato in quest'ambito. Tuttavia tutti i documenti risultano comprensibili per chi ha la licenza media.

#pagebreak()

== MPC12 - Correttezza Ortografica
#figure(image("//imgs/PdQ_graphs/CorrOrt.png", width: 100%), caption: [Proiezione della correttezza ortografica nei vari periodi di progetto.])

*RTB*: Osservando il grafico emerge una particolare attenzione da parte dei membri del gruppo nell'evitare di commettere errori di ortografia all'interno dei vari documenti: qualche errore è sfuggito (cosa inevitabile vista la nostra natura umana) ma tutto sommato la maggior parte dei documenti ha presentato 0 errori per la maggior parte della loro esistenza, raggiungendo l'ottimo nell'ultimo periodo.

#pagebreak()

== MPC15 - Quality Metrics Satisfied
#figure(image("//imgs/PdQ_graphs/QualityMetSat.png", width: 100%), caption: [Proiezione della percentuale di metriche di qualità soddisfatte nei vari periodi di progetto.])

*RTB*: Dal grafico emerge che nei primi periodi una parte delle metriche di qualità definite dal gruppo non ha raggiunto valori accettabili. Questo è stato dovuto specialmente all'inesperienza iniziale dei membri, i quali però hanno poi appreso dai loro errori, permettendoci di raggiungere valori accettabili, fino a giungere al valore ottimo (100%) al termine del quinto periodo. Questo dimostra quindi un miglioramento nel nostro way of working e nei risultati qualitativi ottenuti.

#pagebreak()

== MPC16 - Non-Calculated Risk
#figure(image("//imgs/PdQ_graphs/NonCalcRisk.png", width: 100%), caption: [Proiezione rischi non identificati nei vari periodi di progetto.])

*RTB*: Il grafico evidenzia come per la maggior parte del tempo non si siano verificati rischi non previsti da parte del gruppo. L'unica eccezione è il quarto periodo, dove sbadatamente non abbiamo tenuto conto della possibilità di non poter riuscire ad organizzare un colloquio con il #p.cardin per ottenere un feedback. È importante chiarire che la metrica non assicura l'assenza completa di rischi non previsti, ma si limita a indicare se essi siano o meno emersi. Comunque il grafico sottolinea una ottima previsione dei rischi da parte del gruppo.

#pagebreak()

== MPC17 - Efficienza Temporale
#figure(image("//imgs/PdQ_graphs/EffTemp.png", width: 100%), caption: [Proiezione dell'efficienza temporale nei vari periodi di progetto.])

*RTB*: Il grafico illustra l'andamento della metrica relativa all'efficienza temporale attraverso i vari periodi. È evidente che la metrica supera il limite accettabile superiore sia nel primo che nel secondo periodo, prima di stabilizzarsi al di sotto solo nel terzo periodo ed i seguenti. Questa tendenza è attribuibile alla necessità del gruppo, nei primi periodi, di prendere familiarità con le nuove tecnologie, ambienti e linguaggi richiesti dal capitolato, oltre che all'adattamento alle pratiche necessarie alla gestione del progetto. Si evidenzia comunque un miglioramento nel tempo, che dimostra come, per ottenere i risultati desiderati, ad oggi ci sia richiesto meno tempo di orologio rispetto che all'inizio del progetto. Questo fattore è attribuibile ad un aumento dell'esperienza dei membri del gruppo.

#pagebreak()

= Iniziative di automiglioramento per la qualità

== Introduzione
Un team di progetto è in grado di completare i compiti in modo efficiente, mantenendo un grado elevato di qualità, riducendo i costi e aumentando i profitti solo se mette la produttività in cima alla scala dei valori.\
Di seguito infatti ci dedichiamo al tema del miglioramento della produttività dei processi coinvolti nella realizzazione del prodotto richiesto dal #glossary("Capitolato") C8. Essendo questo il primo progetto realistico affrontato dai membri del gruppo, è probabile che si verifichino problemi di natura organizzativa interna, di adempimento efficace dei ruoli assegnati e di giusto utilizzo degli strumenti scelti.\
In questa sezione quindi andremo ad elencare i problemi più importanti che abbiamo riscontrato e le relative contromisure prese per risolvere o contenere i rallentamenti causati.

== Problemi leagati all'organizzazione generale
#figure(improvement("#ffeded", (
  [Intero Progetto],
  [È stato particolarmente complicato effettuare delle riunioni per fare il punto della situazione sul progetto dove fossero presenti tutti i membri del gruppo sia in presenza (poichè non si trovano aule libere che permettano ai membri di riunirsi e non tutti i componenti del gruppo seguono con frequenza le lezioni) che online (ognuno ha impegni diversi e dunque alle riunioni manca sempre qualche componente).],
  [
    Si è deciso dunque che per comodità tutte le riunioni devono essere svolte online (sulla piattaforma #glossary("Discord")) cosicchè ogni componente può collegarsi in qualunque situazione (capitava spesso di membri in viaggio o sui mezzi pubblici).\
    Qualora uno dei componenti del gruppo non potesse comunque essere presente il Responsabile provederà a fornigli un riassunto vocale della discussione tramite il contatto #glossary("Telegram").
  ],
)), caption: [Contromisure adottate per limitare problemi di organizzazione generale.])

== Valutazione sui ruoli
#figure(improvementrole("#fffdde", (

  [Intero Progetto],
  [Verificatore],
  [Dato che questo è il primo progetto in termini di complessità della documentazione che ogni membro del nostro gruppo affronta abbiamo notato (ed è comprensibile) che spesso i documenti pronti ad essere rilasciati nel #glossary("repository") pubblico avevano degli errori di vario genere (esempio: di formattazione del documento, errori semantici, etc.)],
  [Avvertire i verificatori di questo fenomeno e non assegnare loro altri compiti durante lo svolgimento del processo di verifica in quanto il loro lavoro è molto oneroso (non si tratta di approvare e basta le nuove modifiche al repository ma di verificare, spesso in argomenti a loro sconosciuti, se ciò che è stato prodotto sia valido o meno).],
  
  [Fase iniziale],
  [Responsabile],
  [Nelle fasi iniziali del progetto è capitato che le attività venissero assegnate senza valutare in modo corretto il loro costo in termini di tempo ai vari componenti del gruppo. Questo ha portato chiaramente ad un sovraccarico per alcuni ruoli ed eccessivo tempo libero per altri.],
  [Il Responsabile di turno deve ricontrollare l'assegnazione dei compiti per assicurarsi che siano equamente distribuiti tra i membri. In questo modo, si evitano rallentamenti dovuti a ridistribuzioni degli oneri di progetto.],

  [#glossary("Analisi dei requisiti")],
  [#glossary("Analista")],
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
    Spesso durante diverse attività di progetto colui che doveva svolgere il proprio compito si sentiva afflitto da una miriade di dubbi con granularità fine su come procedere con il proprio lavoro (e.g.: l'Analista nella stesura dei casi d'uso oppure il Programmatore durante la realizzazione del PoC).
  ],
  [Dopo aver parlato di questo con il proponente siamo giunti alla conclusione di inserire uno dei referenti del progetto nel nostro canale privato Discord cosicchè da poter chiarire in maniera informale e immediata qualsiasi dubbio con granularità fine, lasciando i problemi più importanti ai meeting ufficiali con verbale esterno annesso.],

  

  
)), caption: [Contromisure adottate per evitare problemi specifici dei ruoli interni.])

#pagebreak()

== Valutazione sugli strumenti
#figure(improvementtool("#e8fcdc", (
    [Intero progetto],
    [#glossary("Typst")],
    [
      Trovare un metodo per cui tutti i membri del gruppo potessero redigere documenti indipendentemente dal dispositivo in uso, dal sistema operativo e anche dalle proprie conoscenze di base in materia (#glossary("LaTeX") non era una tecnologia conosciuta da tutti i membri del gruppo). 
    ],
    [
      Siamo giunti alla conclusione di usare Typst, un linguaggio che da le stesse funzionalità di LaTeX, ma con una facilità maggiore e una documentazione più ricca per chi non lo conoscesse. Inoltre per redigere i documenti abbiamo a disposizione una repository web messa a disposizione dallo stesso typst che ci permette di scrivere i documenti in maniera collaborativa dove ognuno può vedere in diretta cosa sta svolgendo un altro membro del gruppo. 
    ],
  
    [Fase iniziale],
    [#glossary("Git"), #glossary("Github"), Typst e altri],
    [
      Nelle fasi iniziali del progetto è capitato spesso che venisse introdotta una nuova tecnologia da dei membri del gruppo (e.g.: scelta di git e github) che la sapevano utilizzare con destrezza (grazie al corso Metodi e Tecnologie per lo sviluppo software) e che avrebbe dovuto essere utilizzata in futuro da dei componenti che non avevano nessuna conoscenza della materia in questione.
    ],
    [Piuttosto che creare disallineamenti il gruppo ha preso una pausa, dove il Responsabile garantiva che tutti i membri del gruppo avessero una conoscenza delle tecnologie tale da lavorare in maniera ottimale. Questo spesso veniva raggiunto individuando all'interno del gruppo i soggetti più preparati su un argomento e chiedendo loro di realizzare dei video tutorial su una determinata tematica.],

)), caption: [Contromisure adottate per limitare problemi relativi agli strumenti utilizzati])

#pagebreak()

== Considerazioni finali sul miglioramento

In questa ultima sezione, presentiamo le valutazioni derivanti da un'analisi retrospettiva approfondita dell'intero percorso svolto fin dall'avvio del progetto fino ad ora.\
Specificatamente, si è condotta una riflessione critica sui progressi conseguiti nei vari processi implementati con lo scopo di acquisire una compresione dell'evoluzione del nostro "way of working" e degli impatti che ne sono derivati per il gruppo.\
Questa sezione mira a fornire una panoramica completa delle transformazioni operative che hanno contribuito a potenziare l'efficacia e l'efficienza complessiva del nostro team, oltre che ad evidenziare gli aspetti migliorati e le opportunità di ottimizzazione.

=== Analisi delle pratiche seguite
Il modo migliore per garantire al team efficacia a lungo termine nei miglioramenti è applicare il ciclo PDCA, basandolo su specifici obiettivi di avanzamento che hanno la caratteristica di essere quantificabili e relativi ad aspetti dei processi di maggior rilevanza ai fini del progetto.\
L'approccio descritto permette di attuare miglioramenti volti a prevenire situazioni, tendenze o problemi futuri in modo da pianificare anticipatamente le azioni opportune prima dell'insorgere di problematiche che necessiterebbero correzioni reattive, realizzando quindi quello che deifniamo come miglioramento continuo.
Durante i primi mesi del progetto però, questo approccio non è stato seguito a causa dell'inesperienza del gruppo che non aveva pienamente compreso la sua utilità. Spesso accadeva che il gruppo attuasse azioni correttive, adottate in risposta agli errori riscontrati durante l'avanzamneto del progetto. Queste hanno il vantaggio di portare costi inferiori in termini di risorse rispetto alle azioni proattive, ma sono spesso tardive e meno effaci in ottica di miglioramento continuo.\
Quindi, per poter applicare il ciclo PDCA, gli obiettivi di miglioramento devono (per poter capire se e quando il loro scopo viene raggiunto) essere selettivi. Inoltre i miglioramenti vanno scelti valutandone opportunamente il rapporto costi/benefici per fare in modo che il piano di miglioramento continuo sia sostenibile in base alle risorse disponibili.




=== Valutazioni generali sui miglioramenti conseguiti
Anche se il gruppo non si era posto all'inizio del progetto degli specifici obiettivi di miglioramento è stato possibile apprezzare alcuni miglioramenti nei processi che costituiscono il way of working.\
Ovviamente all'inizio del progetto le valutazioni sul miglioramento erano assai scarse in quanto il gruppo non aveva esperienza con i progetti e non sapeva quindi definire se si stava operando in modo corretto o meno. Il numero di autocorrezioni è cresciuto nel tempo a causa di una maggiore familiarità con la gestione dei progetti fino ad un azzeramento delle valutazioni sui miglioramenti quando (in seguito ad un progressivo raffinamento) il way of working del gruppo è stato ben definito e allineato con le buone pratiche che ci sono state insegnate.

=== Valutazioni specifiche sui miglioramenti nei processi
In questa sezione, in seguito ad un'analisi retrospettiva sul lavoro svolto, quindi una volta che il team ha sperimentato personalmente ciò che era efficace ed efficiente e cosa non lo era affatto, riportiamo alcune delle valutazioni critiche che hanno portato ad un miglioramento sostanziale nei processi istanziati dal gruppo.\
Per ogni attività mezionata verranno quindi esposti gli specifici obiettivi di miglioramento raggiunti nel corso del progetto.

===== Gestione delle comunicazioni e degli incontri
Durante la prima fase del progetto il gruppo spendeva tantissimo tempo nell'organizzare dei meeting a regola d'arte: dove fossero presenti tutti i membri del gruppo trovando degli orari e dei giorni che andassero bene a tutti. Inoltre in questi incontri (spesso molto lunghi) parlavano sempre le solite persone (magari anche per una dote caratteriale) e spesso alcuni membri del gruppo venivano lasciati in disparte con ancora dei dubbi su come svolgere le loro parti del progetto.\
In questo modo veniva perso tantissimo tempo e non era un modo di lavorare efficiente.

*Obiettivi di miglioramento raggiunti*\
Siamo giunti presto alla conclusione che è impossibile trovare un orario ed un giorno dove fossero tutti presenti.\
Abbiamo predisposto dei sondaggi cosicchè da trovare i giorni dove erano presenti il maggior numero di persone. Successivamente il Responsabile avrebbe fornito agli assenti un messaggio vocale su Telegram contenente i principali temi discussi.\
Inoltre, la durata degli incontri è stata ridotta a non più di un'ora e ogni membro del gruppo è tenuto a dire pubblicamente cosa ha fatto fino a quel momento, di cosa si sta occupando e cosa prevede di fare come prossima attività, così da garantire una piena partecipazione all'incontro di tutti i membri.


===== Pianificazione
Fin dall'inizio del progetto attuare rotazione dei ruoli è stata uno dei compiti più difficile per il gruppo. Il fatto di dover mettere mano alla documentazione che è stata strutturata e sviluppata da persone diverse ha subito scatenato confusione e ha chiaramente portato ad ovvi rallentamenti.

*Obiettivi di miglioramento raggiunti*\
Dedicando uno spazio dei meeting di gruppo alle discussioni generali si è permesso a tutti i membri del gruppo di osservare la struttura generale del progetto cosicchè da farsi trovare pronto riguardo ogni argomento.\
Se un membro del gruppo avesse delle domande specifiche riguardo ad una sezione non le comunica a tutto il gruppo durante il meeting (per evitare una perdita inutile di tempo) ma le comunica privatamente al soggetto direttamente interessato.