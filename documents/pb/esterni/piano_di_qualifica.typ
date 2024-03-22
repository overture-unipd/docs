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
    "2.0.0", "2024-03-22", p.bulychov, p.bettin, "Approvazione per PB",
    "1.8.0", "2024-03-22", p.fabbian, p.furno, "Aggiornamento della sezione 'Cruscotto di valutazione della qualità' conseguente al periodo IX",
    "1.7.1", "2024-03-20", p.vedovato, p.bonavigo, "Aggiornamento dello stato dei test nella sezione 'Metodologie di testing'",
    "1.7.0", "2024-03-12", p.bonavigo, p.vedovato, "Inseriti i test di regressione nella sezione 'Metodologie di testing'",
    "1.6.0", "2024-03-08", p.bonavigo, p.furno, "Aggiornamento della sezione 'Cruscotto di valutazione della qualità' conseguente al periodo VIII",
    "1.5.0", "2024-03-06", p.fabbian, p.bulychov, "Inseriti i test di unità nella sezione 'Metodologie di testing'",
    "1.4.2", "2024-03-05", p.furno, p.amadori, "Inseriti i test di integrazione nella sezione 'Metodologie di testing'",
    "1.4.1", "2024-03-03", p.bettin, p.bonavigo, "Inseriti i test di accettazione nella sezione 'Metodologie di testing'",
    "1.4.0", "2024-02-22", p.furno, p.bonavigo, "Aggiornamento della sezione 'Cruscotto di valutazione della qualità' conseguente al periodo VII",
    "1.3.2", "2024-02-22", p.furno, p.amadori, "Aggiunta delle metriche di qualità del prodotto alla sezione 'Cruscotto di valutazione della qualità'",
    "1.3.1", "2024-02-21", p.vedovato, p.bulychov, "Miglioramenti alla sezione 'Qualità di prodotto'",
    "1.3.0", "2024-02-09", p.vedovato, p.fabbian, "Rimossa la sezione 'Iniziative di auto-miglioramento'",
    "1.2.2", "2024-02-09", p.vedovato, p.fabbian, "Rimossi i test di unità ed integrazione prematuri",
    "1.2.1", "2024-02-09", p.vedovato, p.fabbian, "Sistemate le anomalie stilistiche rilevate dalla revisione RTB",
    "1.2.0", "2024-02-09", p.vedovato, p.fabbian, "Aggiornamento della sezione 'Cruscotto di valutazione della qualità' conseguente al periodo VI", 
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
Il prodotto mira principalmente a consentire all'azienda #glossary("proponente") di valutare se sia conveniente dedicare tempo e risorse all'integrazione del #glossary("protocollo") #glossary("JMAP") nel loro prodotto principale chiamato #glossary("Carbonio"), una soluzione di collaborazione online centrata sulla gestione delle email. Infatti #glossary("JMAP") é un protocollo di comunicazione progettato per semplificare l'interazione tra client e server nelle applicazioni di posta elettronica.\
Al momento, Carbonio utilizza protocolli standard come IMAP, POP e #glossary("Exchange Active Sync"), perció l'implementazione di JMAP potrebbe potenzialmente garantire maggiori #glossary("funzionalità") ed efficienza a un costo più contenuto.

== Glossario
Per evitare ambiguitá o incomprensioni riguardanti la terminologia usata nel documento, é stato deciso di adottare un glossario in cui vengono riportate le varie definizioni. In questa maniera in esso verranno riportati tutti i termini specifici del dominio d'uso con relativi significati.
\
La presenza di un termine all'interno del `Glossario` viene indicata applicando #glossary("questo stile").

== Riferimenti
=== Riferimenti normativi
- `Norme di Progetto v2.0.0`: \ https://overture-unipd.github.io/docs/pb/interni/norme_di_progetto_v2.0.0.pdf
- *Capitolato d'appalto C8*: JMAP, il nuovo protocollo standard per la comunicazione email (data di ultimo accesso: 2024-03-22)\
  https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C8.pdf

=== Riferimenti informativi
- *ISO/IEC 9126* (data di ultimo accesso: 2024-03-22)\
  https://en.wikipedia.org/wiki/ISO/IEC_9126
- *ISO/IEC 12207* (data di ultimo accesso: 2024-03-22)\
  https://www.math.unipd.it/~tullio/IS-1/2009/Approfondimenti/ISO_12207-1995.pdf
- `Glossario v2.0.0`: \ https://overture-unipd.github.io/docs/pb/interni/glossario_v2.0.0.pdf

#pagebreak()
  
= Obiettivi di qualità
Ogni #glossary("processo") viene valutato mediante l'applicazione di metriche specifiche, le cui definizioni sono dettagliate dalle sezioni Metriche di qualitá del processo e Metriche di qualitá del prodotto del documento `Norme di Progetto v2.0.0`. Questa sezione delinea i criteri che le metriche devono rispettare per essere valutate come accettabili o eccellenti.

== Qualità di processo 
La #glossary("qualità") di processo è esigenza primaria nello sviluppo software, difatti per poter avere un prodotto finale di qualità è necessario trovare alla base un'applicazione rigorosa di #glossary("best practice") ben definite che ci permettano di svolgere nel miglior modo possibile l'insieme delle attività da effettuare. \

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
  [≥ 85%],
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
  [≥ 85%],
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
  [Tempo di apprendimento],
  [≤ 15 minuti],
  [≤ 5 minuti]
)), caption: [Valori accettabili e ottimi per ogni metrica riguardante l'usabilitá del prodotto.])

#pagebreak()

=== Efficienza
#figure(metrics((
  [MPD09],
  [Utilizzo risorse],
  [≥ 75%],
  [100%]
)), caption: [Valori accettabili e ottimi per ogni metrica riguardante l'efficienza del prodotto.])

=== Manutenibilitá
#figure(metrics((
  [MPD10],
  [Complessità ciclomatica],
  [11-20],
  [1-10],
  [MPD11],
  [Code smell],
  [0],
  [0]
)), caption: [Valori accettabili e ottimi per ogni metrica riguardante la manutenibilitá del prodotto.])

#pagebreak()

= Metodologie di testing
In questa sezione vengono elencati i #glossary("test") eseguiti sul prodotto, necessari per dimostrare che i vincoli individuati nella sezione Requisiti del documento `Analisi dei Requisiti v2.0.0` siano effettivamente soddisfatti.\ Come anticipato all'interno della sezione Verifica del documento `Norme di Progetto v2.0.0`, i test si dividono in:
- *Test di unità*: definiti sulle unità software autonome più piccole, sono implementati principalmente durante la progettazione;
- *Test di integrazione*: successivi ai test di unità, servono a verificare la corretta integrazione tra le diverse unità software;
- *Test di sistema*: garantiscono il corretto funzionamento del sistema. In particolare, verificano che tutti i requisiti individuati siano rispettati;
- *Test di regressione*: verificano che le correzioni o le estensioni apportate a specifiche unità non causino danni al resto del sistema. Essi consistono nella ripetizione mirata di test di unità, integrazione e sistema;
- *Test di accettazione*: alla presenza del committente, servono a verificare che il prodotto finale soddisfi tutti i requisiti.

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
- *NV*: non verificato. Il test ha esito negativo;
- *NI*: non implementato.


== Test di unità
I test di unità sono concepiti per verificare il corretto funzionamento delle singole componenti di codice. Per 'unità' si intendono funzioni, classi o, in modo più generico, ogni singola entità di codice Responsabile di svolgere specifiche attività interne nel software. Per implementare efficacemente questa tipologia di test, l'azienda proponente ha consigliato l'utilizzo dei framework di unit testing *JUnit* e *Mockito*.
#figure(test(
  (
    "TU-1","Verificare che il metodo AttachmentController.pull restituisca il blob corretto dato uno specifico id in input.", "V",
    "TU-2","Verificare che il metodo AttachmentController.push restituisca un JSON contenente accountId, blobId, type e size dato in input un blob.", "V",
    "TU-3","Verificare che il metodo AttachmentLogic.upload restituisca un bolobId valido dato in input un blob.", "V",
    "TU-4","Verificare che il metodo AttachmentLogic.download restituisca il corretto blob dato in input un blobId valido.", "V",
    "TU-5","Verificare che il metodo AuthenticationController.authenticate esegua correttamente l'auteticazione data in input una stringa valida.", "V",
    "TU-6","Verificare che il metodo AuthenticationController.authenticateTestNoToken esegua correttamente l'auteticazione data in input una stringa non valida.", "V",
    "TU-7","Verificare che il metodo AuthenticationController.authenticateTestInvalidToken esegua correttamente l'auteticazione data in input una stringa non valida.", "V",
    "TU-8","Verificare che il metodo AuthenticationLogic.authenticate restituisca true date in inpute delle credenziali corrette.", "V",
    "TU-9","Verificare che il metodo AuthenticationLogic.authenticateTestWrongUsername restituisca false dato in input uno username invalido.", "V",
    "TU-10","Verificare che il metodo AuthenticationLogic.authenticateTestWrongPassword restituisca false dato in input una password invalida.", "V",
    "TU-11","Verificare che il metodo EchoLogic.echo restituisca una EchoMethodResponse contenente la libreria inserita nella EchoMethodCall in input.", "V",
    "TU-12","Verificare che il metodo IdentityLogic.get restituisca una GetIdentityMethodResponse contenente l'identità dell'account che ha eseguito la richiesta.", "V",
    "TU-13","Verificare che il metodo SessionController.get restituisca lo username corretto datogli in input il token dell'autenticazione.", "V",
    "TU-14","Verificare che il metodo SessionLogic.get restituisca lo username corretto, all'interno della SessionResource ritornata, datogli in input lo username dell'account utilizzato.", "V",
    "TU-15","Verificare che il metodo ThreadLogic.getAccumulatedUpdateSince restituisca un oggetto Update non nullo dati in input stato ed account corretti.", "V",
    "TU-16","Verificare che il metodo ThreadLogic.getAccumulatedUpdateSinceFailed restituisca un oggetto Update nullo dati in input uno stato sbagliato.", "V",
    "TU-17","Verificare che il metodo ThreadLogic.changesTest restituisca una MethodResponse[] contenete un oggetto instanceof di ChangesThreadMethodResponse non nullo, dati in input una ChangesThreadMethodCall ed una ListMultimap<String, Response.Invocation> correttamente impostati.", "V",
    "TU-18","Verificare che il metodo ThreadLogic.changesTest2 restituisca una MethodResponse[] contenete un oggetto instanceof di ChangesThreadMethodResponse non nullo, dati in input una ChangesThreadMethodCall, con sinceState vecchio, ed una ListMultimap<String, Response.Invocation>.", "V",
    "TU-19","Verificare che il metodo ThreadLogic.changesTestFailed non restituisca una MethodResponse[] contenete un oggetto instanceof di ChangesThreadMethodResponse, dati in input una ChangesThreadMethodCall, con sinceState sbagliato, ed una ListMultimap<String, Response.Invocation>.", "V",
    "TU-20","Verificare che il metodo ThreadLogic.getTest restituisca una MethodResponse[] contenete un oggetto instanceof di GetThreadMethodResponse, dati in input una GetThreadMethodCall ed una ListMultimap<String, Response.Invocation> correttamente impostati.", "V",
    "TU-21","Verificare che il metodo EmailLogic.getAccumulatedUpdateSince restituisca un oggetto Update non nullo dati in input stato ed account corretti.", "V",
    "TU-22","Verificare che il metodo EmailLogic.getAccumulatedUpdateSinceFailed restituisca un oggetto Update nullo dati in input uno stato sbagliato.", "V",
    "TU-23","Verificare che il metodo EmailLogic.getTest restituisca un oggetto GetEmailMethodResponse contenente lo stesso account id presente nella GetEmailMethodCall data in input.", "V",
    "TU-24","Verificare che il metodo EmailLogic.getTest2 restituisca un oggetto GetEmailMethodResponse contenente lo stesso account id presente nella GetEmailMethodCall data in input, in questo caso testata con Email.Properties.THREAD_ID in properties.", "V",
    "TU-25","Verificare che il metodo EmailLogic.getTest3 restituisca un oggetto GetEmailMethodResponse contenente lo stesso account id presente nella GetEmailMethodCall data in input, in questo caso testata con Email.Properties.MUTABLE in properties.", "V",
    "TU-25","Verificare che il metodo EmailLogic.queryTest restituisca un oggetto QueryEmailMethodResponse data una QueryEmailMethodCall in input.", "V",
    "TU-26","Verificare che il metodo EmailLogic.queryTestFailed non restituisca un oggetto QueryEmailMethodResponse data una QueryEmailMethodCall in input con 'anchor' come return di getAnchor.", "V",
    "TU-27","Verificare che il metodo EmailLogic.queryTestFailed2 non restituisca un oggetto QueryEmailMethodResponse data una QueryEmailMethodCall con i return di emailFilterCondition diversi da null.", "V",
    "TU-28","Verificare il comportamento del metodo set della classe EmailLogic. Viene testata la creazione di un'email con varie proprietà, aggiornando le proprietà esistenti, l'aggiunta di keywords, il cambio di mailboxIds, e varie combinazioni di queste operazioni.", "V",
    "TU-29","Verificare il comportamento del metodo changes della classe EmailLogic. Viene testata la corretta gestione dei cambiamenti nelle email dallo stato precedente a quello attuale.", "V",
    "TU-30","Simile a changesTest, ma con lo stato precedente uguale a quello attuale, quindi non dovrebbero esserci cambiamenti.", "V",
    "TU-31","Questo test verifica il comportamento del metodo changes quando lo stato precedente fornito non corrisponde a uno stato valido. In questo caso, ci si aspetta che il test fallisca.", "V",
    "TU-32","Questo test verifica il comportamento della funzione injectId della classe EmailLogic. Viene testata la creazione di un EmailBodyPart con un allegato, verificando che l'id del blob sia iniettato correttamente e che le altre proprietà dell'allegato siano mantenute.", "V",
    "TU-33","Verificare che il metodo MailboxLogic.getAccumulatedUpdateSince restituisca un oggetto Update non nullo dati in input stato ed account corretti.", "V",
    "TU-34","Verificare che il metodo MailboxLogic.changesTest restituisca un oggetto ChangesMailboxMethodResponse data una ChangesMailboxMethodCall in input.", "V",
    "TU-35","Verificare che il metodo MailboxLogic.changesTest2 restituisca un oggetto ChangesMailboxMethodResponse data una ChangesMailboxMethodCall in input.", "V",
    "TU-36","Verificare che il metodo MailboxLogic.getTest restituisca un oggetto GetMailboxMethodResponse data una GetMailboxMethodCall in input.", "V",
    "TU-37","Verificare che il metodo MailboxLogic.getTest2 restituisca un oggetto GetMailboxMethodResponse data una GetMailboxMethodCall in input.", "V",
    "TU-38","Verificare che il metodo MailboxLogic.getTest3 restituisca un oggetto GetMailboxMethodResponse data una GetMailboxMethodCall in input.", "V",
    "TU-39","Verificare che il metodo MailboxLogic.setTest restituisca un oggetto SetMailboxMethodResponse data una SetMailboxMethodCall in input.", "V",
  )
), caption: [Stato dei test di unitá.])

== Test di integrazione
I test di integrazione sono progettati per verificare che le diverse parti di un'applicazione si integrino correttamente e collaborino senza problemi quando vengono combinate. Questi test mirano a identificare eventuali errori o problemi di interoperabilità tra i moduli o le unità di codice.
#figure(test(
  (
    "TI-1","Verificare che il metodo AccountRepository.getId restituisca correttamente l'id corrispondente dal database", "V",
    "TI-2","Verificare che il metodo AccountRepository.getPassword restituisca correttamente la password corrispondente dal database", "V",
    "TI-3","Verificare che il metodo AccountRepository.getState restituisca correttamente lo stato corrispondente dal database", "V",
    "TI-4","Verificare che il metodo AccountRepository.incrementState incrementi con successo lo stato corrispondente nel database", "V",
    "TI-5","Verificare che il metodo AttachmentRepository.insert inserisca correttamente l'attachment corrispondente nel database", "V",
    "TI-6","Verificare che il metodo AttachmentRepository.get restituisca correttamente l'attachment corrispondente dal database", "V",
    "TI-7","Verificare che il metodo AttachmentRepository.delete elimini con successo l'attachment corrispondente dal database", "V",
    "TI-8","Verificare che il metodo EmailRepository.insert inserisca correttamente la mail corrispondente nel database", "V",
    "TI-9","Verificare che il metodo EmailRepository.get restituisca correttamente la mail corrispondente dal database", "V",
    "TI-10","Verificare che il metodo EmailRepository.delete elimini con successo la mail corrispondente dal database", "V",
    "TI-11","Verificare che il metodo IdentityRepository.getOf restituisca correttamente la prima identity corrispondente dal database", "V",
    "TI-12","Verificare che il metodo MailboxRepository.insert inserisca correttamente la mailbox corrispondente nel database", "V",
    "TI-13","Verificare che il metodo MailboxRepository.get restituisca correttamente la mailbox corrispondente dal database", "V",
    "TI-14","Verificare che il metodo MailboxRepository.getOf restituisca correttamente l'account corrispondente alla mailbox dal database", "V",
    "TI-15","Verificare che il metodo MailboxRepository.delete elimini con successo la mailbox corrispondente dal database", "V",
    "TI-16","Verificare che il metodo Thread.getOf restituisca correttamente il thread corrispondente dal database", "V",
    "TI-17","Verificare che il metodo UpdateRepository.insert inserisca correttamente l'update corrispondente nel database", "V",
    "TI-18","Verificare che il metodo UpdateRepository.get restituisca correttamente l'update corrispondente dal database", "V",
    "TI-19","Verificare che il metodo UpdateRepository.delete elimini con successo l'update corrispondente dal database", "V",
    "TI-18","Verificare che il metodo UpdateRepository.getOf restituisca correttamente tutti gli update corrispondente ad un utente dal database", "V",
    "TI-21","Verificare che il metodo StateRepository.get restituisca correttamente lo stato corrispondente dal database", "V",
    "TI-22","Verificare che il metodo StateRepository.insert inserisca correttamente lo stato corrispondente nel database", "V",
  )
), caption: [Stato dei test di integrazione.])

== Test di sistema
I test di sistema sono una fase del processo di testing software che mira a verificare che il sistema soddisfi i requisiti specificati nella sezione Requisiti di funzionalità del documento `Analisi dei Requisiti v1.0.0`. Questa fase di testing è condotta sul sistema nel suo complesso, dopo che i test di unità e di integrazione sono stati completati con successo. L'obiettivo principale dei test di sistema è assicurare che l'applicazione sia in grado di svolgere le sue funzioni nel contesto del suo ambiente operativo.
#figure(testSistema(
  (
    "TS-1","Verificare che un client di posta elettronica non autenticato possa autenticarsi all'interno del sistema.", "R-001-F-2", "V",
    "TS-2","Verificare che il client fornisca all'interno della richiesta l'indirizzo email personale dell'utente per procedere con l'autenticazione.", "R-002-F-2", "V",
    "TS-3","Verificare che il client fornisca all'interno della richiesta la password associata all'indirizzo email personale dell'utente per procedere con l'autenticazione", "R-003-F-2", "V",
    "TS-4","Verificare che, nel caso in cui la fase di autenticazione fallisca, il client riceva dal server una risposta con eventuali dettagli che ne indicano il motivo.", "R-004-F-2", "V",
    "TS-5","Verificare che un client autenticato possa essere in grado di reperire la risorsa JMAP Session, in modo da poter interagire con dati e servizi offerti dal server.", "R-005-F-1", "V",
    "TS-6","Verificare che un client autenticato riceva una risposta contenente l'errore \"unknownCapability\" in caso di esecuzione di una richiesta con proprietà \"using\" non supportata dal server.", "R-006-F-1", "V",
    "TS-7","Verificare che un client autenticato riceva una risposta contenente l'errore \"notJSON\" se il contenuto di una richiesta inviata al server non era application/json o se la richiesta non è stata interpretata dal server come I-JSON.", "R-007-F-1", "V",
    "TS-8","Verificare che un client autenticato riceva una risposta contenente l'errore \"notRequest\" se una richiesta JSON non ha corrisposto alla firma di tipo dell'oggetto di richiesta (Request).", "R-008-F-1", "V",
    "TS-9","Verificare che un client autenticato riceva una risposta contenente l'errore \"notRequest\" in caso di inserimento di una richiesta che supera uno dei limiti definiti sull'oggetto di capacità, come maxSizeRequest, maxCallsInRequest o maxCurrentRequests.", "R-009-F-1", "V",
    "TS-10","Verificare che un client autenticato riceva una risposta contenente l'errore \"serverUnavailable\" in caso di inserimento di una richiesta che necessita di alcune risorse interne del server momentaneamente non disponibili.", "R-010-F-1", "V",
    "TS-11","Verificare che un client autenticato riceva una risposta contenente l'errore \"serverFail\" in caso si verifichi un errore inaspettato o sconosciuto durante l'elaborazione di una sua richiesta dal server.", "R-011-F-1", "V",
    "TS-12","Verificare che un client autenticato riceva una risposta contenente l'errore \"serverPartialFail\" e proceda risincronizzando i dati in caso si verifichi un errore inaspettato o sconosciuto durante l'elaborazione di una sua richiesta dal server.", "R-012-F-1", "V",
    "TS-13","Verificare che un client autenticato riceva una risposta contenente l'errore \"unknownMethod\" in caso di inserimento di una richiesta contenente un metodo non riconosciuto dal server.", "R-013-F-1", "V",
    "TS-14","Verificare che un client autenticato riceva una risposta contenente l'errore \"invalidArguments\" se uno degli argomenti di un metodo fornito all'interno di una richiesta al server è di tipo errato, non valido o, nel caso in cui sia obbligatorio, è assente", "R-014-F-1", "V",
    "TS-15","Verificare che un client autenticato riceva una risposta contenente l'errore \"invalidResultReference\" se uno degli argomenti di un metodo fornito all'interno di una richiesta al server ha utilizzato un riferimento di risultato che non è stato possibile risolvere da parte del server.", "R-015-F-1", "V",
    "TS-16","Verificare che un client autenticato riceva una risposta contenente l'errore \"forbidden\" in caso utilizzi, all'interno di una richiesta al server, un metodo la cui esecuzione violerebbe una Access Control List (ACL) o un’altra policy di autorizzazione.", "R-016-F-1", "V",
    "TS-17","Verificare che un client autenticato riceva una risposta contenente l'errore \"accountNotFound\" se l’\"accountID\" fornito all'interno di una richiesta al server non corrisponde a un account valido.", "R-017-F-1", "V",
    "TS-18","Verificare che un client autenticato riceva una risposta contenente l'errore \"accountNotSupportedByMethod\" se all'interno di una richiesta al server è presente un metodo o tipo di dato non supportato dall’\"accountID\" fornito.", "R-018-F-1", "V",
    "TS-19","Verificare che un client autenticato riceva una risposta contenente l'errore \"accountReadOnly\" se all'interno di una richiesta al server è presente un metodo che tenta di modificare lo stato nonostante l’account sia in sola lettura.", "R-019-F-1", "V",
    "TS-20","Verificare che un client autenticato riceva una risposta contenente l'errore \"cannotCalculateChanges\" se, in seguito all'inserimento di una richiesta, il server non possa calcolare le modifiche dello stato dalla stringa di stato fornita dal client.", "R-020-F-1", "V",
    "TS-21","Verificare che un client autenticato riceva una risposta contenente l'errore \"overQuota\" se una richiesta inserita nel server richiede la creazione di oggetti che per dimensione o quantità superano il limite imposto dal server.", "R-021-F-1", "V",
    "TS-22","Verificare che un client autenticato riceva una risposta contenente l'errore \"notFound\" se una richiesta inserita nel server fornisce degli ID che non possono essere trovati.", "R-022-F-1", "V",
    "TS-23","Verificare che un client autenticato riceva una risposta contenente l'errore \"willDestroy\" se ha richiesto che un oggetto fosse sia aggiornato che distrutto all'interno della stessa richiesta al server.", "R-023-F-1", "V",
    "TS-24","Verificare che un client autenticato riceva una risposta contenente l'errore \"tooLarge\" se una richiesta inserita nel server richiede la creazione di un oggetto che supera il limite definito dal server per la dimensione massima per un oggetto di quel tipo.", "R-024-F-1", "V",
    "TS-25","Verificare che un client autenticato riceva una risposta contenente l'errore \"rateLimit\" se una richiesta inserita nel server comporta la creazione di un oggetto per cui sono stati creati troppi oggetti quel tipo di recente, raggiungendo un limite di frequeunza definito dal server.", "R-025-F-1", "V",
    "TS-26","Verificare che un client autenticato riceva una risposta contenente l'errore \"invalidPatch\" se una richiesta inserita nel server fornisce un PatchObject non valido per modificare il record.", "R-026-F-1", "V",
    "TS-27","Verificare che un client autenticato riceva una risposta contenente l'errore \"invalidProperties\" se una richiesta inserita nel server fornisce un record non valido.", "R-027-F-1", "V",
    "TS-28","Verificare che un client autenticato riceva una risposta contenente l'errore \"singleton\" se una richiesta inserita nel server tentasse di agire erroneamente su un tipo singleton.", "R-028-F-1", "V",
    "TS-29","Verificare che un client autenticato riceva una risposta contenente l'errore \"requestTooLarge\" se una richiesta inserita nel server contiene un numero di azioni che supera il massimo che il server è disposto a elaborare in una singola chiamata di metodo interna alla richiesta.", "R-029-F-1", "V",
    "TS-30","Verificare che un client autenticato riceva una risposta contenente l'errore \"stateMismatch\" se una richiesta inserita nel server contiene un argomento ifInState e questo non corrisponde allo stato attuale.", "R-030-F-1", "V",
    "TS-31","Verificare che un client autenticato riceva una risposta contenente l'errore \"blobNotFound\" e una richiesta inserita nel server contiene almeno un ID blob fornito per una parte del corpo dell'email che non esiste.", "R-031-F-1", "V",
    "TS-32","Verificare che un client autenticato riceva una risposta contenente l'errore \"tooManyKeywords\" se una richiesta inserita nel server modifica un numero di parole chiave dell'email superiore al limite massimo definito dal server.", "R-032-F-1", "V",
    "TS-33","Verificare che un client autenticato riceva una risposta contenente l'errore \"tooManyMailboxes\" se una richiesta inserita nel server modifica un numero di cartelle a cui appartiene l'email superiore al limite massimo definito dal server.", "R-033-F-1", "V",
    "TS-34","Verificare che un client autenticato riceva una risposta contenente l'errore \"alreadyExists\" se una richiesta inserita in un server che vieta i duplicati contiene un record già esistente nell'account di destinazione.", "R-034-F-1", "V",
    "TS-35","Verificare che un client autenticato riceva una risposta contenente l'errore \"fromAccountNotFound\" se una richiesta inserita nel server contiene un fromAccountId che non corrisponde a nessun account valido.", "R-035-F-1", "V",
    "TS-36","Verificare che un client autenticato riceva una risposta contenente l'errore \"fromAccountNotSupportedByMethod\"  se una richiesta inserita nel server contiene un fromAccountId che non supporta un tipo di dato utilizzato.", "R-036-F-1", "V",
    "TS-37","Verificare che un client autenticato riceva una risposta contenente l'errore \"anchorNotFound\" se una richiesta inserita nel server contiene un argomento di ancoraggio che non è stato trovato nei risultati della query.", "R-037-F-1", "V",
    "TS-38","Verificare che un client autenticato riceva una risposta contenente l'errore \"unsupportedSort\" se una richiesta inserita nel server presenta una clausola di ordinamento non supportata o un metodo di collezione non riconosciuto dal server.", "R-038-F-1", "V",
    "TS-39","Verificare che un client autenticato riceva una risposta contenente l'errore \"unsupportedFilter\" se una richiesta inserita nel server contiene un filtro che il server non è grado di elaborare.", "R-039-F-1", "V",
    "TS-40","Verificare che un client autenticato riceva una risposta contenente l'errore \"tooManyChanges\" se una richiesta inserita nel server contiene un numero di modifiche superiore all'argomento maxChanges inserito del client.", "R-040-F-1", "V",
    "TS-41","Verificare che un client autenticato riceva una risposta contenente l'errore \"mailboxHasChild\" se una richiesta inserita nel server desidera rimuovere una cartella(Mailbox) che ha ancora almeno una cartella figlia.", "R-041-F-1", "V",
    "TS-42","Verificare che un client autenticato riceva una risposta contenente l'errore \"mailboxHasEmail\" se una richiesta inserita nel server, con l'argomento onDestroyRemoveEmails impostato su false, desidera rimuovere una cartella(Mailbox) che ha al suo interno almeno una email.", "R-042-F-1", "V",
    "TS-43","Verificare che un client autenticato riceva una risposta contenente l'errore \"invalidEmail\" se una richiesta inserita nel server contiene un'email da inviare non valida.", "R-043-F-1", "V",
    "TS-44","Verificare che un client autenticato riceva una risposta contenente l'errore \"tooManyRecipients\" se una richiesta inserita nel server contiene un envelope (insieme di destinatari) che ha più destinatari di quanti il server consenta.", "R-044-F-1", "V",
    "TS-45","Verificare che un client autenticato riceva una risposta contenente l'errore \"noRecipients\" se una richiesta inserita nel server contiene un envelope (insieme di destinatari) che non presenta alcun destinatario.", "R-045-F-1", "V",
    "TS-46","Verificare che un client autenticato riceva una risposta contenente l'errore \"invalidRecipients\" se una richiesta inserita nel server contiene un envelope (insieme di destinatari) con almeno un indirizzo email destinatario non valido.", "R-046-F-1", "V",
    "TS-47","Verificare che un client autenticato riceva una risposta contenente l'errore \"forbiddenMailFrom\" se una richiesta è inserita in un server che non consente all'utente di inviare un messaggio con quel indirizzo mittente nell'envelope (From address).", "R-047-F-1", "V",
    "TS-48","Verificare che un client autenticato riceva una risposta contenente l'errore \"forbiddenFrom\" se una richiesta è inserita in un server che non consente all'utente di inviare un messaggio con il campo di intestazione From del messaggio da inviare.", "R-048-F-1", "V",
    "TS-49","Verificare che un client autenticato riceva una risposta contenente l'errore \"forbiddenToSend\" se una richiesta è inserita in un server che non consente all'utente di inviare un messaggio in quel momento.", "R-049-F-1", "V",
    "TS-50","Verificare che un utente che utilizza un client autenticato abbia la possibilità di inviare email.", "R-050-F-1", "V",
    "TS-51","Verificare che il client abbia inserito all'interno della richiesta l'identificazione delle capacità necessarie all'invio di una email.", "R-051-F-1", "V",
    "TS-52","Verificare che il client abbia inserio all'interno della richiesta le chiamate di metodo necessarie all'invio di una email.", "R-052-F-1", "V",
    "TS-53","Verificare che il client abbia inserito all'interno della richieta le proprietà dell'oggetto Email da creare.", "R-053-F-1", "V",
    "TS-54","Verificare che il client abbia inserito all'interno della richiesta la proprietà dell'ogetto EmailSubmission da creare.", "R-054-F-1", "V",
    "TS-55","Verificare se il client ha inserito all'interno della richiesta eventuali azioni da compiere in seguito al corretto invio dell'email.", "R-055-F-1", "V",
    "TS-56","Verificare che il client riceva una risposta contenente l'esito dell'operazione di invio dell'email con i relativi parametri.", "R-056-F-1", "V",
    "TS-57","Verificare che un utente che interagisce con il server abbia la possibilità di ricevere email e visualizzarne il dettaglio.", "R-057-F-1", "V",
    "TS-58","Verificare che il client abbia inserito all'interno della richiesta l'identificazione delle capacità necessarie alla ricezione di una email.", "R-058-F-1", "V",
    "TS-59","Verificare che il client abbia inserito all'interno della richiesta le chiamate di metodo necessarie alla ricezione di una email, con i relativi parametri e un identificatore univoco.", "R-059-F-1", "V",
    "TS-60","Verificare che il client abbia inserito all'interno della richiesta l'identificativo delle email che è interessato a ricevere.", "R-060-F-1", "V",
    "TS-61","Verificare se il cliente ha inserito all'interno della richiesta le proprietà specifiche delle email che è interessato a ricevere.", "R-061-F-1", "V",
    "TS-62","Verificare che il client abbia ricevuto una risposta specifica contenente l'esito dell'operazione di recezione dell'email, con i relativi parametri e la lista delle email richieste.", "R-062-F-1", "V",
    "TS-63","Verificare che l'utente che utilizza un client di posta elettronica per interagire con il server abbia la possibilità di eliminare email.", "R-063-F-1", "V",
    "TS-64","Verificare che il client abbia inserito all'interno della richiesta l'identificazione delle capacità necessarie all'eliminazione di una email.", "R-064-F-1", "V",
    "TS-65","Verificare che il client abbia inserito all'interno della richiesta le chiamate di metodo necessarie all'eliminazione di una email, con i relativi parametri e un identificatore univoco.", "R-065-F-1", "V",
    "TS-66","Verificare che il client abbia inserito all'interno della richiesta la lista degli identificativi delle email da eliminare.", "R-066-F-1", "V",
    "TS-67","Verificare che il client abbia ricevuto una risposta contenente l'esito dell'operazione di eliminazione dell'email, con i relativi parametri e gli identificativi degli oggetti eliminati.", "R-067-F-1", "V",
    "TS-68","Verificare che un utente che utilizza un client di posta elettronica per interagire con il server abbia la possibilità di recevere cartelle e visualizzarne il dettaglio.", "R-068-F-1", "V",
    "TS-69","Verificare che il client abbia inserito all'interno della richiesta l'identificazione delle capacità necessarie alla ricezione di una cartella.", "R-069-F-1", "V",
    "TS-70","Verificare che il client abbia inserito all'interno della richiesta le chiamate di metodo necessarie alla ricezione di una cartella, con i relativi parametri e un identificatore univoco associato.", "R-070-F-1", "V",
    "TS-71","Verificare che il client abbia inserito all'interno della richiesta l'identificativo delle cartelle da ricevere.", "R-071-F-1", "V",
    "TS-72","Verificare se il client abbia inserito all'interno della richiesta le proprietà specifiche delle cartelle che è interessato a ricevere.", "R-072-F-1", "V",
    "TS-73","Verificare che il client abbia ricevuto una risposta contenente l'esito dell'operazione di ricezione della cartella con relativi parametri e la lista delle cartelle richieste.", "R-073-F-1", "V",
    "TS-74","Verificare che l'utente che utilizza un client di posta elettronica per interagire con il server abbia la possibilità di creare cartelle.", "R-074-F-1", "V",
    "TS-75","Verificare che il client abbia inserito al'interno della richiesta l'identificazione delle capacità necessarie alla creazione di una cartella.", "R-075-F-1", "V",
    "TS-76","Verificare che il client abbia inserito all'interno della richiesta le chiamate di metodo necessarie alla creazione di una cartella, con i relativi parametri e un identificatore univoco associato.", "R-076-F-1", "V",
    "TS-77","Verificare che il cliente abbia inserito all'interno della richiesta le proprietà Mailbox da creare.", "R-077-F-1", "V",
    "TS-78","Verificare che il client abbia ricevuto una risposta contenente l'esito dell'operazione di creazione della cartella, con i relativi parametri e la lista delle cartelle create.", "R-078-F-1", "V",
    "TS-79","Verificare che l'utente che utilizza un client di posta elettronica per interagire con il server abbia la possibilità di modificare cartelle esistenti.", "R-079-F-1", "V",
    "TS-80","Verificare che il cliente abbia inserito all'interno della richiesta l'identificazione delle capacità necessarie alla modifica di una cartella.", "R-080-F-1", "V",
    "TS-81","Verificare che il client abbia inserito all'interno della richiesta le chiamate di metodo necessarie alla modifica di una cartella, con i relativi parametri e un identificatore univoco associato.", "R-081-F-1", "V",
    "TS-82","Verificare che il client abbia inserito all'interno della richiesta le modifiche da apportare all'oggetto Mailbox che l'utente desidera modificare.", "R-082-F-1", "V",
    "TS-83","Verificare che il client riceva una risposta contenente l'esito dell'operazione di modifica della cartella con relativi parametri e la lista delle cartelle modificate.", "R-083-F-1", "V",
    "TS-84","Verificare che l'utente che utilizza un client di posta elettronica per interagire con il server abbia la possibilità di eliminare cartelle esistenti.", "R-084-F-1", "V",
    "TS-85","Verificare che il client abbia inserito all'interno della richiesta l'identificazione delle capacità necessarie all'eliminazione di una cartella.", "R-085-F-1", "V",
    "TS-86","Verificare che il client abbia inserito all'interno della richiesta le chiamate di metodo necessarie all'eliminazione di una cartella, con i relativi parametri e un identificatore univoco associato.", "R-086-F-1", "V",
    "TS-87","Verificare che il client abbia inserito all'interno della richiesta la lista degli identificativi delle cartelle da eliminare.", "R-087-F-1", "V",
    "TS-88","Verificare che il client abbia specificato all'interno della richiesta il comportamento desiderato da parte del server quando si cerca di eliminare una cartella che contiene ancora delle email.", "R-088-F-1", "V",
    "TS-89","Verificare che il client abbia ricevuto una risposta contente l'esito dell'operazione di eliminazione della cartella, con i relativi parametri e la lista degli identificativi delle cartelle eliminate.", "R-089-F-1", "V",
    "TS-90","Verificare che l'utente che utilizza il client di posta elettronica per interagire con il server abbia la possibilità di gestire i contenuti di una cartella.", "R-090-F-1", "V",
    "TS-91","Verificare che il client abbia inserito all'interno della richiesta l'identificazione delle capacità necessarie alla gestione dei contenuti di una cartella.", "R-091-F-1", "V",
    "TS-92","Verificare che il client abbia inserito all'interno della richiesta le chiamate di metodo necessarie alla gestione dei contenuti di una cartella, con i relativi parametri e un identificatore univoco associato.", "R-092-F-1", "V",
    "TS-93","Verificare che il client abbia inserito all'interno della richiesta le modifiche da apportare agli oggetti Email che l'utente desidera aggiungere ad una o più cartelle.", "R-093-F-1", "V",
    "TS-94","Verificare che il client abbia inserito all'interno della richiesta le modifiche da apportare agli oggetti Email che l'utente desidera rimuovere da una o più cartelle.", "R-094-F-1", "V",
    "TS-95","Verificare che il client abbia inserito all'interno della richiesta le modifiche da apportare agli oggetti Email che l'utente desidera spostare da una o più cartelle ad una o più cartelle.", "R-095-F-1", "V",
    "TS-96","Verificare che il client abbia ricevuto una risposta contenente l'esito delle operazioni di gestione dei contenuti di una cartella, con i relativi parametri e la lista delle email modificate.", "R-096-F-1", "V",
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
    "TS-118","Verificare che un client di posta elettronica utilizzato da un utente per interagire con il server abbia la possibilità di mantenersi sincronizzato con gli ultimi aggiornamenti per quanto riguarda le email.", "R-118-F-3", "V",
    "TS-119","Verificare che il client abbia inserito all'interno della richiesta l'identificazione delle capacità necessarie alla sincronizzazione delle email.", "R-119-F-3", "V",
    "TS-120","Verificare che il client abbia inserito all'interno della richiesta le chiamate di metodo necessarie alla sincronizzazione delle email, con relativi parametri e un identificatore univoco associato.", "R-120-F-3", "V",
    "TS-121","Verificare che il client abbia inserito all'interno della richiesta il suo stato corrente per quanto riguarda le email, con lo scopo sincronizzarsi.", "R-121-F-3", "V",
    "TS-122","Verificare che il client abbia inserito all'interno della richiesta il numero massimo di identificatori di email che desidera ricevere come risposta, con lo scopo di sincronizzarsi.", "R-122-F-3", "V",
    "TS-123","Verificare che il client abbia ricevuto una risposta contenente le informazioni di cui ha bisogno per sincronizzarsi per quanto riguarda le email.", "R-123-F-3", "V",
    "TS-124","Verificare che un client di posta elettronica utilizzato da un utente per interagire con il server abbia la possibilità di mantenersi sincronizzato con gli ultimi aggiornamenti per quanto riguarda le cartelle.", "R-124-F-3", "V",
    "TS-125","Verificare che il client abbia inserito all'interno della richiesta l'identificazione delle capacità necessarie alla sincronizzazione delle cartelle.", "R-125-F-3", "V",
    "TS-126","Verificare che il client abbia inserito all'interno della richiesta le chiamate di metodo necessarie alla sincronizzazione delle cartelle, con relativi parametri e un identificatore univoco associato.", "R-126-F-3", "V",
    "TS-127","Verificare che il client abbia inserito all'interno della richiesta il suo stato corrente per quanto riguarda le cartelle, con lo scopo sincronizzarsi.", "R-127-F-3", "V",
    "TS-128","Verificare che il client abbia inserito all'interno della richiesta il numero massimo di identificatori di cartelle che desidera ricevere come risposta, con lo scopo di sincronizzarsi", "R-128-F-3", "V",
    "TS-129","Verificare che il client abbia ricevuto una risposta contenente le informazioni di cui ha bisogno per sincronizzarsi per quanto riguarda le cartelle.", "R-129-F-3", "V"
  )
), caption: [Stato dei test di sistema.])

== Test di regressione
I test di regressione hanno lo scopo di assicurare che le modifiche apportate al codice non abbiano effetti indesiderati sul funzionamento complessivo del sistema. Questi test mirano a rilevare eventuali regressioni, cioè il ripresentarsi di difetti precedentemente risolti o l'introduzione di nuovi difetti, in seguito a modifiche o aggiornamenti del software. \
Essi consistono nell'esecuzione di una serie di test di unità, integrazione e sistema precedentemente definiti che coprono le funzionalità critiche del sistema. Dopo ogni modifica al codice, l'intero insieme di casi di test di regressione viene eseguito per verificare che tutte le funzionalità precedentemente funzionanti continuino a operare correttamente. \

#figure(testRegressione(
  (
    "TU-5, TU-17, TU-20, TU-23, TU-25, TU-28, TU-30, TU-34, TU-36, TU-39",
    "TI-1, TI-2, TI-3, TI-5, TI-6, TI-8, TI-9, TI-13, TI-15, TI-17, TI-18",
    "TS-1, TS-50, TS-57, TS-63, TS-68, TS-74, TS-79, TS-84, TS-90, TS-118, TS-124",
  )
), caption: [Test di regressione selezionati.])

==  Test di accettazione
I test di accettazione sono finalizzati a garantire che il prodotto soddisfi i requisiti utente come specificati nel #glossary("capitolato"). Essi vengono eseguiti in presenza del committente e dimostrano la conformità del prodotto alle aspettative attraverso l'esecuzione dei casi di prova previsti nel capitolato. Il superamento positivo di tali test durante il collaudo finale generalmente conduce al rilascio definitivo del prodotto.

#figure(test(
  (
    "TA-1","Verificare che il prodotto supporti l'invio di email.","V",
    "TA-2","Verificare che il prodotto supporti la ricezione di email.","V",
    "TA-3","Verificare che il prodotto supporti l'eliminazione di email.","V",
    "TA-4","Verificare che il prodotto supporti la creazione delle cartelle.","V",
    "TA-5","Verificare che il prodotto supporti la modifica delle cartelle.","V",
    "TA-6","Verificare che il prodotto supporti l'eliminazione delle cartelle.","V",
    "TA-7","Verificare che il prodotto supporti la gestione dei contenuti di una cartella.","V",
    "TA-8","Verificare che il prodotto supporti la condivisione di una cartella.","NI",
    "TA-9","Verificare che il prodotto supporti l’eliminazione di una condivisione di cartella.","NI",
    "TA-10","Verificare che il prodotto implementi un sistema di sincronizzazione che permetta ad un client di mantenersi aggiornato con gli ultimi aggiornamenti della casella di posta visualizzata.","V",
    "TA-11","Verificare che il prodotto supporti la gestione di calendari e appuntamenti.","NI",
    "TA-12","Verificare che il prodotto supporti la gestione di contatti e rubriche contatti.","NI",
    "TA-13","Verificare che il prodotto faccia utilizzo della libreria iNPUTmice/jmap per l’implementazione del protocollo JMAP.","V",
    "TA-14","Verificare che il prodotto sia eseguibile in un sistema "+[#glossary("container")] +", come Docker.","V",
    "TA-15","Verificare che il prodotto sia scalabile mediante l’inizializzazione di più nodi stateless. Per stateless si intende che alla richiesta di uno specifico client fatta ad un’architettura contenente più di un’istanza del servizio dato, può rispondere una qualsiasi istanza del servizio, perché nessuna istanza contiene dati specifici di stato rispetto alle richieste dei client","V",
    "TA-16","Verificare che il prodotto sia sottoponibile a stress test da noi fortniti che riescano a misurare le performance della soluzione provvista.","V"
  )
), caption: [Stato dei test di accettazione.])


#pagebreak()

= Cruscotto di valutazione della qualità

== MPC06 - Estimated at Completion (EAC)
#figure(image("//imgs/PdQ_graphs/EAC.png", width: 100%), caption: [Proiezione della stima del costo totale nei vari periodi di progetto.])

*RTB*: Osservando il grafico ne emerge che in seguito al primo periodo del progetto le stime dei costi totali si discostavano leggermente dal valore ottimale (ovvero la stima iniziale, detta anche BAC) di qualche decina di euro in eccesso. Questa discrepanza è attribuibile alla previsione di un maggior numero di ore nel ruolo di#glossary("Analista") rispetto a quelle successivamente stimate nei periodi II e III, di conseguenza, si è verificata una diminuzione dei costi in questi due periodi. Quest'ultima è stata seguita poi da un leggero aumento poichè, come riportato dalle sezioni Periodo III e Periodo IV del documento `Piano di Progetto v1.0.0`, tra il terzo ed il quarto periodo il gruppo si è reso conto di necessitare di quelle ore che ritenevamo superflue per approfondire ancora di più il documento `Analisi dei Requisiti`. Infine nel quinto ed ultimo periodo la stima è rimasta pressochè costante dato che tutto ha proceduto secondo i piani.

*PB*: Da un'attenta analisi del grafico, si può notare come nei periodi V, VI e VII l'EAC si mantenga sostanzialmente costante e prossima al valore ottimale. Solo nell'ultimo periodo menzionato si registra una leggera diminuzione, attribuibile alla previsione di un minore numero di ore nel ruolo di Verificatore rispetto a quelle stimate in precedenza. Tuttavia, si nota un significativo calo durante il periodo VIII. Questo è dovuto alla decisione definitiva del gruppo di non proseguire con la revisione CA, bensì di fermarsi alla PB, comportando di conseguenza una riduzione dei costi totali previsti per il completamento del progetto. Infine, nel nono e ultimo periodo, si registra un lieve aumento della stima, ma è importante sottolineare che durante l'intera durata del progetto l'EAC è rimasta entro i valori accettabili da noi definiti.

#pagebreak()

== MPC01 - Earned Value (EV) e MPC02 - Planned Value (PV)
#figure(image("//imgs/PdQ_graphs/EV_PV.png", width: 100%), caption: [Proiezione dell'EV e del PV nei vari periodi di progetto.])

*RTB*: Dal grafico, è evidente che le curve dell'Earned Value (valore guadagnato) e del Planned Value (valore pianificato) si sovrappongono, indicando che il lavoro effettivamente svolto è conforme alla pianificazione. Questa sovrapposizione suggerisce un avanzamento positivo rispetto alla pianificazione del progetto.

*PB*: Osservando il grafico si nota come anche nella seconda fase del progetto le due metriche procedano parallelamente, tranne che al termine del periodo V, all'interno del quale non avevamo pianificato alcun avanzamento per via della sessione di esami e del passaggio della revisione RTB, tuttavia, abbiamo poi effettuato del progresso nonostante ciò. Comunque, ad esclusione di questa eccezione, l'andamento quasi perfettamente parallelo di EV e PV dimostra un'ottima capacità di pianificazione acquisita nel corso del progetto da parte del team.

#pagebreak()

== MPC03 - Actual Cost (AC) e MPC07 - Estimate to Complete (ETC)
#figure(image("//imgs/PdQ_graphs/AC_ETC.png", width: 100%), caption: [Proiezione dell'AC e dell'ETC nei vari periodi di progetto.])

*RTB*: Il grafico visualizza l'Estimate to Complete (ETC), cioè la stima del costo rimanente previsto per portare a termine il progetto durante i vari periodi, e l'Actual Cost (AC), ossia una stima del costo effettivamente sostenuto per il lavoro eseguito fino al periodo attuale. Si osserva come l'ETC tenda giustamente a diminuire nel corso del periodo, mentre l'AC mostra una crescita proporzionale alla velocità con cui l'ETC decresce.

*PB*: Guardando il grafico, si può notare che durante il periodo V c'è stato soltanto un leggero aumento nell'AC, di molto inferiore ai restanti periodi, attribuibile al focus dedicato agli esami e al passaggio della RTB in quella finestra temporale. Tuttavia, oltre a questo caso particolare, nei successivi periodi si osserva un rapido aumento dell'AC, accompagnato da una decrescita proporzionale dell'ETC, indicando un notevole impegno lavorativo accompagnato da un'equivalente spesa. \
Al termine dell'ultimo periodo, che corrisponde alla candidatura alla revisione PB, l'AC ha chiaramente raggiunto l'Estimated at Completion (EAC), mentre l'ETC è rimasto leggermente superiore allo zero di alcune centinaia di euro poiché abbiamo scelto di non eseguire la revisione CA, spendendo dunque meno di quanto inizialmente preventivato in fase di candidatura.

#pagebreak()

== MPC04 - Cost Variance (CV) e MPC05 - Schedule Variance (SV)
#figure(image("//imgs/PdQ_graphs/CV_SV.png", width: 100%), caption: [Proiezione della CV e della SV nei vari periodi di progetto.])

*RTB*: Il grafico evidenzia la Cost Variance (CV), rappresentante la differenza tra il valore guadagnato (EV) e i costi sostenuti (AC) in percentuale, e la Schedule Variance (SV), indicando la differenza tra il valore guadagnato (EV) e il valore pianificato (PV) in percentuale. Mentre la Cost Variance nei vari periodi è costante e pari a 0, dato che indica una corrispondenza tra i costi sostenuti e l'avanzamento reale nel progetto, si nota un andamento della Schedule Variance abbastanza altalenante. La prima diminuzione è attribuibile a incomprensioni interne che hanno impattato negativamente sul lavoro e, di conseguenza, sul valore guadagnato rispetto a quanto inizialmente specificato. Questa per fortuna, però, è stata seguita da un grande aumento dovuto ad uno sforzo del gruppo di tentare di svolgere più lavoro possibile, anche se non pianificato inizialmente. Infine si ha un calo dovuto ad una previsione di ore necessarie alla risoluzione del PoC che si è rivelata essere eccessiva.

*PB*: Guardando il grafico si può osservare come anche nella seconda fase del progetto la CV rimanga costante e pari a 0, confermando l'accurata corrispondenza tra i costi sostenuti e l'avanzamento effettivo del progetto. Per quanto riguarda la SV invece, al termine del periodo V si evidenzia un'eccezione poiché, nonostante non fosse previsto alcun avanzamento, questo si è verificato, determinando una differenza percentuale del 100%. Tuttavia, ad eccezione di questo caso particolare, la SV mostra una minore variazione rispetto alla prima parte del progetto. Il gruppo si è dimostrato infatti estremamente preciso nella pianificazione della fase compresa tra RTB e PB, risultando in una differenza percentuale minima tra il valore guadagnato e il valore pianificato.

#pagebreak()

== MPC08 - Requirements stability index (RSI)
#figure(image("//imgs/PdQ_graphs/RSI.png", width: 100%), caption: [Proiezione del RSI nei vari periodi di progetto.])

*RTB*: Il grafico illustra la dinamica della metrica RSI, volta a valutare la stabilità dei requisiti del progetto nel corso del tempo. Emerge chiaramente una rapida crescita tra il primo e il secondo periodo, coincidente con l'avvio dell'analisi dei requisiti da parte del gruppo. Inoltre, si nota un ulteriore aumento tra il secondo e il terzo periodo, indicativo di modifiche e/o aggiornamenti nell'analisi dei requisiti che sono andati a diminuire. Il parametro poi è diminuito nuovamente per via di modifiche importanti, necessarie a raggiungere un livello di dettaglio dei requisiti ancora maggiore. Infine si nota che nel quinto ed ultimo periodo i requisiti non sono stati toccati e quindi la metrica RSI risulta pari al 100%.

*PB*: Dal grafico si può osservare come, in seguito ad un piccolo aggiustamento dei requisiti conseguente alla revisione RTB avvenuto nel periodo V, i requisiti non siano più stati modificati dal periodo VI in poi, comportando una RSI pari al 100%. Questo aspetto è assolutamente positivo poiché indica una stabilità nel quadro dei requisiti del progetto, il che ha portato a diverse conseguenze benefiche come stabilità del `Piano di Progetto`, risparmio di tempo e risorse, chiarezza negli obiettivi e minore #glossary("rischio") di errori. Una buona `Analisi dei Requisiti` alla base quindi ha sicuramente influito positivamente sul successo del nostro progetto.

#pagebreak()


== MPC11 - Indice Gulpease
#figure(image("//imgs/PdQ_graphs/Gulpease.png", width: 100%), caption: [Proiezione dell'indice Gulpease per ogni documento (RTB) nei vari periodi di progetto.])

*RTB*: Dall'analisi del grafico emerge un generale trend di aumento e/o stabilizzazione dell'indice per ciascun documento nel corso dei differenti periodi. L'eccezione a questa tendenza è rappresentata dal `Piano di Progetto`, il quale si discosta da tale andamento a causa di una variazione sostanziale del suo contenuto nel corso del tempo. Inoltre, si osserva che l'`Analisi dei Requisiti` è l'unico documento che inizia al di sotto del limite accettabile inferiore, fenomeno causato dalla specificità degli argomenti trattati e dal linguaggio utilizzato in quest'ambito. Tuttavia tutti i documenti risultano comprensibili per chi ha la licenza media.

*PB*: Osservando il grafico si può notare come, nei periodi seguenti alla revisione RTB, i documenti già esistenti abbiano mantenuto un indice di Gulpease pressochè costante e pari a quello precedente, indicando che il loro contenuto è stato mantenuto ad un livello di comprensibilità uniforme nel tempo, senza variazioni significative nella complessità o nella struttura delle frasi. \
In aggiunta troviamo i documenti `Manuale Utente` e `Specifica Tecnica`. Il primo si presenta più accessibile, mentre il secondo risulta meno comprensibile, il che è coerente con la natura dei rispettivi contenuti, dunque non ci sorprende. Alla fine del progetto, possiamo affermare che tutti i documenti prodotti sono comprensibili per chi possiede almeno la licenza media.

#pagebreak()

== MPC12 - Correttezza Ortografica
#figure(image("//imgs/PdQ_graphs/CorrOrt.png", width: 100%), caption: [Proiezione della correttezza ortografica nei vari periodi di progetto.])

*RTB*: Osservando il grafico emerge una particolare attenzione da parte dei membri del gruppo nell'evitare di commettere errori di ortografia all'interno dei vari documenti: qualche errore è sfuggito (cosa inevitabile vista la nostra natura umana) ma tutto sommato la maggior parte dei documenti ha presentato 0 errori per la maggior parte della loro esistenza, raggiungendo l'ottimo nell'ultimo periodo.

*PB*: Il grafico mostra come il numero di errori ortografici si sia mantenuto basso anche nella seconda parte del progetto, anche se lo 0 è stato raggiunto su tutti i documenti soltanto nell'ultimo periodo. Questo risultato riflette un'impeccabile attenzione alla qualità della scrittura e un impegno costante nel correggere eventuali errori, anche se naturalmente qualcuno ci è sfuggito.

#pagebreak()

== MPC14 - Passed Test Cases Percentage
#figure(image("//imgs/PdQ_graphs/PassedTest.png", width: 100%), caption: [Proiezione della percentuale di test terminati con successo nei vari periodi di progetto.])

*PB*: L'analisi del grafico rivela che fin dall'introduzione dei primi test, corrispondente all'inizio del periodo VIII, essi sono stati completamente superati. È significativo notare che non esiste alcuna disparità tra il limite minimo accettabile e il valore ottimale, poiché è imperativo che il prodotto superi con successo tutti i test a cui viene sottoposto. Questo sottolinea l'importanza di garantire che il prodotto mantenga costantemente gli standard più elevati di performance e qualità.

#pagebreak()

== MPC15 - Quality Metrics Satisfied
#figure(image("//imgs/PdQ_graphs/QualityMetSat.png", width: 100%), caption: [Proiezione della percentuale di metriche di qualità soddisfatte nei vari periodi di progetto.])

*RTB*: Dal grafico emerge che nei primi periodi una parte delle metriche di qualità definite dal gruppo non ha raggiunto valori accettabili. Questo è stato dovuto specialmente all'inesperienza iniziale dei membri, i quali però hanno poi appreso dai loro errori, permettendoci di raggiungere valori accettabili, fino a giungere al valore ottimo (100%) al termine del quinto periodo. Questo dimostra quindi un miglioramento nel nostro #glossary("way of working") e nei risultati qualitativi ottenuti.

*PB*: Il grafico evidenzia come, dopo il superamento della revisione RTB, il valore della metrica sia costantemente rimasto al di sopra del livello accettabile. Inizialmente si è verificato un calo, poiché era evidente che le metriche di qualità del prodotto potevano essere soddisfatte solo verso la fase finale del progetto. Tuttavia, nell'ultimo periodo, si può notare un significativo miglioramento: a parte una singola metrica, tutte le altre hanno raggiunto valori accettabili o addirittura ottimi. Questo indica un notevole sforzo da parte del team nel migliorare la qualità complessiva del prodotto, e testimonia l'efficacia delle azioni correttive implementate nel corso del tempo.

#pagebreak()

== MPC16 - Non-Calculated Risk
#figure(image("//imgs/PdQ_graphs/NonCalcRisk.png", width: 100%), caption: [Proiezione rischi non identificati nei vari periodi di progetto.])

*RTB*: Il grafico evidenzia come per la maggior parte del tempo non si siano verificati rischi non previsti da parte del gruppo. L'unica eccezione è il quarto periodo, dove sbadatamente non abbiamo tenuto conto della possibilità di non poter riuscire ad organizzare un colloquio con il #p.cardin per ottenere un feedback. È importante chiarire che la metrica non assicura l'assenza completa di rischi non previsti, ma si limita a indicare se essi siano o meno emersi. Comunque il grafico sottolinea una ottima previsione dei rischi da parte del gruppo.

*PB*: Osservando il grafico, si può notare come nella seconda parte del progetto non si sia verificato nessun rischio imprevisto, il che rappresenta un risultato estremamente positivo. Questo dato sottolinea non solo l'efficacia delle strategie di gestione del rischio implementate, ma anche la solida pianificazione e l'attenta valutazione dei potenziali scenari da parte del team. La mancanza di eventi imprevisti indica una grande capacità di anticipare le possibili sfide e di adottare misure preventive appropriate. Inoltre, questo successo testimonia l'alto livello di competenza e professionalità del team nel gestire in modo proattivo le incertezze e nel garantire il progresso senza intoppi del progetto. La mancanza di rischi imprevisti rappresenta quindi una conferma tangibile della solidità del processo decisionale e dell'efficacia complessiva della gestione del progetto.

#pagebreak()

== MPC17 - Efficienza Temporale
#figure(image("//imgs/PdQ_graphs/EffTemp.png", width: 100%), caption: [Proiezione dell'#glossary("efficienza") temporale nei vari periodi di progetto.])

*RTB*: Il grafico illustra l'andamento della metrica relativa all'efficienza temporale attraverso i vari periodi. È evidente che la metrica supera il limite accettabile superiore sia nel primo che nel secondo periodo, prima di stabilizzarsi al di sotto solo nel terzo periodo ed i seguenti. Questa tendenza è attribuibile alla necessità del gruppo, nei primi periodi, di prendere familiarità con le nuove tecnologie, ambienti e linguaggi richiesti dal capitolato, oltre che all'adattamento alle pratiche necessarie alla gestione del progetto. Si evidenzia comunque un miglioramento nel tempo, che dimostra come, per ottenere i risultati desiderati, ad oggi ci sia richiesto meno tempo di orologio rispetto che all'inizio del progetto. Questo fattore è attribuibile ad un aumento dell'esperienza dei membri del gruppo.

*PB*: Nella seconda parte del progetto, abbiamo inizialmente raggiunto il valore ottimo della metrica, ottenendo una corrispondenza precisa tra le ore produttive e quelle di orologio al termine del periodo VI. Questo risultato è stato possibile poiché in quel momento ci siamo dedicati principalmente a compiti che già conoscevamo bene, come il perfezionamento dei requisiti del progetto e dei test di sistema corrispondenti. Questa familiarità con le attività svolte ci ha permesso quindi di lavorare in modo efficiente e di ottenere risultati di alta qualità. \
In seguito, nel periodo VII, purtroppo la metrica ha superato nuovamente il limite accettabile superiore dopo un lungo periodo dall'ultima volta.  Questo fenomeno è stato causato dall'introduzione di nuove attività, come la progettazione del prodotto, con le quali ci siamo confrontati per la prima volta. Il numero di ore di orologio corrispondenti alle ore produttive è poi andato a scendere, raggiungendo il valore di 3 durante il periodo VIII, quando eravamo ancora alle prime armi con i test, e 2 nell'ultimo periodo, quando finalmente abbiamo acquisito esperienza.

#pagebreak()

== MPD01 - Copertura dei requisiti obbligatori
#figure(image("//imgs/PdQ_graphs/CRO.png", width: 100%), caption: [Proiezione della copertura dei requisiti obbligatori nei vari periodi di progetto.])

*PB*: Osservando il grafico si può notare facilmente come tutti i requisiti obbligatori siano stati coperti al termine del periodo IX, corrispondente alla nostra candidatura alla revisione PB. Una parte minore di essi è stata soddisfatta durante il periodo VII, la maggioranza nel periodo VIII ed infine li abbiamo conclusi nel periodo IX, dato che era necessario progettare accuratamente i moduli richiesti prima di poterli sviluppare. Questa categoria di requisiti è stata prioritarizzata rispetto agli altri poiché sono considerati i più cruciali ed era quindi fondamentale per noi non trascurare neanche uno di essi.

#pagebreak()

== MPD02 - Copertura dei requisiti desiderabili
#figure(image("//imgs/PdQ_graphs/CRD.png", width: 100%), caption: [Proiezione della copertura dei requisiti desiderabili nei vari periodi di progetto.])

*PB*: Dall'analisi del grafico emerge che, purtroppo, per questa metrica non siamo mai riusciti a raggiungere il limite accettabile inferiore. La nostra intenzione iniziale era infatti quella di completare almeno il 50% dei requisiti desiderabili, ma purtroppo le risorse a nostra disposizione ci hanno posto dei limiti. Date le restrizioni temporali, siamo stati in grado di implementare solo le funzionalità desiderabili relative all'autenticazione degli utenti. Tuttavia, non siamo riusciti a coprire quelle relative alla gestione della condivisione delle cartelle nel nostro prodotto. \
È comunque importante evidenziare che la decisione di non soddisfare i requisiti funzionali desiderabili riguardanti la gestione della condivisione delle cartelle è stata preso in accordo con l'azienda, la quale ha preferito investissimo il nostro tempo e i nostri sforzi su altri aspetti ritenuti di maggiore importanza per il progetto, come lo sviluppo di test di carico che permettessero di rispondere meglio alle domande poste dal capitolato.

#pagebreak()

== MPD03 - Copertura dei requisiti opzionali
#figure(image("//imgs/PdQ_graphs/CRP.png", width: 100%), caption: [Proiezione della copertura dei requisiti opzionali nei vari periodi di progetto.])

*PB*: Dal grafico si può vedere come tutti i requisiti opzionali siano stati soddisfatti all'interno dell'ultimo periodo, ovvero il periodo IX. Infatti, nei periodi precedenti abbiamo preferito dare priorità ai requisiti di maggiore valenza per il progetto, tuttavia, ritenendo anche l’implementazione di un sistema di sincronizzazione molto importante per il nostro prodotto, sebbene fosse opzionale, abbiamo deciso di dedicare tempo e risorse per soddisfare anche questa esigenza, superando così il valore ottimale inferiore per questa metrica.

#pagebreak()

== MPD04 - Code coverage
#figure(image("//imgs/PdQ_graphs/CodeCov.png", width: 100%), caption: [Proiezione della code coverage nei vari periodi di progetto.])

*PB*: Analizzando il grafico, notiamo come la code coverage raggiunga un valore accettabile solo nell'ultimo periodo. Ciò è dovuto al fatto che nei periodi precedenti abbiamo concentrato la maggior parte delle nostre risorse sulla progettazione, ed è stato solo a partire dal periodo VIII che siamo riusciti a dedicarci allo sviluppo dei test. Nonostante il desiderio di fare di più, abbiamo dovuto confrontarci con le realtà delle scadenze e della disponibilità di risorse, dovendoci accontentare di una copertura dell'87%. Tuttavia, è importante sottolineare che, nonostante le sfide incontrate, siamo riusciti a reagire in modo efficace e adottare una strategia che ci ha permesso comunque di superare il valore accettabile.

#pagebreak()

== MPD05 - Branch coverage
#figure(image("//imgs/PdQ_graphs/BrCov.png", width: 100%), caption: [Proiezione della #glossary("branch") coverage nei vari periodi di progetto.])

*PB*: Da una analisi dettagliata del grafico emerge chiaramente che, fin dall'introduzione dei primi test all'inizio del periodo VIII, la branch coverage ha mantenuto un valore accettabile, aumentando nel tempo. Questo suggerisce che l'implementazione dei test ha avuto un impatto positivo fin dalle fasi iniziali della loro introduzione, contribuendo a garantire una buona copertura delle possibili diramazioni nel flusso di esecuzione del codice. Questa stabilità nella copertura dei vari rami riflette l'efficacia della nostra strategia di testing nel garantire la qualità e l'affidabilità del software.

#pagebreak()

== MPD07 - Failure density
#figure(image("//imgs/PdQ_graphs/FailD.png", width: 100%), caption: [Proiezione della failure density nei vari periodi di progetto.])

*PB*: Dal momento dell'introduzione dei primi test, avvenuta all'inizio del periodo VIII, il grafico evidenzia che tutti i difetti del prodotto da noi individuati sono stati identificati con successo. Questo risultato riveste una notevole importanza poiché dimostra l'efficacia del processo di testing implementato. Trovare e correggere i difetti in anticipo consente infatti di garantire la qualità del prodotto finale, riducendo il rischio di errori e migliorando la soddisfazione del cliente. Inoltre, individuare tempestivamente i problemi consente di risparmiare tempo e risorse, poiché evita che i difetti si accumulino e diventino più difficili da risolvere in fasi successive dello sviluppo del prodotto. \
Certamente, è importante sottolineare che il fatto di aver identificato tutti i difetti fin dall'inizio dei test non garantisce che non ce ne siano altri presenti nel prodotto. Nonostante il processo di testing possa essere accurato, è sempre possibile che alcune problematiche rimangano non rilevate o che ne emergano di nuove in seguito a modifiche o interazioni complesse nel sistema. 

#pagebreak()

== MPD11 - Code smell
#figure(image("//imgs/PdQ_graphs/CS.png", width: 100%), caption: [Proiezione del numero di code smell nei vari periodi di progetto.])

*PB*: Il grafico mostra il numero di code smell, ossia potenziali problemi di progettazione o codice che potrebbero richiedere #glossary("manutenzione"), nel corso del tempo. Nel periodo VII abbiamo identificato un unico code smell, causato da un caso particolare riguardante lo smistamento delle richieste nel sistema, per il quale non avevamo una soluzione soddisfacente. Per risolvere questa problematica abbiamo consultato il #p.cardin, il quale ci ha fornito preziosi suggerimenti che ci hanno permesso di superare questo problema all'interno del periodo VIII. Tuttavia, in tutti gli altri periodi, il numero di code smell è rimasto costantemente pari a 0. Questo evidenzia che, dopo aver risolto il singolo problema riscontrato nel periodo VII, non ne sono stati rilevati altri nei periodi successivi. Ciò suggerisce un miglioramento complessivo della qualità del software nel corso dello sviluppo attribuibile alla nostra attenzione costante alla progettazione e allo sviluppo di codice pulito e ben strutturato, nonché alla prontezza nel risolvere i problemi identificati.