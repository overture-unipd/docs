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
    "1.2.0", "2024-02-22", p.bettin, p.bonavigo, "Aggiunti il consuntivo, la retrospettiva e l'avanzamento raggiunto relativi al periodo VII",
    "1.1.2", "2024-02-11", p.bonavigo, p.fabbian, "Ristrutturazione dei contenuti per risolvere le problematiche evidenziate dalla revisione RTB",
    "1.1.1", "2024-02-10", p.bonavigo, p.bettin, "Aggiunto il preventivo e la pianificazione del periodo VII",
    "1.1.0", "2024-02-09", p.bonavigo, p.bettin, "Aggiunto il consuntivo e la retrospettiva del periodo VI (periodo in attesa del passaggio della RTB)",
    "1.0.0", "2024-01-14" , p.furno, p.bonavigo, "Approvazione per RTB",
    "0.5.2", "2024-01-14", p.bonavigo, p.furno, "Aggiunta la pianificazione in attesa del passaggio della RTB",
    "0.5.1", "2024-01-14", p.bonavigo, p.furno, "Aggiunto il sommario finale per la RTB",
    "0.5.0", "2024-01-14", p.fabbian, p.bonavigo, "Aggiunto il consuntivo e la retrospettiva del periodo V",
    "0.4.1", "2024-01-10", p.bonavigo, p.furno, "Aggiunto il preventivo e la pianificazione del periodo V",
    "0.4.0", "2024-01-09", p.bettin, p.bonavigo, "Aggiunto il consuntivo e la retrospettiva del periodo IV",
    "0.3.2", "2024-01-03", p.amadori, p.bulychov, "Aggiunto il preventivo del periodo IV",
    "0.3.1", "2023-12-28", p.amadori, p.bulychov, "Aggiunta la pianificazione del periodo IV",
    "0.3.0", "2023-12-22", p.amadori, p.fabbian, "Aggiunto il consuntivo e la retrospettiva del periodo III",
    "0.2.2", "2023-12-16", p.bulychov, p.furno, "Aggiunto il preventivo del periodo III",
    "0.2.1", "2023-12-15", p.bulychov, p.furno, "Aggiunta la pianificazione del periodo III",
    "0.2.0", "2023-12-14", p.bulychov, p.bonavigo, "Aggiunto il consuntivo e la retrospettiva del periodo II",
    "0.1.2", "2023-12-07", p.vedovato, p.bettin, "Aggiunto il preventivo del periodo II",
    "0.1.1", "2023-12-07", p.fabbian, p.vedovato, "Aggiunta la pianificazione del periodo II",
    "0.1.0", "2023-11-30", p.furno, p.vedovato, "Aggiunto il consuntivo e la retrospettiva del periodo I",
    "0.0.5", "2023-11-30", p.furno, p.bettin, "Aggiunto il preventivo del periodo I",
    "0.0.4", "2023-11-26", p.vedovato, p.bettin, "Aggiunta la pianificazione del periodo I",
    "0.0.3", "2023-11-25", p.vedovato, p.bettin, "Aggiunta della sezione 'Modello di sviluppo'",
    "0.0.2", "2023-11-19", p.fabbian, p.amadori, "Aggiunta della sezione 'Analisi dei Rischi'",
    "0.0.1", "2023-11-15", p.bulychov, p.amadori, "Struttura di base ed introduzione",
  ),
  show_images_list: true,
  show_tables_list: true
)

\

= *Introduzione*
== Scopo del documento
Questo documento ha l'obiettivo di delineare la pianificazione e la gestione delle attività necessarie per la realizzazione del progetto. Vengono approfonditi aspetti chiave come l'`Analisi dei Rischi`, il modello di sviluppo adottato, la pianificazione delle attività, la suddivisione dei ruoli, nonché stime dei costi e delle risorse necessarie.

== Scopo del prodotto
Lo scopo principale del prodotto é quello di permettere all'azienda #glossary("proponente") di poter valutare se ha senso investire tempo e risorse per implementare il #glossary("protocollo") #glossary("JMAP") nel loro prodotto di punta chiamato #glossary("Carbonio"), una soluzione di collaborazione online che ruota attorno alla gestione delle email. JMAP è difatti un protocollo di comunicazione appositamente progettato per semplificare l'interazione tra client e server nell'ambito delle applicazioni di posta elettronica.\
Attualmente, Carbonio fa affidamento su protocolli standard come IMAP, POP e #glossary("Exchange Active Sync"). Di conseguenza, l'implementazione di JMAP potrebbe offrire potenzialmente un aumento di #glossary("funzionalità") e #glossary("efficienza") a un costo inferiore.

== Glossario
Per evitare ambiguitá o incomprensioni riguardanti la terminologia usata nel documento, é stato deciso di adottare un glossario in cui vengono riportate le varie definizioni. In questa maniera in esso verranno riportati tutti i termini specifici del dominio d'uso con relativi significati.
\
La presenza di un termine all'interno del `Glossario` viene indicata applicando #glossary("questo stile").

== Riferimenti
=== Riferimenti normativi
- `Norme di Progetto v1.0.0`: \ https://overture-unipd.github.io/docs/rtb/interni/norme_di_progetto_v1.0.0.pdf 
- *PD2 - Regolamento del progetto didattico* \
  https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/PD2.pdf
- *Capitolato d'appalto C8*: JMAP, il nuovo protocollo standard per la comunicazione email \
  https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C8.pdf

=== Riferimenti informativi
- *T2 - Processi di ciclo di vita del software* \
  https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T2.pdf
- *T4 - Gestione di progetto* \
  https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T4.pdf
- `Glossario v1.0.0`: \ https://overture-unipd.github.io/docs/rtb/interni/glossario_v1.0.0.pdf 

== Preventivo iniziale
Il preventivo iniziale presentato in fase di candidatura è reperibile al seguente link: #link("https://github.com/overture-unipd/docs/blob/master/documents/candidatura/dichiarazione_impegni_v1.1.pdf")[Preventivo iniziale].\
All'interno di tale documento viene indicato che il preventivo calcolato del progetto equivale a _*12635€*_ e che il gruppo stima di terminare il prodotto entro e non oltre la data _*2024-03-15*_.

#pagebreak()

= *Analisi dei rischi*
Durante lo sviluppo del progetto è essenziale mitigare gli impatti delle difficoltà riscontrate attraverso una corretta analisi dei rischi. Al fine di gestire efficacemente le problematiche derivanti da diverse condizioni intervenute durante l'implementazione, è stata inclusa questa sezione nel `Piano di Progetto v1.0.0`.\
Dopo aver elencato i potenziali rischi, sono stati identificati una serie di passi da intraprendere nel caso in cui uno di essi si verifichi. Questa raccolta indica le soluzioni da applicare per limitare i danni.\
Secondo lo standard #glossary("ISO")/#glossary("IEC") 31000:2009, il #glossary("processo") di gestione dei rischi si articola in 5 fasi:
+ Identificazione dei rischi: consiste nel riconoscere le fonti di #glossary("rischio"), le aree di impatto, gli eventi (compresi i cambiamenti di circostanze), le cause e le conseguenze potenziali. Questo avverrà mediante un'analisi delle attività per generare un elenco completo dei rischi basato sugli eventi che potrebbero influenzare il raggiungimento degli obiettivi. Il team utilizzerà un'attività di Brainstorming per discutere di tutti gli ostacoli che potrebbero emergere durante il progetto.
+ Analisi dei rischi: implica lo sviluppo di una comprensione del rischio. Questa analisi contribuisce alla valutazione e alle decisioni sul trattamento dei rischi, identificando le strategie più adeguate.
+ Valutazione dei rischi: mira a prendere decisioni basate sui risultati dell'analisi dei rischi per determinare quali rischi trattare e stabilire le priorità di trattamento.
+ Trattamento dei rischi: dopo la valutazione, è importante decidere come affrontare i rischi, ad esempio mediante misure preventive, trasferimento del rischio tramite assicurazioni o l'adozione di misure di mitigazione.
+ Monitoraggio e revisione dei rischi: entrambe queste attività devono essere integrate nella pianificazione del processo di gestione del rischio e richiedono un controllo regolare.

I fattori fondamentali per identificare i rischi sono:
- Tipologia rappresenta la categoria di rischio (T: Tecnologici, O: Organizzativi, G: Membri del gruppo);
- Indice è un valore numerico incrementale che identifica univocamente il rischio per ogni Tipologia.
Per questo motivo si è deciso di adottare la seguente convenzione `R[Tipologia][Indice]`.

== Rischi tecnologici
*RT1 - Inesperienza* <RT1>
#figure(risks((
 [Dato l'alto grado di specializzazione richiesto dal #glossary("capitolato"), alcuni membri del gruppo potrebbero non possedere le competenze necessarie inizialmente. Ciò potrebbe causare ritardi sia nella fase di progettazione che nello sviluppo, poiché la formazione sarà essenziale per acquisire le competenze richieste],
 [Alta],
 [Alta],
 [Il Responsabile del progetto terrà in considerazione le competenze specifiche di ciascun membro del gruppo durante l'assegnazione dei compiti],
 [I membri del gruppo che ritengono di non possedere le competenze necessarie per svolgere un compito specifico saranno affiancati da un membro più esperto del gruppo. Questo supporto consentirà la formazione necessaria attraverso l'istruzione diretta e la fornitura di documentazione rilevante per comprendere l'argomento in questione],
)),caption: "Rischio tecnologico \"Inesperienza\"")

*RT2 - Problemi legati all'utilizzo della libreria esterna* <RT2>
#figure(risks((
  [Per lo sviluppo del progetto, il team ha scelto di adottare una libreria esterna per implementare lo standard JMAP. La presenza di malfunzionamenti o problematiche interne a questa libreria è al di fuori del controllo del team e potrebbe influire sulla velocità e sui costi del progetto],
  [Bassa],
  [Alta],
  [La presenza di problemi può essere identificata solo attraverso il test della libreria durante lo sviluppo del progetto o mediante il monitoraggio delle prestazioni durante il suo utilizzo],
  [Nel caso vengano identificati problemi legati al software o ai servizi di terze parti, i membri del team sono tenuti a segnalarli al Responsabile di progetto. Quest'ultimo dovrà prevedere, nel caso peggiore, la sostituzione della soluzione in uso con un'alternativa il più simile possibile al software adottato],
)),caption: "Rischio tecnologico \"Problemi legati all'utilizzo della libreria esterna\"")

*RT3 - Perdita di informazioni* <RT3>
#figure(risks((
  [La perdita di informazioni quali le mail degli utenti rappresenta un rischio significativo per il progetto. Questo può accadere a seguito di guasti hardware, errori umani, attacchi informatici o malfunzionamenti del sistema di archiviazione delle mail],
  [Media],
  [Alta],
  [La perdita di mail può essere rilevata attraverso monitoraggi regolari del sistema di archiviazione e notifiche automatiche di errori o anomalie],
  [Nel caso in cui si verifichi una perdita di mail è necessario avere una fonte da cui poter ripristinare (copia di backup / replicazione)],
)),caption: "Rischio tecnologico \"Perdita di informazioni\"")

== Rischi organizzativi

*RO1 - Imprecisioni nella pianificazione delle attività* <RO1>
#figure(risks(( 
  [La pianificazione imprecisa delle attività può derivare dalla mancata conoscenza dei requisiti, dalla sottostima/sovrastima delle risorse/tempo necessari o dalla scarsa esperienza dei membri del team],
  [Alta],
  [Alta],
  [Il confronto periodico con il `Piano di Progetto` e l'analisi della #glossary("board") su #glossary("GitHub") vengono utilizzati per monitorare lo stato di avanzamento],
  [In caso di difficoltà, il `Piano di Progetto` viene revisionato per adeguare le date delle attività in base al progresso. Se un membro segnala impossibilità di rispettare la scadenza, il Responsabile assegnerà più risorse o posticiperà la data.],
)),caption: "Rischio organizzativo \"Imprecisioni nella pianificazione delle attività\"")

*RO2 - Elevati costi delle attività* <RO2>
#figure(risks((
  [La sottostima/sovrastima dei costi delle attività a causa dell'inesperienza del team può causare ritardi o spreco di tempo],
  [Media],
  [Alta],
  [Attraverso il #glossary("cruscotto") e confronto periodico con il `Piano di Progetto`, il Responsabile può monitorare lo stato di avanzamento del progetto],
  [In caso di cambiamenti non gravi, si cerca di implementare rapidamente quanto è rimasto aperto. Se significativo, si discute con il proponente per trovare un accordo su come affrontare i cambiamenti.],
)),caption: "Rischio organizzativo \"Elevati costi delle attività\"")

*RO3 - Impegni personali e universitari* <RO3>
#figure(risks((
  [Gli impegni personali e universitari possono limitare la disponibilità temporale dei membri del team, causando ritardi nel progetto],
  [Media],
  [Media],
  [Attraverso la condivisione aperta dei periodi di limitata disponibilità e la revisione della pianificazione],
  [Il Responsabile rivede la suddivisione dei compiti e delle risorse o, in casi più gravi, sposta alcune scadenze se la pianificazione non tiene conto di questi periodi.],
)),caption: "Rischio organizzativo \"Impegni personali e universitari\"")

== Rischi comunicativi

*RC1 - Rischio di conflitti interni* <RC1>
#figure(risks((
  [I conflitti interni possono derivare da diverse opinioni sulla direzione del progetto, soluzioni o allocazione delle risorse],
  [Media],
  [Alta],
  [Attraverso il feedback dei membri del team o l'osservazione delle dinamiche del gruppo],
  [Il Responsabile interviene per gestire i conflitti, riassegna compiti se necessario e, se non si raggiunge un accordo, coinvolge i docenti.],
)),caption: "Rischio comunicativo \"Rischio di conflitti interni\"")

*RC2 - Problemi di comunicazione* <RC2>
#figure(risks((
  [Una comunicazione inefficace può causare ritardi e stress. La mancanza di contatto fisico può ostacolare lo sviluppo di uno spirito di squadra],
  [Media],
  [Alta],
  [Attraverso sondaggi, feedback e osservazione delle dinamiche del gruppo durante le riunioni],
  [Il Responsabile promuove una comunicazione attiva, organizza riunioni regolari e, in caso di problemi, indaga sul motivo e organizza riunioni tempestive per risolvere la situazione. Se necessario, incoraggia incontri in presenza.],
)),caption: "Rischio comunicativo \"Problemi di comunicazione\"")

#pagebreak()
= *Modello di sviluppo*
Dopo varie discussioni su quale fosse il miglior modello di sviluppo da adottare per la realizzazione del progetto, il gruppo ha optato per il modello Agile. Questo approccio alla gestione di progetti software prevede la suddivisione del progetto in periodi e si basa sui principi fondamentali di flessibilità, collaborazione e risposta rapida ai cambiamenti. L'Agile si contrappone dunque ai modelli tradizionali di sviluppo software, come il modello a cascata, il quale prevede fasi ben definite e sequenziali, andando a preferire invece miglioramenti continui e paralleli che seguono un ciclo di pianificazione, esecuzione e valutazione.\
Nel nostro caso si è scelto di adottare periodi di durata complessiva di circa due settimane all'interno dei quali, sebbene il Responsabile dia la priorità al lavoro da consegnare, il team assume il comando nel decidere come verrà svolto il lavoro, organizzandosi in modo autonomo per la gestione di attività e assegnazioni granulari che rispettino i ruoli di ciascuno dei membri. \
Questo modello di sviluppo è prevalso sugli altri per via dei seguenti grandi vantaggi che esso comporta:
- *Trasparenza*: il modello Agile permette di poter sempre dimostrare agli #glossary("stakeholder") quanto è stato fatto, verificando l’avanzamento tramite progresso reale;
- *Adattabilità estrema al cambiamento*: il modello Agile mira a gestire ed adattarsi ai cambiamenti nei requisiti del progetto in modo più efficiente rispetto ai modelli tradizionali. La sua natura iterativa consente una risposta rapida a nuovi requisiti o a eventi imprevisti;
- *Ottima gestione dei rischi*: data la breve durata dei periodi, i problemi che possono essere riscontrati all'interno di essi saranno individuati velocemente ed inoltre avranno una dimensione ragionevole, permettendo dunque una risoluzione tempestiva e riducendo il rischio di fallimento del progetto;
- *Soddisfazione degli stakeholder*: il modello Agile promuove il coinvolgimento continuo degli stakeholder durante tutto il processo di sviluppo. Ciò garantisce che il prodotto finale soddisfi realmente le esigenze e le aspettative di chi l'ha commissionato, aumentandone così la soddisfazione complessiva;
- *Soddisfazione del team*: il modello Agile incoraggia l'auto-organizzazione dei membri del team e il coinvolgimento attivo in tutte le fasi del processo di sviluppo. Ciò porta a un maggiore senso di responsabilità e motivazione. Inoltre, consegnando risultati tangibili in periodi di tempo brevi, questo modello di sviluppo contribuisce anche a mantenere elevato il morale dei membri, i quali vedono il proprio lavoro tradursi in risultati concreti in tempi rapidi.

#pagebreak()

= *Periodi*
Per ogni periodo si riportano di seguito le seguenti informazioni:
- Data di inizio, data di fine prevista, data di fine attuale ed eventuali giorni di ritardo;
- Pianificazione delle attività da svolgere al suo interno (avanzamento atteso), con tanto di potenziali rischi;
- Tempo stimato per poter completare tutte le attività previste (preventivo);
- Confronto fra il lavoro svolto (avanzamento conseguito) e quello preventivato, con annessa analisi dei costi;
- Rischi effettivamente occorsi, valutandone il loro impatto e la loro mitigazione;
- Retrospettiva di periodo per capire cosa e come migliorare in futuro e cosa invece mantenere;
- Punto di avanzamento raggiunto e prospettive di completamento.
I periodi vengono suddivisi in 3 grandi insiemi corrispondenti alle revisioni di avanzamento del progetto:
- RTB (#glossary("Requirements and Technology Baseline"));
- PB (Product #glossary("Baseline"));
- CA (Customer Acceptance).
Alla fine di ogni collettivo si trovano una revisione del calendario rimanente e un'aggiornamento della stima dei costi finali, oltre ad un riepilogo del lavoro svolto.

== RTB

=== Periodo I
Inizio: 2023-11-06\
Fine prevista: 2023-11-22\
Fine attuale: 2023-11-22\
Giorni di ritardo: #pos("0")

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


#period(
  (
    (0, 0, 8, 0, 0, 0),
    (0, 0, 0, 6, 0, 0),
    (2, 0, 0, 0, 4, 0),
    (0, 0, 0, 5, 2, 0),
    (0, 5, 0, 1, 0, 0),
    (0, 0, 0, 5, 2, 0),
    (6, 0, 0, 0, 1, 0),
    ),
  (2, 2, 2),
  "I"
)

==== Consuntivo
Le attività previste sono tutte state svolte con successo. \
Come si può notare dal confronto tra preventivo e #glossary("consuntivo"):
- Amministratori, Verificatori e Analisti hanno richiesto *più* ore;
- Responsabili e Progettisti hanno richiesto *meno* ore.

===== Prospetto orario
#figure(consuntivo(
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
), caption: [Impegno orario effettivo per ruolo di ciascun membro nel periodo I rispetto le ore preventivate.])
===== Prospetto economico
#figure(costi(
  (
    ("7 "+pos("-1"), "210€", pos("-30€")),
    ("6 "+neg("+1"), "120€",neg("+20€")),
    ("9 "+neg("+1"), "135€",neg("+15€")),
    ("18 "+neg("+1"), "450€",neg("+25€")),
    ("8 "+pos("-1"), "200€",pos("-25€")),
    ("-", "-","-"),
    ("47", "1110€","-"),
    ("48 "+neg("+1"), "1115€",neg("+5€"))
  )
), caption: [Aggiornamenti economici del progetto al termine del periodo I, riflettendo le variazioni tra preventivo e ore effettivamente lavorate.])

===== Rischi occorsi, impatto e loro mitigazione
In questo primo periodo il gruppo ha riscontrato dei leggeri rallentamenti nelle fasi iniziali dei lavori. In particolare, si è proceduto alla stesura in parallelo di diversi documenti senza aver ben definito le regole stilistiche per il testo all'interno delle `Norme di Progetto`; questo problema dovuto ad inesperienza e problemi di comunicazione, che rappresentano parte dei rischi attesi dal gruppo, ha richiesto del lavoro extra per la redazione e la verifica della documentazione, ma è stato prontamente mitigato una volta individuato. \
Anche implementare le #glossary("actions") di GitHub ha richiesto ulteriore sforzo rispetto quanto preventivato: inizialmente non era chiaro ai Progettisti come e cosa automatizzare. Quest'ultimi quindi si sono formati e hanno successivamente provveduto a realizzare alcune automazioni relative alla build dei documenti, specialmente per quanto riguarda il #glossary("versionamento"). \
In conclusione i rischi occorsi non hanno avuto un grosso impatto sul progetto e sono stati prontamente mitigati tramite discussione costruttiva mediante i membri del gruppo. 


==== Retrospettiva
Questo primo periodo di lavoro ci ha ribadito l'importanza delle #glossary("best practice") comuni che ogni membro del gruppo deve seguire per tutta la durata del progetto: per questo motivo verrà data la precedenza alla terminazione di una prima versione stabile delle `Norme di Progetto`, con la previsione di ultimarla nella prima settimana del Periodo II. \
Lo studio condiviso delle librerie JMAP tra i diversi incaricati ha velocizzato l'apprendimento dei contenuti, risparmiando delle ore rispetto quanto preventivato. Questo metodo verrà sicuramente riproposto dal gruppo per lo studio di altre tecnologie. \
L'approccio adottato dai Responsabili per assegnare le attività si è rivelato corretto: le task sono state distribuite in modo equo ai diversi componenti del gruppo che hanno impiegato un numero congruo di ore per il loro svolgimento e hanno ultimato il lavoro entro i tempi stabiliti. \
Infine va migliorata la stima tramite preventivo del tempo necessario per poter completare tutte le attività, la quale è risultata essere leggermente imprecisa.

==== Punto di avanzamento raggiunto e prospettive di completamento
In questo primo periodo abbiamo gettato le basi per il progetto. Il gruppo ha risolto con successo i problemi rilevati nella fase di candidatura e definito la struttura di base dei documenti necessari. Inoltre le operazioni sono state automatizzate per migliorare l'efficienza, mentre è stato svolto uno studio approfondito del dominio del problema e delle tecnologie coinvolte. \
Il nuovo preventivo a finire aumenta rispetto alla stima iniziale, ammontando a 12.700€, ma la data di consegna del prodotto resta al momento confermata per il 2024-03-15.
#progress(1.59,"I")

=== Periodo II
Inizio: 2023-11-22\
Fine prevista: 2023-12-06\
Fine attuale: 2023-12-07\
Giorni di ritardo: #neg("+1")

==== Pianificazione
Nel corso del secondo periodo ci si propone di proseguire lo sviluppo della documentazione, con particolare enfasi sull'`Analisi dei Requisiti`, al fine di identificare i casi d'uso fondamentali. Per garantire un dialogo attivo con l'azienda proponente e assicurare una corretta comprensione dei casi d'uso sarà fondamentale organizzare almeno un incontro telematico e comunicare frequentemente anche per via informale tramite #glossary("Discord"). In questa maniera otteremo numerosi feedback, fondamentali per un lavoro accurato e professionale.\
Considerando il progresso compiuto nelle `Norme di Progetto` durante il primo periodo, l'attenzione sarà ora rivolta soprattutto verso il `Piano di Progetto`, la cui struttura di base è stata precedentemente definita. L'obiettivo sarà quello di consolidare ulteriormente il documento, riflettendo sui dettagli emersi durante lo sviluppo iniziale ed aggiungendo nuove informazioni.\
In merito alle tecnologie esaminate nella fase precedente, si intende identificare quelle da adottare per il successivo sviluppo del progetto. Questa fase di valutazione punta a selezionare con attenzione le tecnologie più adatte alle esigenze specifiche del capitolato.\
Infine, prevediamo di dedicare del tempo allo sviluppo simultaneo di diverse versioni di #glossary("Proof of Concept") (PoC). Questa scelta ci permetterà di affrontare il problema da varie prospettive, fornendo così molteplici approcci per lo sviluppo. Ciò contribuirà a ottenere una visione tangibile del progetto e a stabilire solide fondamenta per le fasi successive dello sviluppo.\
Le attività previste durante questo periodo sono quindi le seguenti: 
- Selezione della libreria da utilizzare nello sviluppo del progetto;
- Scelta del linguaggio di programmazione da adottare per l'implementazione del progetto;
- Scelta del #glossary("database") da impiegare nello sviluppo del progetto;
- Selezione del framework per lo sviluppo degli #glossary("stress test");
- Sviluppo di versioni parallele di PoC;
- Approfondimento e confronto in relazione ai casi d'uso precedentemente identificati;
- Arricchimento del documento `Analisi dei Requisiti` precedentemente avviato;
- Consolidamento del documento `Norme di Progetto`;
- Ampliamento del documento `Piano di Progetto`;
- Integrazione della terminologia mancante nel documento `Glossario`.

===== Rischi attesi
I rischi che ci aspettiamo di correre in questo periodo sono i seguenti: 
- #link(<RT1>)[*RT1 - Inesperienza*];
- #link(<RT2>)[*RT2 - Problemi legati all'utilizzo della libreria esterna*];
- #link(<RO1>)[*RO1 - Imprecisioni nella pianificazione delle attività*];
- #link(<RO2>)[*RO2 - Elevati costi delle attività*];
- #link(<RC1>)[*RC1 - Rischio di conflitti interni*];
- #link(<RC2>)[*RC2 - Problemi di comunicazione*];
I rischi identificati per il periodo attuale non differiscono significativamente da quelli presentati nella pianificazione del periodo precedente. Ciò è attribuibile al fatto che l'esperienza del gruppo è ancora limitata, come evidenziato nei verbali, e persistono lievi difficoltà nelle attività, come la suddivisione dei compiti. La novità consiste nell'aggiunta di #link(<RT2>)[*RT2 - Problemi legati all'utilizzo della libreria esterna*] , ritenuto necessario poichè durante questo periodo inizieremo con lo sviluppo del codice per il Proof of Concept (PoC) interfacciandoci con la libreria esterna.

==== Preventivo
Ruoli coinvolti: Responsabile, Amministratore, Verificatore, Analista, Programmatore.

#period(
  (
    (0, 0, 0, 6, 0, 4),
    (0, 0, 7, 5, 0, 0),
    (0, 0, 0, 0, 0, 9),
    (0, 0, 0, 3, 0, 6),
    (7, 0, 0, 0, 0, 0),
    (0, 6, 0, 3, 0, 0),
    (0, 1, 11, 0, 0, 0),
  ),
  (2, 3, 1),
  "II"
)


==== Consuntivo
Le attività previste sono tutte state svolte con successo, anche se l'`Analisi dei Requisiti` andrà rivalutata. \
Come si può notare dal confronto tra preventivo e consuntivo:
- Verificatori, Analisti e Programmatori hanno richiesto *meno* ore.

===== Prospetto orario
#figure(consuntivo(
  (
    ("0", "0", "0", "5 "+pos("-1"), "0", "3 "+pos("-1"), "8"),
    ("0", "0", "7", "5", "0", "0", "12"),
    ("0", "0", "0", "0", "0", "9", "9"),
    ("0", "0", "0", "3", "0", "6", "9"),
    ("7", "1 "+neg("+1"), "0", "0", "0", "0", "8"),
    ("0", "5 "+pos("-1"), "0", "3", "0", "0", "8"),
    ("0", "1", "10 "+pos("-1"), "0", "0", "0", "11"),
    ("7", "7", "17", "16", "0", "18", "65")
  )
), caption: [Impegno orario effettivo per ruolo di ciascun membro nel periodo II rispetto le ore preventivate.])
===== Prospetto economico
#figure(costi(
  (
    ("7", "210€", "-"),
    ("7", "140€", "-"),
    ("17 "+pos("-1"), "255€",pos("-15€")),
    ("16 "+pos("-1"), "400€",pos("-25€")),
    ("-", "-", "-"),
    ("18 "+pos("-1"), "270€",pos("-15€")),
    ("67", "1340€", "-"),
    ("65 "+pos("-2"), "1275€",pos("-65€"))
  )
), caption: [Aggiornamenti economici del progetto al termine del periodo II, riflettendo le variazioni tra preventivo e ore effettivamente lavorate.])

===== Rischi occorsi, impatto e loro mitigazione
Nel corso del secondo periodo il gruppo si è scontrato principalmente con problemi legati all'uso delle tecnologie testate, specialmente per quanto riguarda la libreria esterna identificata come scelta primaria. Quest'ultima infatti, sebbene considerata la migliore per lo sviluppo futuro del progetto, è risultata essere parzialmente inadeguata,  dimostrandosi più complessa da estendere per agire efficacemente come server di quanto inizialmente previsto. Tuttavia i nostri studi non hanno individuato alternative migliori, per cui dopo un'attenta valutazione si è deciso di non abbandonare questa libreria, anche se questo avrà sicuramente un forte impatto sul progetto, richiedendo di conseguenza uno sforzo maggiore da parte dei Programmatori. \
Inoltre la pianificazione iniziale si è rivelata essere leggeremente imprecisa, non avendo però un grosso impatto sui lavori e sui risultati di quest'ultimi. \
Infine si sono manifestati problemi di comunicazione, con un leggero disallineamento tra i membri del gruppo dovuto a incomprensioni riguardo al prodotto finale da sviluppare. Queste problematiche sono state affrontate tempestivamente attraverso una discussione in una riunione interna, la quale ha chiarito i dubbi sorti mitigando le conseguenze.

==== Retrospettiva
Il secondo periodo di lavoro ci ha fatto capire quanto sia importante promuovere una comunicazione attiva: riunioni con cadenza regolare consentono al gruppo di analizzare e affontare tempestivamente eventuali problemi riscontrati dai diversi componenti, identificandone facilmente le cause. Il disallinamento dovuto a problemi di comunicazione ci ha infatti rallentato e va di conseguenza evitato il più possibile in futuro.\
Inoltre va incoraggiato l'atteggiamento che è stato adottato dai Programmatori, i quali rapidamente hanno comunicato al gruppo le problematiche legate all'uso della libreria esterna, favorendo una comunicazione efficace per superarle. \
Infine è fondamentale migliorare ulteriormente la stima del tempo necessario attraverso preventivo per completare tutte le attività, poiché si è riscontrata nuovamente una leggera imprecisione. Nel primo periodo abbiamo sottostimato il tempo necessario, mentre nel secondo periodo lo abbiamo sovrastimato, quindi è cruciale trovare un equilibrio e adottare una maggiore precisione nella valutazione temporale delle attività.

==== Punto di avanzamento raggiunto e prospettive di completamento
All'interno del secondo periodo il gruppo ha fatto progressi significativi nello sviluppo della documentazione, concentrandosi soprattutto sul documento di `Analisi dei Requisiti` e organizzando incontri telematici per ottenere feedback. È stata data molta attenzione anche al consolidamento delle `Norme di Progetto` e alla selezione delle tecnologie per lo sviluppo del progetto. Sono state poi sviluppate diverse versioni parallele di Proof of Concept per esplorare varie prospettive, mentre il `Glossario` è stato arricchito con terminologia aggiuntiva. \
Il nuovo preventivo a finire diminuisce rispetto allo scorso periodo, ammontando a 12.595€, e la data di consegna del prodotto resta al momento confermata per il 2024-03-15.
#progress(3.4,"II")

=== Periodo III
Inizio: 2023-12-07\
Fine prevista: 2023-12-21\
Fine attuale: 2023-12-20\
Giorni di ritardo: #pos("-1")

==== Pianificazione
La volontà del gruppo è quella di conseguire la prima revisione di avanzamento del prodotto prima di Natale; per questo motivo il terzo periodo si rivela più intenso rispetto i precedenti, con carichi di lavoro più elevati e numerose ore necessarie per completare le molteplici attività. #linebreak()
Il Proof of Concept (PoC) primario ha raggiunto un buon stato di avanzamento e prevediamo di completarlo entro il periodo attuale, interrompendo lo sviluppo degli altri piccoli PoC. In questo modo i programmatori potranno terminare più velocemente e successivamente tutti i membri potranno dedicarsi al completamento della documentazione. \
L'`Analisi dei Requisiti` e il `Piano di Qualifica` sono i documenti che richiederanno più lavoro: il primo, a causa di alcune criticità riscontrate durante un incontro con il #p.cardin, necessita di ridefinire gli attori e la gestione degli errori all'interno dei vari casi d'uso; il secondo si trova ancora in uno stato embrionale e richiede la stesura di diverse sezioni. #linebreak()
Le attività previste durante questo periodo sono quindi le seguenti:
- Ultimazione del documento `Norme di Progetto`;
- Ultimazione del documento `Piano di Progetto`;
- Ultimazione del documento `Glossario`;
- Revisione e ultimazione del documento `Analisi dei Requisiti`;
- Ampliamento e ultimazione del `Piano di Qualifica`;
- Ultimazione del PoC.

===== Rischi attesi
I rischi che ci aspettiamo di correre in questo periodo sono i seguenti: 
- #link(<RO1>)[*RO1 - Imprecisioni nella pianificazione delle attività*];
- #link(<RO2>)[*RO2 - Elevati costi delle attività*];
- #link(<RO3>)[*RO3 - Impieghi personali e universitari*];
- #link(<RC1>)[*RC1 - Rischio di conflitti interni*];
- #link(<RC2>)[*RC2 - Problemi di comunicazione*].
Il consistente carico di lavoro di questo periodo richiederà inevitabilmente più tempo ad ogni membro del gruppo. I rischi identificati sono organizzativi e comuncativi: per conseguire la RTB prima di Natale molte attività potrebbero essere svolte frettolosamente, causando rallentamenti generali e ritardi.

==== Preventivo 
Ruoli coinvolti: Responsabile, Amministratore, Verificatore, Analista, Programmatore.

#period(
  (
    (0, 2, 0, 0, 0, 6),
    (7, 0, 0, 0, 0, 5),
    (0, 0, 5, 6, 0, 0),
    (0, 6, 4, 0, 0, 0),
    (0, 0, 4, 6, 0, 0),
    (0, 0, 5, 0, 0, 5),
    (0, 0, 0, 6, 0, 5),
  ),
  (2, 3, 1),
  "III"
)

==== Consuntivo
Contrariamente ai piani stabiliti, il gruppo non potrà partecipare alla prima revisione del progetto in questo momento poiché si ritiene che non sia ancora completamente pronto. \
Infatti, nonostante l'encomiabile impegno profuso nelle scorse settimane, sembra che l'elaborazione dell'`Analisi dei Requisiti` non sia ancora considerabile completa. Inoltre, il Proof of Concept (PoC) merita ulteriori sviluppi e uno sforzo maggiore di quanto previsto.\
Per quanto riguarda il resto della documentazione, invece, si ritiene che abbia ragiunto uno stato conforme alle aspettative. \
Come si può notare dal confronto tra preventivo e consuntivo:
- Amministratori e Analisti hanno richiesto *più* ore;
- Responsabili hanno rischiesto *meno* ore.

===== Prospetto orario
#figure(consuntivo(
  (
    ("0", "2", "0", "2 "+neg("+2"), "0", "6", "10"),
    ("6 "+pos("-1"), "0", "0", "0", "0", "5", "11"),
    ("0", "0", "5", "6", "0", "0", "11"),
    ("0", "7 "+neg("+1"), "4", "0", "0", "0", "11"),
    ("0", "0", "4", "6", "0", "0", "10"),
    ("0", "0", "5", "0", "0", "5", "10"),
    ("0", "0", "0", "6", "0", "5", "11"),
    ("6", "9", "18", "20", "0", "21", "74")
  )
), caption: [Impegno orario effettivo per ruolo di ciascun membro nel periodo III rispetto le ore preventivate.])
===== Prospetto economico
#figure(costi(
  (
    ("6 "+pos("-1"), "180€", pos("-30€")),
    ("9 "+neg("+1"), "180€", neg("+20€")),
    ("18", "270€","-"),
    ("20 "+neg("+2"), "500€",neg("+50€")),
    ("-", "-", "-"),
    ("21", "315€","-"),
    ("72", "1405€", "-"),
    ("74 "+neg("+2"), "1445€",neg("+40€"))
  )
), caption: [Aggiornamenti economici del progetto al termine del periodo III, riflettendo le variazioni tra preventivo e ore effettivamente lavorate.])

===== Rischi occorsi, impatto e loro mitigazione 
Nel corso di questo periodo il gruppo ha scelto di svolgere numerose attività in un tempo limitato.\ In seguito ad un controllo generale della documentazione, sono emerse diverse imprecisioni in particolari sezioni, sottolineando come alcune attività non fossero state svolte in maniera ottimale. Gli analisti si sono occupati di sistemare queste parti.\
Inoltre, la pianificazione del lavoro da svolgere per il PoC è stata insufficiente: abbiamo sottostimato il tempo necessario al completamento delle task che, alla fine, non siamo riusciti a portare a termine entro i termini prestabiliti. Vista la mole di lavoro, avevamo messo in conto che alcune task rischiavano di non essere eseguite in modo corretto. I rischi preventivati hanno avuto un impatto medio sul gruppo, causando principalmente stress, tuttavia, alla fine, sono stati mitigati nel miglior modo possibile.

==== Retrospettiva 
Il terzo periodo si è rivelato, come da aspettative, il più intenso dei tre. Affinchè il gruppo potesse partecipare alla prima revisione del prodotto prima di Natale, tutti i membri hanno sostenuto dei ritmi altissimi. Purtroppo l'obiettivo non è stato raggiunto.\ Nonostante gran parte della documentazione fosse stata ultimata, abbiamo sopravvalutato le nostre capacità ed ora necessitiamo di ulteriore lavoro per completare l'`Analisi dei Requisiti` e il PoC. \
Tutto sommato, il carico di lavoro poteva essere distribuito diversamente, magari su più periodi di lavoro, gravando meno pesantemente sui membri del gruppo prima di Natale.\ Abbiamo pianificato erroneamente, seguendo un obiettivo desiderabile, ma difficilmente realizzabile.

==== Punto di avanzamento raggiunto e prospettive di completamento
Al termine di questo periodo, visto anche il carico di lavoro più intenso, il gruppo è riuscito a progredire significativamente verso il raggiungimento degli obiettivi prefissati per la prima revisione di avanzamento del prodotto. Purtroppo però l'elaborazione dell'`Analisi dei Requisiti` non è ancora considerata completa. Inoltre, il Proof of Concept (PoC) richiede ulteriori sviluppi e uno sforzo maggiore rispetto a quanto previsto. Per quanto riguarda il resto della documentazione, invece, si ritiene che abbia raggiunto uno stato conforme alle aspettative. \
Il nuovo preventivo a finire comunque diminuisce rispetto allo scorso periodo, ammontando a 12.535€, e la data di consegna del prodotto resta al momento confermata per il 2024-03-15.
#progress(5.46,"III")

=== Periodo IV
Inizio: 2023-12-21\
Fine prevista: 2024-01-07\
Fine attuale: 2024-01-09\
Giorni di ritardo: #neg("+2")

==== Pianificazione
Nel corso del terzo periodo il gruppo ha completato le `Norme di Progetto`, descrivendo tutti i processi che caratterizzano il nostro way of working seguendo lo standard, ed il `Glossario`; attualmente non prevediamo ulteriori modifiche per questi documenti.\
 Il `Piano di Qualifica` e il `Piano di Progetto` verranno aggiornati come di consuetudine per ogni periodo.\
Il PoC, nonostante le numerose avversità emerse durante il terzo periodo, dove la complessità sembrava essere cresciuta nettamente a causa di qualche intoppo dovuto allo scambio dati tra il client e il server, prevediamo raggiungerà una versione stabile e pronta per l'RTB al termine di questo periodo.\
Prevediamo inoltre di raggiungere una versione stabile anche per l'`Analisi dei Requisiti`, il documento che ha rivelato più criticità durante lo scorso periodo, e per tutto il resto della documentazione entro la fine di questo periodo di lavoro; pertanto provvederemo a fissare in primo luogo un colloquio con il #p.cardin, al fine di chiarire i restanti dubbi sull'`Analisi dei Requisiti` e sul PoC, e successivamente a candidarci per l'RTB.\

Le attività previste durante questo periodo sono quindi le seguenti:\
- Ultimazione del documento di `Analisi dei Requisiti`;
- Ultimazione del PoC;
- Aggiornamento di `Piano di Qualifica` e `Piano di Progetto`;
- Pianificare in modo efficace la rotazione dei ruoli, che sarà complicata a causa delle vacanze natalizie e degli impegni personali di ciascuno;
- Fissare un ricevimento con il #p.cardin per chiarire gli ultimi dubbi riguardo AdR e PoC.

===== Rischi attesi
I rischi che ci aspettiamo di correre in questo periodo sono i seguenti:
- #link(<RO1>)[*RO1 - Imprecisioni nella pianificazione delle attività*];
- #link(<RO2>)[*RO2 - Elevati costi delle attività*];
- #link(<RO3>)[*RO3 - Impegni universitari e personali*].

Le vacanze Natalizie nel bel mezzo di questo periodo non faciliteranno sicuramente l'organizzazione del lavoro rimanente, causando rallentamenti e carenza di membri del gruppo disposti a lavorare durante questo periodo.\
Un altro rischio imminente è che i dubbi che chiariremo con il #p.cardin non scoperchino un altro vaso di pandora, causando una mole di lavoro correttiva per `Analisi dei Requisiti` e PoC eccessiva, con costi in termini di ore lavoro che se non assorbiti dal gruppo possono causare consistenti rallentamenti per la nostra candidatura all'RTB.

==== Preventivo
Ruoli coinvolti: Responsabile, Amministratore, Verificatore, Analista, Programmatore.

#period(
  (
    (0, 4, 0, 0, 0, 0),
    (0, 0, 0, 0, 0, 3),
    (4, 0, 0, 3, 0, 0),
    (0, 0, 5, 0, 0, 2),
    (0, 0, 5, 0, 0, 3),
    (0, 0, 0, 2, 0, 3),
    (0, 0, 0, 3, 0, 2)
  ),
  (2, 3, 1),
  "IV"
)

==== Consuntivo 
Non tutte le attività previste sono tutte state svolte con successo, infatti, nonostante un ottimo avanzamento in ciascuna, l'impossibilità di confrontarsi direttamente con il #p.cardin, visti i suoi impegni personali, ci ha leggeremente frenato. \
Come si può notare dal confronto tra preventivo e consuntivo:
- Amministratori, Responsabili ed Analisti hanno richiesto *più* ore;

===== Prospetto orario
#figure(consuntivo(
  (
    ("0", "3 "+neg("-1"), "0", "0", "0", "0", "3"),
    ("0", "2 "+neg("+2"), "0", "0", "0", "3", "5"),
    ("4 "+neg("+1"), "0", "0", "3", "0", "0", "7"),
    ("0", "0", "5", "0", "0", "2", "7"),
    ("0", "0", "5", "0", "0", "3", "8"),
    ("1 "+neg("+1"), "0", "0", "3 "+neg("+1"), "0", "3", "7"),
    ("0", "0", "0", "5 "+neg("+2"), "0", "2", "7"),
    ("5", "5", "10", "11", "0", "13", "44")
  )
), caption: [Impegno orario effettivo per ruolo di ciascun membro nel periodo IV rispetto le ore preventivate.])

===== Prospetto economico
#figure(costi(
  (
    ("5 "+neg("+1"), "150€", neg("+30€")),
    ("5 "+neg("+1"), "100€", neg("+20€")),
    ("10", "150€","-"),
    ("11 "+neg("+3"), "225€",neg("+75€")),
    ("-", "-", "-"),
    ("13", "195€","-"),
    ("39", "695€", "-"),
    ("44 "+neg("+5"), "820€",neg("+125€"))
  )
), caption: [Aggiornamenti economici del progetto al termine del periodo IV, riflettendo le variazioni tra preventivo e ore effettivamente lavorate.])

===== Rischi occorsi, impatto e loro mitigazione 
Il quarto periodo è coinciso con le vacanze di Natale, generando difficoltà per alcuni membri del gruppo nel mantenere un regime di lavoro costante come nei periodi precedenti. Tuttavia, l'impatto di questa situazione è stato limitato grazie alla disponibilità del resto del gruppo a coprire tali mancanze.\
Durante questo periodo inoltre sono state riscontrate difficoltà nello sviluppo del PoC, specialmente dovute ai test fatti utilizzando i client a nostra disposizione, i quali si sono dimostrati più ostici del previsto, cosa che ha avuto un impatto abbastanza significativo. Questo problema sarà mitigato nel periodo successivo con un aumento delle ore dedicate allo sviluppo del PoC.\
Infine, l'impossibilità di confrontarsi direttamente con il #p.cardin, visti i suoi impegni personali, si è rivelata essere la problematica più impattante, causando un rallentamento generale nello sviluppo della documentazione, in particolare per l'`Analisi dei Requisiti`, che comunque riteniamo essere ora pronta.

==== Retrospettiva
Il quarto periodo, coincidendo con le vacanze Natalizie, è risultato meno costante, specialmente riguardo le ore dedicate e la disponibilità dei singoli membri a partecipare agli incontri settimanali. Questa variabilità ha aggiunto ulteriore complessità ad un compito già difficile, come la stima dei preventivi svolta ad inizio periodo, la quale, per l'ennesima volta, si è dimostrata imprecisa. Pertanto, sarà quindi fondamentale migliorare in quest'attività nei prossimi periodi.\
All'interno del gruppo è stata molto apprezzata la disponibilità di alcuni membri nel dedicare più ore per evitare un rallentamento eccessivo nell'avanzamento complessivo del progetto. In futuro, però, sarebbe importante evitare situazioni simili, anche se ha evidenziato la volontà della maggior parte del gruppo di procedere a passo spedito.\ 
Infine l'aspetto fondamentale su cui concentrarsi nel corso del prossimo periodo è lo sviluppo del PoC, necessario per effettuare la candidatura per l'RTB, dato che ormai la documentazione è praticamente pronta.

==== Punto di avanzamento raggiunto e prospettive di completamento
Durante il quarto periodo, il gruppo ha rallentato leggermente la velocità di avanzamento del progetto, principalmente a causa delle vacanze di Natale. Tuttavia, poiché gran parte del lavoro era già stato completato, ciò non ha rappresentato un problema significativo. L'`Analisi dei Requisiti` è stata finalmente considerata come completa dal gruppo, raggiungendo così il resto della documentazione. Rimangono ancora da completare le ultime attività relative al Proof of Concept (PoC), ma una volta fatto ciò saremo ormai pronti per candidarci a sostenere la revisione RTB. \
Il nuovo preventivo a finire aumenta un po' rispetto allo scorso periodo, ammontando a 12.630€, vista l'impossibilità di confrontarsi direttamente con il #p.cardin, la quale comporta delle incertezze che potrebbero richiedere più ore da Analista del previsto, ma la data di consegna del prodotto resta al momento confermata per il 2024-03-15.
#progress(6.6,"IV")

=== Periodo V
Inizio: 2024-01-09\
Fine prevista: 2024-01-14\
Fine attuale: 2024-01-14\
Giorni di ritardo: #pos("0")

==== Pianificazione
Durante lo scorso periodo il team Overture ha completato la redazione di tutta la documentazione di progetto necessaria fino ad ora. Conseguentemente non si prevede alcun ulteriore lavoro su di essa, se non per aggiornare `Piano di Qualifica` e `Piano di Progetto` e validare tutti i documenti.\
Per quanto riguarda l'organizzazione di questo periodo, abbiamo deciso di ridurre la durata di quest'ultimo ad una settimana, con lo scopo di rifinire gli ultimi dettagli essenziali per poter completare tutto il lavoro necessario per la candidatura alla RTB.\
Facciamo presente che, qualora non fosse possibile candidarsi alla RTB al termine di questo periodo, allora dovremo ripianificare una futura data per la candidatura, in quanto il team di sviluppo per un paio di settimane sarà impegnato a studiare per gli altri esami di questo semestre.\
I dettagli che intediamo rifinire per essere pronti alla candidatura RTB sono: 
- l'approvazione di tutti i documenti (compresi `Piano di Qualifica` e `Piano di Progetto` in seguito ai consueti aggiornamenti);
- l'aggiustamento di stile dei documenti;
- assicurarsi che non ci siano errori nel `Glossario`;
- risolvere tutti i problemi emersi con il PoC negli scorsi periodi.

Infine prevediamo di fissare un incontro con il proponente #p.zextras, che ci servirà per avere una discussione sul PoC e, in seguito, generare un verbale esterno dove accetteranno in maniera formale la rinuncia della parte dei contatti, della rubrica, dei calendari e degli appuntamenti nel prodotto software che stiamo modellando.

===== Rischi attesi

I rischi che ci aspettiamo di correre in questo periodo sono i seguenti:
- #link(<RO1>)[*RO1 - Imprecisioni nella pianificazione delle attività*];
- #link(<RO2>)[*RO2 - Elevati costi delle attività*];
- #link(<RO3>)[*RO3 - Impegni universitari e personali*].

In questo quinto periodo il gruppo di progetto prevede di riscontrare particolari difficoltà con alcuni membri del gruppo, in quanto ognuno sta affrontanto la propria sessione di preparazione per gli esami invernali di questo semestre. Questo probabilmente causerà un'inevitabile rallentamento in alcune attività svolte da alcuni soggetti che, più degli altri, saranno impegnati con lo studio, con la partecipazione alle ultime lezioni e con il carico di lavoro dovuto a progetti di altri esami, i quali spesso risultano essere molto onerosi in termini di tempo.

==== Preventivo 
Ruoli coinvolti: Responsabile, Amministratore, Verificatore, Programmatore.

#period(
  (
    (1, 0, 0, 0, 0, 0),
    (0, 1, 0, 0, 0, 2),
    (0, 2, 2, 0, 0, 0),
    (2, 0, 0, 0, 0, 2),
    (0, 1, 0, 0, 0, 3),
    (2, 0, 2, 0, 0, 0),
    (0, 1, 0, 0, 0, 3)
  ),
  (1, 2, 3),
  "V"
)

==== Consuntivo
Le attività previste sono tutte state svolte con successo. \
Come si può notare dal confronto tra preventivo e consuntivo:
- I Programmatori hanno richiesto *meno* ore;

===== Prospetto orario 
#figure(consuntivo(
  (
    ("1", "0", "0", "0", "0", "0", "1"),
    ("0", "1", "0", "0", "0", "2", "3"),
    ("0", "2", "2", "0", "0", "0", "4"),
    ("2", "0", "0", "0", "0", "2", "4"),
    ("0", "1", "0", "0", "0", "2 "+pos("-1"), "3"),
    ("2", "0", "2", "0", "0", "0", "4"),
    ("0", "1", "0", "0", "0", "2 "+pos("-1"), "3"),
    ("5", "5", "4", "0", "0", "8", "22")
  )
), caption: [Impegno orario effettivo per ruolo di ciascun membro nel periodo V rispetto le ore preventivate.])

===== Prospetto economico
#figure(costi(
  (
    ("5", "150€", "-"),
    ("5", "100€", "-"),
    ("4", "60€","-"),
    ("-", "-","-"),
    ("-", "-", "-"),
    ("8 "+pos("-2"), "120€",pos("-30")),
    ("24", "460€", "-"),
    ("22 "+pos("-2"), "430€",pos("-30€"))
  )
), caption: [Aggiornamenti economici del progetto al termine del periodo V, riflettendo le variazioni tra preventivo e ore effettivamente lavorate.])

===== Rischi occorsi, impatto e loro mitigazione
Il quinto periodo del progetto è stato caratterizzato da sfide significative per il gruppo. Infatti, il raggiungimento e la conclusione delle ultime task per la candidatura alla Requirements and Technology Baseline ha rischiato di essere ostacolata dalla concomittanza con gli esami della sessione invernale per praticamente tutti i membri del gruppo.\
Tuttavia, il fatto che ogni membro del gruppo riconoscesse che il successo del nostro progetto è essenziale per il percorso accademico, ci ha spinti e motivati a compiere qualche sforzo aggiuntivo. Ci siamo quindi organizzati per gestire e bilanciare le risorse e il tempo nel modo più efficente possibile così da perseguire la candidatura per la RTB e mantenere un alto standard di qualità nel nostro progetto, senza togliere tempo e attenzione agli imminenti esami che dovremmo affrontare tra pochi giorni, andando a mitigare quindi questo rischio.

==== Retrospettiva
Per quanto riguarda il quinto periodo, il gruppo di progetto ha deciso di attuare in maniera del tutto straordinaria la scelta strategica di organizzare una fase concentrata della durata di una sola settimana.\
Organizzare le attività in un periodo cosi ridotto ha portato l'immediato beneficio di garantire una pianificazione più fine e precisa delle singole attività e una assegnazione delle risorse più mirata. Tutto ciò ha comportato quindi una maggiore efficienza nel raggiungimento degli obiettivi prefissati e il completamento di tutte le attività.\
Durante questa settimana intensiva si sottolinea un'ottima coesione del nostro gruppo verso un'unico scopo: il raggiungimento della candidatura alla RTB. L'estrema sincronia e collaborazione tra i membri del gruppo ha contribuito a creare un ambiente di lavoro stimolante e altamente produttivo portando quindi un successo complessivo per quanto riguarda questo periodo.\
Si desidera mettere in rilevo che durante questo periodo non si evidenziano aspetti negativi rilevanti, ma al contrario i valori positivi emersi ci costrigono a valutare di replicare questo modello di fase intensiva e ridotta in termini di tempo anche in un futuro prossimo.

==== Punto di avanzamento raggiunto e prospettive di completamento
Durante questo periodo il team di progetto ha finalizzato e approvato tutta la documentazione richiesta per la candidatura alla revisione RTB. Inoltre, sono stati risolti tutti i problemi riscontrati con il PoC nel periodo precedente, rendendolo pronto per la presentazione. Infine, sono stati affinati gli ultimi dettagli per garantire una presentazione di alta qualità. \
Il nuovo preventivo a finire ammonta a 12.615€ e la data di consegna del prodotto slitta di una settimana, per via del tempo da dedicare allo studio per gli esami, ed è prevista per la data 2024-03-22.
#progress(7.2,"V")

=== Sommario finale
Dopo svariate intense settimane di lavoro, iniziato in data 2023-11-06, il gruppo si ritiene pronto a sostenere la prima revisione del prodotto che, come da accordi con il #p.cardin, inizierà il *2024-01-19* e continuerà poi con il colloquio con il #p.vardanega.\
Gran parte della documentazione necessaria all'intero progetto è stata stilata durante questa fase, in particolare quella relativa all'`Analisi dei Requisiti` e alle `Norme di Progetto`. Per questo motivo riteniamo che, rispetto a quanto preventivato in fase di candidatura,  le ore da destinare allo studio delle funzionalità del prodotto siano leggermente eccessive. Al contrario, pensiamo di necessitare di più tempo per lo sviluppo del software per via delle tecnologie da utilizzare e la nostra poca esperienza con quest'ultime. Sono stati effettuati, quindi, dei leggeri cambiamenti alle ore da destinare ad ogni singolo ruolo ed è stato ricalcolato il costo totale.\
Il nuovo preventivo del progetto equivale a _*12615€*_, mentre la consegna finale del prodotto slitta di una settimana, per via del tempo da dedicare allo studio per gli esami, ed è prevista per la data _*2024-03-22*_.

==== Riepilogo prospetto orario
===== Ore consumate
#figure(consuntivo(
  (
    ("1","5","9","7","0","9","31"),
    ("6","3","7","11","0","10","37"),
    ("6","2","7","9","5","9","38"),
    ("2","7","9","8","1","10","37"),
    ("7","7","9","8","0","5","36"),
    ("3","5","7","11","1","8","35"),
    ("5","3","10","11","1","9","39"),
    ("30","32","58","65","8","60","253")
  )
), caption: [Impegno orario effettivo per ruolo di ciascun membro al termine del periodo di preparazione al RTB.])
===== Ore rimanenti
#figure(consuntivo(
  (
    ("8","3","12","4","17","15","59"),
    ("3","5","14","0","17","14","53"),
    ("3","6","14","0 "+pos("-2"),"12","17 "+neg("+2"),"52"),
    ("7","1","12","3","16","14","53"),
    ("2","1","12","3","17","19","54"),
    ("6","3","14","0","16","16","55"),
    ("4","5","11","0","16","15","51"),
    ("33","24","89","10 "+pos("-2"),"111","110 "+neg("+2"),"377")
  )
), caption: [Impegno orario rimanente per ruolo di ciascun membro al termine del periodo di preparazione al RTB.])
==== Riepilogo prospetto economico
==== Costi totali
#figure(costiFinaliRuolo(
  (
    ("210€", "210€", "180€", "150€", "150€", "900€"),
    ("120€", "140€", "180€", "100€", "100€", "640€"),
    ("135€", "255€", "270€", "150€", "60€", "870€"),
    ("450€", "400€", "500€", "225€", "-", "1575€"),
    ("200€", "-", "-", "-", "-", "200€"),
    ("-", "270€", "315€", "195€", "120€", "900€"),
    ("1115€", "1275€", "1445€", "820€", "430€", "5085€" ),
  )
), caption: [Aggiornamenti economici del progetto al termine del periodo di preparazione al RTB.])

#pagebreak()

== Tra RTB e PB

=== Periodo VI
Inizio: 2024-01-15\
Fine prevista: 2024-02-11\
Fine attuale: 2024-02-06\
Giorni di ritardo: #pos("-5")

==== Pianificazione
Per quanto riguarda l'organizzazione di questo periodo, considerando la sua sovrapposizione con l'inizio della sessione di esami, il gruppo ha concordato all'unanimità che, oltre a concentrarsi sulla preparazione ai colloqui della RTB, per la quale abbiamo già presentato la nostra candidatura, il focus verrà spostato sullo studio individuale necessario alla sessione stessa, senza avanzare ulteriormente nel progetto.\
Gli unici dettagli che intediamo rifinire nel corso di questo periodo sono quindi relativi alle presentazioni che esporremo al #p.cardin ed al #p.vardanega. \
Dato che ancora non sappiamo quanto tempo sarà necessario per poter partecipare ad entrambi i colloqui, la durata di questo periodo è fissata ad un mese anzichè 2 settimane, coprendo inoltre la maggior parte degli appelli d'esame a cui i membri del gruppo dovranno partecipare.

===== Rischi attesi
I rischi che ci aspettiamo di correre in questo periodo sono i seguenti:
- #link(<RO3>)[*RO3 - Impegni universitari e personali*].

Nel corso di questo periodo il team di progetto prevede di incontrare delle difficoltà per via dell'inizio della sessione invernale. Ciò inevitabilmente comporterà una distrazione per il progetto che si protrarrà per l'intera durata della sessione d'esame o almeno fino a quando tutti i membri avranno completato gli esami prefissati. \
Inoltre, un secondo rischio che il gruppo potrebbe affrontare è la possibilità di non superare la prima fase dell'RTB, con conseguente rallentamento nello sviluppo dovuto alla necessità di rivedere parti della `Analisi dei Requisiti` e/o del PoC.

==== Preventivo
Non prevedendo alcun avanzamento effettivo all'interno di questo periodo, se non per ciò che riguarda il passaggio della RTB, non viene presentato al suo interno nessun preventivo associato al lavoro da svolgere.

==== Consuntivo
Il gruppo ha superato con successo la revisione RTB ed ora potrà procedere con il restante lavoro da svolgere per completare il progetto. \
Come si può notare dal confronto tra preventivo e consuntivo:
- Gran parte dei ruoli hanno richiesto *più* ore del previsto. Infatti non avevamo pianficato alcun avanzamento nel progetto ma è stato necessario effettuare delle lievi modifiche ai documenti in seguito al colloquio con il #p.cardin prima di procedere al colloquio con il #p.vardanega.

===== Prospetto orario 
#figure(consuntivo(
  (
    ("2 "+neg("+2"), "0", "0", "1 "+neg("+1"), "0", "0", "3"),
    ("0", "0", "1 "+neg("+1"), "0", "0", "0", "1"),
    ("0", "0", "1 "+neg("+1"), "0", "0", "0", "1"),
    ("0", "1 "+neg("+1"), "0", "0", "0", "0", "1"),
    ("0", "0", "0", "2 "+neg("+2"), "0", "0", "2"),
    ("0", "1 "+neg("+1"), "0", "0", "0", "0", "1"),
    ("1 "+neg("+1"), "0", "0", "0", "0", "0", "1"),
    ("3", "2", "2", "3", "0", "0", "10")
  )
), caption: [Impegno orario effettivo per ruolo di ciascun membro nel periodo VI rispetto le ore preventivate.])

===== Prospetto economico
#figure(costi(
  (
    ("3", "90€", neg("+90€")),
    ("2", "40€", neg("+40€")),
    ("2", "30€", neg("+30€")),
    ("3", "75€", neg("+75€")),
    ("-", "-", "-"),
    ("-", "-", "-"),
    ("-", "-", "-"),
    ("10 "+neg("+10"), "235€", neg("+235€"))
  )
), caption: [Aggiornamenti economici del progetto al termine del periodo VI, riflettendo le variazioni tra preventivo e ore effettivamente lavorate.])

===== Rischi occorsi, impatto e loro mitigazione
Durante il periodo considerato, non abbiamo riscontrato alcun rischio significativo. Difatti, nonostante le preoccupazioni iniziali legate all'avvio della sessione invernale, siamo stati in grado di gestire entrambe le sfide in modo parallelo e senza intoppi. \
Entrambi i colloqui sono stati completati con successo, e, anche se il superamento della prima parte ha richiesto alcune lievi modifiche ai documenti, questo non ha rallentato il nostro progresso, e siamo riusciti a completare tutto come pianificato.

==== Retrospettiva
Questo periodo si è distinto dagli altri poiché è coinciso con la sessione invernale. La sua durata eccezionale di un mese per un singolo periodo non si verificherà più, e non prevediamo ulteriori periodi con "interruzioni" fino alla conclusione del progetto. Ora che la maggior parte dei membri del gruppo ha superato gli esami, il nostro unico focus sarà infatti il progetto stesso. \
Tuttavia ci ha comunque insegnato delle cose importanti:
- È importante fornire riferimenti precisi e completi alla documentazione esterna quando necessario, evitando di fare riferimento a parti generiche o non specificate;
- La necessità di definire con precisione i casi d'uso e di evitare di includere funzionalità che non siano distinte e chiaramente definite, come la ricezione di risposte in seguito all'invio di email;
- I requisiti devono essere chiari e non ambigui, evitando descrizioni vaghe o desiderate. Devono includere vincoli precisi e definizioni chiare di concetti come "scalabile";
- La selezione delle tecnologie ha sollevato alcuni punti di attenzione che devono essere considerati durante la fase di progettazione;
- È stato apprezzato il modo in cui le domande sono state gestite durante la presentazione, il che indica che è stato fatto un buon lavoro da questo punto di vista;
- C'è spazio per migliorare la gestione del tempo durante la presentazione. Questo suggerisce che potrebbe esserci stata una mancanza di precisione nel cronometrare o gestire l'esposizione delle informazioni, e che potrebbe essere necessario fare un maggiore sforzo per rispettare i limiti di tempo stabiliti.
Dai punti evidenziati è importante trarre insegnamenti per migliorare le prestazioni future. È essenziale conservare gli elementi positivi, come la capacità di gestire efficacemente le domande, mentre si lavora per migliorare gli aspetti critici individuati, come la gestione del tempo durante la presentazione.

==== Punto di avanzamento raggiunto e prospettive di completamento
Durante questo periodo il gruppo ha dedicato la maggior parte del tempo alla preparazione degli esami, tuttavia, ciò non ci ha impedito di superare con successo entrambi i colloqui relativi alla revisione RTB. \ Nonostante non fosse previsto alcun avanzamento nel progetto, abbiamo lavorato comunque per risolvere i problemi evidenziati dal #p.cardin riguardanti l'`Analisi dei Requisiti` e, di conseguenza, il `Piano di Qualifica`. Questo ci ha permesso di raggiungere un lieve ma importante progresso nel progetto.\
Il nuovo preventivo a finire rimane lo stesso dello scorso periodo, ammontando a 12.615€, e la data di consegna del prodotto resta al momento confermata per il 2024-03-22, come comunicato durante il colloquio con il #p.vardanega.
#progress(7.6,"VI")

#pagebreak()

== PB
=== Periodo VII
Inizio: 2024-02-07\
Fine prevista: 2024-02-21\
Fine attuale: 2024-02-21\
Giorni di ritardo: #pos("0")

==== Pianificazione
All'interno del settimo periodo, il quale nasce contestualmente al passaggio della revisione RTB da parte del gruppo, dovremo affacciarci per la prima volta alla fase di progettazione (design) del prodotto software che andremo a realizzare. In queste due settimane sarà quindi essenziale condurre uno studio approfondito della documentazione pertinente, con l'obiettivo di definirne la struttura di base ed iniziare ad arricchirla con i contenuti principali. Inoltre è fondamentale aggiornare costantemente la documentazione esistente, in modo da non trascurarla, e proprio per questo prevediamo soprattutto un arricchimento delle `Norme di Progetto`. \
Per facilitare la transizione verso questa nuova fase del progetto, sarà utile organizzare un colloquio con l'azienda proponente #p.zextras al fine di ottenere supporto e chiarimenti. \
Inoltre, in questo periodo prevediamo di risolvere tutte le problematiche emerse dalla valutazione seguente alla revisione RTB il prima possibile, in modo da poter operare su una baseline pulita. \
Infine, non va dimenticato lo sviluppo del prodotto software effettivo, il quale però non potrà essere il focus principale di questo periodo, dato che per poter passare alla codifica sarà necessario prima aver definito almeno una base di progettazione. Tuttavia, finché quest'ultima non sarà almeno parzialmente pronta, intendiamo comunque assegnare ai programmatori il compito di completare l'esplorazione delle funzionalità mancanti nel Proof of Concept (PoC) e condurre test sui client che ci serviranno in futuro per dimostrare le funzionalità del nostro prodotto software.\
Le attività previste durante questo periodo sono quindi le seguenti:
- Risolvere le problematiche emerse dalla revisione RTB;
- Arricchire il più possibile le `Norme di Progetto`;
- Aggiornare `Piano di Qualifica` e `Piano di Progetto` come di consueto;
- Definire una struttura di base per la nuova documentazione;
- Arricchire il più possibile la nuova documentazione;
- Studiare i possibili design da implementare;
- Procedere, per quanto possibile, alla codifica del prodotto software.

===== Rischi attesi
I rischi che ci aspettiamo di correre in questo periodo sono i seguenti: 
- #link(<RT1>)[*RT1 - Inesperienza*];
- #link(<RO1>)[*RO1 - Imprecisioni nella pianificazione delle attività*];
- #link(<RO2>)[*RO2 - Elevati costi delle attività*];
Poiché siamo nelle fasi iniziali della progettazione, molti aspetti di essa rimangono per noi ancora incerti e stiamo attualmente organizzandoci mentre continuiamo ad apprendere. Di conseguenza, c'è una considerevole probabilità di incontrare problemi tra quelli menzionati. Inoltre, questo è il primo periodo in cui possiamo concentrarci esclusivamente sul progetto, senza dover pensare a lezioni o esami, il che potrebbe rendere più difficile essere precisi nella pianificazione delle attività.

==== Preventivo
Ruoli coinvolti: Responsabile, Amministratore, Verificatore, Progettista, Programmatore.

#period(
  (
    (5, 0, 0, 0, 0, 13),
    (0, 0, 10, 0, 0, 7),
    (0, 4, 0, 0, 12, 0),
    (3, 0, 0, 0, 12, 0),
    (0, 0, 8, 0, 8, 0),
    (0, 0, 10, 0, 0, 8),
    (0, 2, 0, 0, 12, 0)
    ),
  (3, 2, 1),
  "VII"
)

==== Consuntivo
Le attività previste sono tutte state svolte con successo. \
Come si può notare dal confronto tra preventivo e consuntivo:
- Programmatori hanno richiesto *più* ore;
- Verificatori e Progettisti hanno richiesto *meno* ore.

===== Prospetto orario
#figure(consuntivo(
  (
    ("5", "0", "0", "0", "0", "15 "+neg("+2"), "20"),
    ("0", "0", "9 "+pos("-1"), "0", "0", "7", "16"),
    ("0", "4", "0", "0", "12", "0", "16"),
    ("3", "0", "0", "0", "12", "0", "15"),
    ("0", "0", "8", "0", "7 "+pos("-1"), "0", "15"),
    ("0", "0", "10", "0", "0", "10 "+neg("+2"), "20"),
    ("0", "2", "0", "0", "12", "0", "14"),
    ("8", "6", "27", "0", "43", "32", "116")
  )
), caption: [Impegno orario effettivo per ruolo di ciascun membro nel periodo VII rispetto le ore preventivate.])
===== Prospetto economico
#figure(costi(
  (
    ("8", "240€", "-"),
    ("6", "120€", "-"),
    ("27 "+pos("-1"), "405€", pos("-15€")),
    ("-", "-", "-"),
    ("43 "+pos("-1"), "1075€", pos("-25€")),
    ("32 "+neg("+4"), "480€", neg("+60")),
    ("114", "2300€","-"),
    ("116 "+neg("+2"), "2320€",neg("+20€"))
  )
), caption: [Aggiornamenti economici del progetto al termine del periodo VII, riflettendo le variazioni tra preventivo e ore effettivamente lavorate.])

===== Rischi occorsi, impatto e loro mitigazione
Nel periodo appena trascorso, il nostro gruppo ha dovuto affrontare una significativa mancanza di esperienza nella fase di progettazione. Infatti questa è stata la prima volta in cui i membri si sono trovati a delineare l'architettura logica e di distribuzione di un progetto di dimensioni considerevoli come il nostro, e ciò ha comportato diverse difficoltà nel procedere, visti i nostri dubbi a riguardo. Tuttavia il confronto con l'azienda proponente e la nostra forza di volontà ci hanno permesso comunque di raggiungere gli obiettivi posti per questo periodo, mitigando adeguatamente il rischio occorso e riducendo il suo impatto sul progetto, anche se questo ha richiesto un numero di ore di orologio abbastanza elevato rispetto alle ore produttive da parte dei Progettisti.

==== Retrospettiva
Nel corso del settimo periodo di lavoro, è importante evidenziare l'efficace pianificazione che è stata raggiunta. Difatti, nonostante le nostre iniziali preoccupazioni, siamo soddisfatti di constatare che tutto è proceduto per il meglio e che le ore effettivamente impiegate si discostano solo leggermente da quelle preventivate, con una differenza minima in percentuale. Inoltre, durante questo periodo abbiamo compreso ancora di più l'importanza del confronto con il proponente ed il committente, i quali hanno giocato un ruolo fondamentale nell'apprendere appieno il contenuto della nuova documentazione e nell'avviare la fase di progettazione con solidità, permettendoci di risparmiare tempo ed agevolando il nostro lavoro. 

Per quanto riguarda i lati negativi, senza la presenza delle lezioni che ci tenevano uniti e ci permettavano di vederci più spesso, nell'ultima settimana abbiamo notato una certa dispersione e distanza tra di noi rispetto al solito. È evidente che questa situazione non sia ideale per la collaborazione efficace e il raggiungimento degli obiettivi comuni. Pertanto, è fondamentale concentrarsi sull'implementazione di strategie che possano favorire una maggiore coesione e comunicazione all'interno del team, anche al di fuori delle lezioni.

==== Punto di avanzamento raggiunto e prospettive di completamento
In questo periodo il gruppo ha aumentato notevolmente il ritmo di avanzamento rispetto ai periodi precedenti, principalmente grazie alla cessazione delle lezioni e degli esami che ci ha permesso di dedicare maggiore tempo e risorse al progetto. Abbiamo avviato con successo la fase di progettazione del prodotto software, defininendo l'architettura logica e di deployement, oltre ad alcuni possibili pattern da implementare, focalizzandoci poi sull'analisi dettagliata della documentazione pertinente (`Specifica Tecnica` e `Manuale Utente`) e sulla definizione della sua struttura di base e delle prime sezioni di quest'ultima. Inoltre, abbiamo aggiornato e arricchito le `Norme di Progetto`, garantendo la coerenza e la completezza delle nostre linee guida. Dopo ancora abbiamo affrontato le problematiche individuate durante la revisione RTB in modo tempestivo, assicurandoci di operare su una baseline pulita per il proseguimento del progetto. Abbiamo inoltre organizzato un colloquio con l'azienda proponente, #p.zextras, per ottenere ulteriore supporto e chiarezza, il quale si è rivelato estremamente utile. Infine, sebbene non sia stato inizialmente possibile procedere pienamente con la codifica senza una base di progettazione definita (abbiamo potuto farlo solo verso la fine della seconda settimana), abbiamo continuato l'esplorazione delle funzionalità mancanti nel Proof of Concept (PoC) e abbiamo condotto ulteriori test sui client necessari per dimostrare le capacità del nostro prodotto, individuando dei punti critici su cui sarà necessario discutere con l'azienda.\
Il nuovo preventivo a finire diminuisce rispetto allo scorso periodo, ammontando a 12.585€, poichè abbiamo capito che probabilmente necessiteremo di meno ore da Verificatore rispetto a quanto precedetemente preventivato, e la data di consegna del prodotto resta confermata per il 2024-03-22.
#progress(11,"VII")