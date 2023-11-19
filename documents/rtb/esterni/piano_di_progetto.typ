#import "//templates/document.typ": *

#show: project.with(
  title: "Piano di Progetto",
  managers: p.vedovato,
  recipients: (
    p.vardanega,
    p.cardin,
    [_#(p.zextras)_],
  ),
  changelog: (
    "0.0.2", "2023-11-19", p.fabbian, p.amadori, "Aggiunta della sezione 'Analisi dei Rischi'",
    "0.0.1", "2023-11-15", p.bulychov, p.amadori, "Struttura di base ed introduzione",
  )
)

\

= *Introduzione*
== Scopo del documento
Questo documento ha l'obiettivo di delineare la pianificazione e la gestione delle attività necessarie per la realizzazione del progetto. Vengono approfonditi aspetti chiave come l'`Analisi dei Rischi`, il modello di sviluppo adottato, la pianificazione delle attività, la suddivisione dei ruoli, nonché stime dei costi e delle risorse necessarie.

== Scopo del prodotto
Lo scopo principale del prodotto é quello di permettere all'azienda proponente di poter valutare se ha senso investire tempo e risorse per implementare il protocollo JMAP nel loro prodotto di punta chiamato Carbonio, una soluzione di collaborazione online che ruota attorno alla gestione delle email. JMAP è difatti un protocollo di comunicazione appositamente progettato per semplificare l'interazione tra client e server nell'ambito delle applicazioni di posta elettronica.\
Attualmente, Carbonio fa affidamento su protocolli standard come IMAP, POP e Exchange Active Sync. Di conseguenza, l'implementazione di JMAP potrebbe offrire potenzialmente un aumento di funzionalità e efficienza a un costo inferiore.

== Glossario
Per evitare ambiguitá o incomprensioni riguardanti la terminologia usata nel documento, é stato deciso di adottare un glossario in cui vengono riportate le varie definizioni. In questa maniera in esso verranno riportati tutti i termini specifici del dominio d'uso con relativi significati.
\
La presenza di un termine all'interno del `Glossario` viene indicata applicando #glossary("questo stile").

== Riferimenti
=== Riferimenti normativi
- `Norme di Progetto`
- *PD2 - Regolamento del progetto didattico* \
  https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/PD2.pdf
- *Capitolato d'appalto C8*: JMAP, il nuovo protocollo standard per la comunicazione email \
  https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C8.pdf

=== Riferimenti informativi
- *T2 - Processi di ciclo di vita del software* \
  https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T2.pdf
- *T4 - Gestione di progetto* \
  https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T4.pdf

#pagebreak()
= *Analisi dei Rischi*
Durante lo sviluppo del progetto è essenziale mitigare gli impatti delle difficoltà riscontrate attraverso una corretta analisi dei rischi. Al fine di gestire efficacemente le problematiche derivanti da diverse condizioni intervenute durante l'implementazione, è stata inclusa questa sezione nel `Piano di Progetto`.\
Dopo aver elencato i potenziali rischi, sono stati identificati una serie di passi da intraprendere nel caso in cui uno di essi si verifichi. Questa raccolta indica le soluzioni da applicare per limitare i danni.\
Secondo lo standard ISO/IEC 31000:2009, il processo di gestione dei rischi si articola in 5 fasi:
+ Identificazione dei rischi: consiste nel riconoscere le fonti di rischio, le aree di impatto, gli eventi (compresi i cambiamenti di circostanze), le cause e le conseguenze potenziali. Questo avverrà mediante un'analisi delle attività per generare un elenco completo dei rischi basato sugli eventi che potrebbero influenzare il raggiungimento degli obiettivi. Il team utilizzerà un'attività di Brainstorming per discutere di tutti gli ostacoli che potrebbero emergere durante il progetto.
+ Analisi dei rischi: implica lo sviluppo di una comprensione del rischio. Questa analisi contribuisce alla valutazione e alle decisioni sul trattamento dei rischi, identificando le strategie più adeguate.
+ Valutazione dei rischi: mira a prendere decisioni basate sui risultati dell'analisi dei rischi per determinare quali rischi trattare e stabilire le priorità di trattamento.
+ Trattamento dei rischi: dopo la valutazione, è importante decidere come affrontare i rischi, ad esempio mediante misure preventive, trasferimento del rischio tramite assicurazioni o l'adozione di misure di mitigazione.
+ Monitoraggio e revisione dei rischi: entrambe queste attività devono essere integrate nella pianificazione del processo di gestione del rischio e richiedono un controllo regolare.
\
I fattori fondamentali per identificare i rischi sono:
- Tipologia rappresenta la categoria di rischio (T: Tecnologici, O: Organizzativi, G: Membri del gruppo);
- Indice è un valore numerico incrementale che identifica univocamente il rischio per ogni Tipologia.
Per questo motivo si è deciso di adottare la seguente convenzione `R[Tipologia][Indice]`.

== Rischi Tecnologici
*RT1 - Inesperienza*
#risks((
 [Dato l'alto grado di specializzazione richiesto dal capitolato, alcuni membri del gruppo potrebbero non possedere le competenze necessarie inizialmente. Ciò potrebbe causare ritardi sia nella fase di progettazione che nello sviluppo, poiché la formazione sarà essenziale per acquisire le competenze richieste],
 [Alta],
 [Alta],
 [Il Responsabile del progetto terrà in considerazione le competenze specifiche di ciascun membro del gruppo durante l'assegnazione dei compiti],
 [I membri del gruppo che ritengono di non possedere le competenze necessarie per svolgere un compito specifico saranno affiancati da un membro più esperto del gruppo. Questo supporto consentirà la formazione necessaria attraverso l'istruzione diretta e la fornitura di documentazione rilevante per comprendere l'argomento in questione],
))

*RT2 - Problemi legati all'utilizzo della libreria esterna*
#risks((
  [Per lo sviluppo del progetto, il team ha scelto di adottare una libreria esterna per implementare lo standard JMAP. La presenza di malfunzionamenti o problematiche interne a questa libreria è al di fuori del controllo del team e potrebbe influire sulla velocità e sui costi del progetto],
  [Bassa],
  [Alta],
  [La presenza di problemi può essere identificata solo attraverso il test della libreria durante lo sviluppo del progetto o mediante il monitoraggio delle prestazioni durante il suo utilizzo],
  [Nel caso vengano identificati problemi legati al software o ai servizi di terze parti, i membri del team sono tenuti a segnalarli al Responsabile di progetto. Quest'ultimo dovrà prevedere, nel caso peggiore, la sostituzione della soluzione in uso con un'alternativa il più simile possibile al software adottato],
))

*RT3 - Perdita di informazioni*
#risks((
  [La perdita di informazioni quali le mail degli utenti rappresenta un rischio significativo per il progetto. Questo può accadere a seguito di guasti hardware, errori umani, attacchi informatici o malfunzionamenti del sistema di archiviazione delle mail],
  [Media],
  [Alta],
  [La perdita di mail può essere rilevata attraverso monitoraggi regolari del sistema di archiviazione e notifiche automatiche di errori o anomalie],
  [Nel caso in cui si verifichi una perdita di mail è necessario avere una fonte da cui poter ripristinare (copia di backup / replicazione)],
))

== Rischi Organizzativi

*RO1 - Imprecisioni nella pianificazione delle attività*
#risks((
  [La pianificazione imprecisa delle attività può derivare dalla mancata conoscenza dei requisiti, dalla sottostima/sovrastima delle risorse/tempo necessari o dalla scarsa esperienza dei membri del team],
  [Alta],
  [Alta],
  [Il confronto periodico con il `Piano di Progetto` e l'analisi della board su GitHub vengono utilizzati per monitorare lo stato di avanzamento],
  [In caso di difficoltà, il `Piano di Progetto` viene revisionato per adeguare le date delle attività in base al progresso. Se un membro segnala impossibilità di rispettare la scadenza, il Responsabile assegnerà più risorse o posticiperà la data.],
))

*RO2 - Elevati costi delle attività*
#risks((
  [La sottostima/sovrastima dei costi delle attività a causa dell'inesperienza del team può causare ritardi o spreco di tempo],
  [Media],
  [Alta],
  [Attraverso il cruscotto e confronto periodico con il `Piano di Progetto`, il Responsabile può monitorare lo stato di avanzamento del progetto],
  [In caso di cambiamenti non gravi, si cerca di implementare rapidamente quanto è rimasto aperto. Se significativo, si discute con il proponente per trovare un accordo su come affrontare i cambiamenti.],
))

*RO3 - Impegni personali e universitari*
#risks((
  [Gli impegni personali e universitari possono limitare la disponibilità temporale dei membri del team, causando ritardi nel progetto],
  [Media],
  [Media],
  [Attraverso la condivisione aperta dei periodi di limitata disponibilità e la revisione della pianificazione],
  [Il Responsabile rivede la suddivisione dei compiti e delle risorse o, in casi più gravi, sposta alcune scadenze se la pianificazione non tiene conto di questi periodi.],
))

== Rischi Comunicativi

*RC1 - Rischio di conflitti interni*
#risks((
  [I conflitti interni possono derivare da diverse opinioni sulla direzione del progetto, soluzioni o allocazione delle risorse],
  [Media],
  [Alta],
  [Attraverso il feedback dei membri del team o l'osservazione delle dinamiche del gruppo],
  [Il Responsabile interviene per gestire i conflitti, riassegna compiti se necessario e, se non si raggiunge un accordo, coinvolge i docenti.],
))

*RC2 - Problemi di comunicazione*
#risks((
  [Una comunicazione inefficace può causare ritardi e stress. La mancanza di contatto fisico può ostacolare lo sviluppo di uno spirito di squadra],
  [Media],
  [Alta],
  [Attraverso sondaggi, feedback e osservazione delle dinamiche del gruppo durante le riunioni],
  [Il Responsabile promuove una comunicazione attiva, organizza riunioni regolari e, in caso di problemi, indaga sul motivo e organizza riunioni tempestive per risolvere la situazione. Se necessario, incoraggia incontri in presenza.],
))