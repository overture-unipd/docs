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
    "0.1.0", "2023-11-30", p.furno, p.bettin, "Aggiunto il consuntivo del periodo I",
    "0.0.5", "2023-11-30", p.furno, p.bettin, "Aggiunto il preventivo del periodo I",
    "0.0.4", "2023-11-26", p.vedovato, p.bettin, "Aggiunta la pianificazione del periodo I",
    "0.0.3", "2023-11-25", p.vedovato, p.bettin, "Aggiunta della sezione 'Modello di sviluppo'",
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

== Preventivo iniziale
Il preventivo iniziale presentato in fase di candidatura è reperibile al seguente link: #link("https://github.com/overture-unipd/docs/blob/master/documents/candidatura/dichiarazione_impegni_v1.1.pdf")[Preventivo iniziale].\
All'interno di tale documento viene indicato che il preventivo calcolato del progetto equivale a _*12635€*_ e che il gruppo stima di terminare il prodotto entro e non oltre la data _*2024-03-15*_.

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
*RT1 - Inesperienza* <RT1>
#risks((
 [Dato l'alto grado di specializzazione richiesto dal capitolato, alcuni membri del gruppo potrebbero non possedere le competenze necessarie inizialmente. Ciò potrebbe causare ritardi sia nella fase di progettazione che nello sviluppo, poiché la formazione sarà essenziale per acquisire le competenze richieste],
 [Alta],
 [Alta],
 [Il Responsabile del progetto terrà in considerazione le competenze specifiche di ciascun membro del gruppo durante l'assegnazione dei compiti],
 [I membri del gruppo che ritengono di non possedere le competenze necessarie per svolgere un compito specifico saranno affiancati da un membro più esperto del gruppo. Questo supporto consentirà la formazione necessaria attraverso l'istruzione diretta e la fornitura di documentazione rilevante per comprendere l'argomento in questione],
))

*RT2 - Problemi legati all'utilizzo della libreria esterna* <RT2>
#risks((
  [Per lo sviluppo del progetto, il team ha scelto di adottare una libreria esterna per implementare lo standard JMAP. La presenza di malfunzionamenti o problematiche interne a questa libreria è al di fuori del controllo del team e potrebbe influire sulla velocità e sui costi del progetto],
  [Bassa],
  [Alta],
  [La presenza di problemi può essere identificata solo attraverso il test della libreria durante lo sviluppo del progetto o mediante il monitoraggio delle prestazioni durante il suo utilizzo],
  [Nel caso vengano identificati problemi legati al software o ai servizi di terze parti, i membri del team sono tenuti a segnalarli al Responsabile di progetto. Quest'ultimo dovrà prevedere, nel caso peggiore, la sostituzione della soluzione in uso con un'alternativa il più simile possibile al software adottato],
))

*RT3 - Perdita di informazioni* <RT3>
#risks((
  [La perdita di informazioni quali le mail degli utenti rappresenta un rischio significativo per il progetto. Questo può accadere a seguito di guasti hardware, errori umani, attacchi informatici o malfunzionamenti del sistema di archiviazione delle mail],
  [Media],
  [Alta],
  [La perdita di mail può essere rilevata attraverso monitoraggi regolari del sistema di archiviazione e notifiche automatiche di errori o anomalie],
  [Nel caso in cui si verifichi una perdita di mail è necessario avere una fonte da cui poter ripristinare (copia di backup / replicazione)],
))

== Rischi Organizzativi

*RO1 - Imprecisioni nella pianificazione delle attività* <RO1>
#risks(( 
  [La pianificazione imprecisa delle attività può derivare dalla mancata conoscenza dei requisiti, dalla sottostima/sovrastima delle risorse/tempo necessari o dalla scarsa esperienza dei membri del team],
  [Alta],
  [Alta],
  [Il confronto periodico con il `Piano di Progetto` e l'analisi della board su GitHub vengono utilizzati per monitorare lo stato di avanzamento],
  [In caso di difficoltà, il `Piano di Progetto` viene revisionato per adeguare le date delle attività in base al progresso. Se un membro segnala impossibilità di rispettare la scadenza, il Responsabile assegnerà più risorse o posticiperà la data.],
))

*RO2 - Elevati costi delle attività* <RO2>
#risks((
  [La sottostima/sovrastima dei costi delle attività a causa dell'inesperienza del team può causare ritardi o spreco di tempo],
  [Media],
  [Alta],
  [Attraverso il cruscotto e confronto periodico con il `Piano di Progetto`, il Responsabile può monitorare lo stato di avanzamento del progetto],
  [In caso di cambiamenti non gravi, si cerca di implementare rapidamente quanto è rimasto aperto. Se significativo, si discute con il proponente per trovare un accordo su come affrontare i cambiamenti.],
))

*RO3 - Impegni personali e universitari* <RO3>
#risks((
  [Gli impegni personali e universitari possono limitare la disponibilità temporale dei membri del team, causando ritardi nel progetto],
  [Media],
  [Media],
  [Attraverso la condivisione aperta dei periodi di limitata disponibilità e la revisione della pianificazione],
  [Il Responsabile rivede la suddivisione dei compiti e delle risorse o, in casi più gravi, sposta alcune scadenze se la pianificazione non tiene conto di questi periodi.],
))

== Rischi Comunicativi

*RC1 - Rischio di conflitti interni* <RC1>
#risks((
  [I conflitti interni possono derivare da diverse opinioni sulla direzione del progetto, soluzioni o allocazione delle risorse],
  [Media],
  [Alta],
  [Attraverso il feedback dei membri del team o l'osservazione delle dinamiche del gruppo],
  [Il Responsabile interviene per gestire i conflitti, riassegna compiti se necessario e, se non si raggiunge un accordo, coinvolge i docenti.],
))

*RC2 - Problemi di comunicazione* <RC2>
#risks((
  [Una comunicazione inefficace può causare ritardi e stress. La mancanza di contatto fisico può ostacolare lo sviluppo di uno spirito di squadra],
  [Media],
  [Alta],
  [Attraverso sondaggi, feedback e osservazione delle dinamiche del gruppo durante le riunioni],
  [Il Responsabile promuove una comunicazione attiva, organizza riunioni regolari e, in caso di problemi, indaga sul motivo e organizza riunioni tempestive per risolvere la situazione. Se necessario, incoraggia incontri in presenza.],
))

#pagebreak()
= *Modello di sviluppo*
Dopo varie discussioni su quale fosse il miglior modello di sviluppo da adottare per la realizzazione del progetto, il gruppo ha optato per il modello Agile. Questo approccio alla gestione di progetti software prevede la suddivisione del progetto in periodi e si basa sui principi fondamentali di flessibilità, collaborazione e risposta rapida ai cambiamenti. L'Agile si contrappone dunque ai modelli tradizionali di sviluppo software, come il modello a cascata, il quale prevede fasi ben definite e sequenziali, andando a preferire invece miglioramenti continui e paralleli che seguono un ciclo di pianificazione, esecuzione e valutazione.\
Nel nostro caso si è scelto di adottare periodi di durata complessiva di circa due settimane all'interno dei quali, sebbene il Responsabile dia la priorità al lavoro da consegnare, il team assume il comando nel decidere come verrà svolto il lavoro, organizzandosi in modo autonomo per la gestione di attività e assegnazioni granulari che rispettino i ruoli di ciascuno dei membri. \
Questo modello di sviluppo è prevalso sugli altri per via dei seguenti grandi vantaggi che esso comporta:
- *trasparenza*: il modello Agile permette di poter sempre dimostrare agli stakeholder quanto è stato fatto, verificando l’avanzamento tramite progresso reale;
- *adattabilità estrema al cambiamento*: il modello Agile mira a gestire ed adattarsi ai cambiamenti nei requisiti del progetto in modo più efficiente rispetto ai modelli tradizionali. La sua natura iterativa consente una risposta rapida a nuovi requisiti o a eventi imprevisti;
- *ottima gestione dei rischi*: data la breve durata dei periodi, i problemi che possono essere riscontrati all'interno di essi saranno individuati velocemente ed inoltre avranno una dimensione ragionevole, permettendo dunque una risoluzione tempestiva e riducendo il rischio di fallimento del progetto;
- *soddisfazione degli stakeholder*: il modello Agile promuove il coinvolgimento continuo degli stakeholder durante tutto il processo di sviluppo. Ciò garantisce che il prodotto finale soddisfi realmente le esigenze e le aspettative di chi l'ha commissionato, aumentandone così la soddisfazione complessiva;
- *soddisfazione del team*: il modello Agile incoraggia l'auto-organizzazione dei membri del team e il coinvolgimento attivo in tutte le fasi del processo di sviluppo. Ciò porta a un maggiore senso di responsabilità e motivazione. Inoltre, consegnando risultati tangibili in periodi di tempo brevi, questo modello di sviluppo contribuisce anche a mantenere elevato il morale dei membri, i quali vedono il proprio lavoro tradursi in risultati concreti in tempi rapidi.

#pagebreak()

= *Periodi*
Per ogni periodo si riportano di seguito le seguenti informazioni:
- la pianificazione delle attività da svolgere al suo interno (avanzamento atteso), con tanto di potenziali rischi;
- il tempo stimato per poter completare tutte le attività previste;
- un confronto fra il lavoro svolto (avanzamento conseguito) e quello preventivato, con annessa analisi dei costi;
- i rischi effettivamente occorsi, valutandone il loro impatto e la loro mitigazione;
- una retrospettiva di periodo per capire cosa e come migliorare in futuro.
I periodi vengono suddivisi in 3 grandi insiemi corrispondenti alle revisioni di avanzamento del progetto:
- RTB (Requirements and Technology Baseline);
- PB (Product Baseline);
- CA (Customer Acceptance).
Alla fine di ogni collettivo si trovano una revisione del calendario rimanente e un'aggiornamento della stima dei costi finali, oltre ad un riepilogo del lavoro svolto.

== RTB

=== Periodo I
Inizio: 2023-11-06\
Fine: 2023-11-22\

==== Pianificazione
Questo periodo nasce contestualmente all'aggiudicazione dell'appalto da parte del gruppo, di conseguenza la prima azione pianificata è la risoluzione dei problemi segnalati in fase di candidatura. Fatto ciò, in queste due settimane si prevede di definire la struttura di base di ogni documento necessario e di andare ad automatizzare più operazioni possibili. Inoltre, parallelamente allo sviluppo della documentazione, si prevede anche uno studio approfondito del dominio del problema del capitolato e delle tecnologie coinvolte. \
Le attività previste durante questo periodo sono quindi le seguenti:
- Aggiungere il Registro delle Modifiche ai documenti già prodotti;
- Aggiungere la versione come metadato dei documenti;
- Arricchire le `Norme di Progetto` consolidando il WoW del gruppo;
- Definire una struttura di base per il `Glossario` ed aggiungere i primi termini individuati al suo interno;
- Aggiornare il `Piano di Progetto` definendone la struttura di base;
- Definire una struttura di base per il `Piano di Qualifica`;
- Definire una struttura di base per il documento `Analisi dei requisiti` ed aggiungere i primi use case individuati dagli Analisiti al suo interno;
- Studiare approfonditamente la libreria java iNPUTmice/jmap per l’implementazione del protocollo JMAP ed altre alternative per la realizzazione del prodotto. 

===== Rischi attesi
I rischi che ci aspettiamo di correre in questo periodo sono i seguenti: 
- #link(<RT1>)[*RT1 - Inesperienza*];
- #link(<RO1>)[*RO1 - Imprecisioni nella pianificazione delle attività*];
- #link(<RO2>)[*RO2 - Elevati costi delle attività*];
- #link(<RC1>)[*RC1 - Rischio di conflitti interni*];
- #link(<RC2>)[*RC2 - Problemi di comunicazione*];
Questo perchè, essendo all'inizio del progetto, siamo ancora incerti su molti aspetti di quest'ultimo, ci stiamo attualmente organizzando e dobbiamo apprendere ancora molto, dunque la probabilità di incorrere in qualche problema tra quelli riportati è abbastanza elevata.

==== Preventivo
Ruoli coinvolti: Responsabile, Amministratore, Verificatore, Analista, Progettista.

#period((
  (0, 0, 8, 0, 0, 0),
  (0, 0, 0, 6, 0, 0),
  (2, 0, 0, 0, 4, 0),
  (0, 0, 0, 5, 2, 0),
  (0, 5, 0, 1, 0, 0),
  (0, 0, 0, 5, 2, 0),
  (6, 0, 0, 0, 1, 0),
  ),
)


==== Consuntivo
Le attività previste sono tutte state svolte con successo. \
Come si può notare dal confronto tra preventivo e consuntivo:
- Amministratori, Verificatori e Analisti hanno richiesto *più* ore;
- Responsabili e Progettisti hanno richiesto *meno* ore.

===== Prospetto orario
#consuntivo(
  (
    ("0", "0","9 "+neg("+1"), "0", "0", "0", "9"),
    ("0", "0","0", "6", "0", "0", "6"),
    ("2", "0","0", "0", "5 "+neg("+1"), "0", "7"),
    ("0", "0","0", "5", "1 "+pos("-1"), "0","6"),
    ("0", "5","0", "2 "+neg("+1"), "0", "0","7"),
    ("0", "0","0", "5", "1 "+pos("-1"), "0","6"),
    ("5 "+pos("-1"), "1 "+neg("+1"),"0", "0", "1", "0","7"),
    ("7", "6","9", "18", "8", "0", "48")
  )
)
===== Prospetto economico
#costi(
  (
    ("7 "+pos("-1"), "240€", pos("-30€")),
    ("6 "+neg("+1"), "100€",neg("+20€")),
    ("9 "+neg("+1"), "120€",neg("+15€")),
    ("18 "+neg("+1"), "425€",neg("+25€")),
    ("8 "+pos("-1"), "225€",pos("-25€")),
    ("-", "-","-"),
    ("47", "1110€","-"),
    ("48 "+neg("+1"), "1115€",neg("+5€"))
  )
)

===== Rischi occorsi, impatto e loro mitigazione
In questo primo periodo il gruppo ha riscontrato dei leggeri rallentamenti nelle fasi iniziali dei lavori. In particolare, si è proceduto alla stesura in parallelo di diversi documenti senza aver ben definito le regole stilistiche per il testo all'interno delle `Norme di Progetto`; questo problema dovuto ad inesperienza e problemi di comunicazione, che rappresentano parte dei rischi attesi dal gruppo, ha richiesto del lavoro extra per la redazione e la verifica della documentazione, ma è stato prontamente mitigato una volta individuato. \
Anche implementare le actions di GitHub ha richiesto ulteriore sforzo rispetto quanto preventivato: inizialmente non era chiaro ai Progettisti come e cosa automatizzare. Quest'ultimi quindi si sono formati e hanno successivamente provveduto a realizzare alcune automazioni relative alla build dei documenti, specialmente per quanto riguarda il versionamento. \
In conclusione i rischi occorsi non hanno avuto un grosso impatto sul progetto e sono stati prontamente mitigati tramite discussione costruttiva mediante i membri del gruppo. 


===== Retrospettiva
Questo primo periodo di lavoro ci ha ribadito l'importanza delle best practice comuni che ogni membro del gruppo deve seguire per tutta la durata del progetto: per questo motivo verrà data la precedenza alla terminazione di una prima versione stabile delle `Norme di Progetto`, con la previsione di ultimarla nella prima settimana del Periodo II. \
Lo studio condiviso delle librerie JMAP tra i diversi incaricati ha velocizzato l'apprendimento dei contenuti, risparmiando delle ore rispetto quanto preventivato. Questo metodo verrà sicuramente riproposto dal gruppo per lo studio di altre tecnologie. \
L'approccio adottato dai Responsabili per assegnare le attività si è rivelato corretto: le task sono state distribuite in modo equo ai diversi componenti del gruppo che hanno impiegato un numero congruo di ore per il loro svolgimento e hanno ultimato il lavoro entro i tempi stabiliti. \
Infine va migliorata la stima tramite preventivo del tempo necessario per poter completare tutte le attività, la quale è risultata essere leggermente imprecisa.