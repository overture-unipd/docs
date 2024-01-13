
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
    "0.4.1", "2024-01-10", p.bonavigo, p.furno, "Aggiunto il preventivo e la pianificazione del periodo V",
    "0.4.0", "2024-01-09", p.bettin, p.bonavigo, "Aggiunto il consuntivo del periodo IV",
    "0.3.2", "2024-01-03", p.amadori, p.bulychov, "Aggiunto il preventivo del periodo IV",
    "0.3.1", "2023-12-28", p.amadori, p.bulychov, "Aggiunta la pianificazione del periodo IV",
    "0.3.0", "2023-12-22", p.amadori, p.fabbian, "Aggiunto il consuntivo del periodo III",
    "0.2.2", "2023-12-16", p.bulychov, p.furno, "Aggiunto il preventivo del periodo III",
    "0.2.1", "2023-12-15", p.bulychov, p.furno, "Aggiunta la pianificazione del periodo III",
    "0.2.0", "2023-12-14", p.bulychov, p.bonavigo, "Aggiunto il consuntivo del periodo II",
    "0.1.2", "2023-12-07", p.vedovato, p.bettin, "Aggiunto il preventivo del periodo II",
    "0.1.1", "2023-12-07", p.fabbian, p.vedovato, "Aggiunta la pianificazione del periodo II",
    "0.1.0", "2023-11-30", p.furno, p.vedovato, "Aggiunto il consuntivo del periodo I",
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
- `Norme di Progetto v1.0.0`
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
Durante lo sviluppo del progetto è essenziale mitigare gli impatti delle difficoltà riscontrate attraverso una corretta analisi dei rischi. Al fine di gestire efficacemente le problematiche derivanti da diverse condizioni intervenute durante l'implementazione, è stata inclusa questa sezione nel `Piano di Progetto v1.0.0`.\
Dopo aver elencato i potenziali rischi, sono stati identificati una serie di passi da intraprendere nel caso in cui uno di essi si verifichi. Questa raccolta indica le soluzioni da applicare per limitare i danni.\
Secondo lo standard #glossary("ISO")/#glossary("IEC") 31000:2009, il #glossary("processo") di gestione dei rischi si articola in 5 fasi:
+ Identificazione dei rischi: consiste nel riconoscere le fonti di #glossary("rischio"), le aree di impatto, gli eventi (compresi i cambiamenti di circostanze), le cause e le conseguenze potenziali. Questo avverrà mediante un'analisi delle attività per generare un elenco completo dei rischi basato sugli eventi che potrebbero influenzare il raggiungimento degli obiettivi. Il team utilizzerà un'attività di Brainstorming per discutere di tutti gli ostacoli che potrebbero emergere durante il progetto.
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
 [Dato l'alto grado di specializzazione richiesto dal #glossary("capitolato"), alcuni membri del gruppo potrebbero non possedere le competenze necessarie inizialmente. Ciò potrebbe causare ritardi sia nella fase di progettazione che nello sviluppo, poiché la formazione sarà essenziale per acquisire le competenze richieste],
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
  [Il confronto periodico con il `Piano di Progetto` e l'analisi della #glossary("board") su #glossary("GitHub") vengono utilizzati per monitorare lo stato di avanzamento],
  [In caso di difficoltà, il `Piano di Progetto` viene revisionato per adeguare le date delle attività in base al progresso. Se un membro segnala impossibilità di rispettare la scadenza, il Responsabile assegnerà più risorse o posticiperà la data.],
))

*RO2 - Elevati costi delle attività* <RO2>
#risks((
  [La sottostima/sovrastima dei costi delle attività a causa dell'inesperienza del team può causare ritardi o spreco di tempo],
  [Media],
  [Alta],
  [Attraverso il #glossary("cruscotto") e confronto periodico con il `Piano di Progetto`, il Responsabile può monitorare lo stato di avanzamento del progetto],
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
- *Trasparenza*: il modello Agile permette di poter sempre dimostrare agli #glossary("stakeholder") quanto è stato fatto, verificando l’avanzamento tramite progresso reale;
- *Adattabilità estrema al cambiamento*: il modello Agile mira a gestire ed adattarsi ai cambiamenti nei requisiti del progetto in modo più efficiente rispetto ai modelli tradizionali. La sua natura iterativa consente una risposta rapida a nuovi requisiti o a eventi imprevisti;
- *Ottima gestione dei rischi*: data la breve durata dei periodi, i problemi che possono essere riscontrati all'interno di essi saranno individuati velocemente ed inoltre avranno una dimensione ragionevole, permettendo dunque una risoluzione tempestiva e riducendo il rischio di fallimento del progetto;
- *Soddisfazione degli stakeholder*: il modello Agile promuove il coinvolgimento continuo degli stakeholder durante tutto il processo di sviluppo. Ciò garantisce che il prodotto finale soddisfi realmente le esigenze e le aspettative di chi l'ha commissionato, aumentandone così la soddisfazione complessiva;
- *Soddisfazione del team*: il modello Agile incoraggia l'auto-organizzazione dei membri del team e il coinvolgimento attivo in tutte le fasi del processo di sviluppo. Ciò porta a un maggiore senso di responsabilità e motivazione. Inoltre, consegnando risultati tangibili in periodi di tempo brevi, questo modello di sviluppo contribuisce anche a mantenere elevato il morale dei membri, i quali vedono il proprio lavoro tradursi in risultati concreti in tempi rapidi.

#pagebreak()

= *Periodi*
Per ogni periodo si riportano di seguito le seguenti informazioni:
- Pianificazione delle attività da svolgere al suo interno (avanzamento atteso), con tanto di potenziali rischi;
- Tempo stimato per poter completare tutte le attività previste;
- Confronto fra il lavoro svolto (avanzamento conseguito) e quello preventivato, con annessa analisi dei costi;
- Rischi effettivamente occorsi, valutandone il loro impatto e la loro mitigazione;
- Retrospettiva di periodo per capire cosa e come migliorare in futuro e cosa invece mantenere.
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


===== Retrospettiva
Questo primo periodo di lavoro ci ha ribadito l'importanza delle best practice comuni che ogni membro del gruppo deve seguire per tutta la durata del progetto: per questo motivo verrà data la precedenza alla terminazione di una prima versione stabile delle `Norme di Progetto`, con la previsione di ultimarla nella prima settimana del Periodo II. \
Lo studio condiviso delle librerie JMAP tra i diversi incaricati ha velocizzato l'apprendimento dei contenuti, risparmiando delle ore rispetto quanto preventivato. Questo metodo verrà sicuramente riproposto dal gruppo per lo studio di altre tecnologie. \
L'approccio adottato dai Responsabili per assegnare le attività si è rivelato corretto: le task sono state distribuite in modo equo ai diversi componenti del gruppo che hanno impiegato un numero congruo di ore per il loro svolgimento e hanno ultimato il lavoro entro i tempi stabiliti. \
Infine va migliorata la stima tramite preventivo del tempo necessario per poter completare tutte le attività, la quale è risultata essere leggermente imprecisa.

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

===== Retrospettiva
Il secondo periodo di lavoro ci ha fatto capire quanto sia importante promuovere una comunicazione attiva: riunioni con cadenza regolare consentono al gruppo di analizzare e affontare tempestivamente eventuali problemi riscontrati dai diversi componenti, identificandone facilmente le cause. Il disallinamento dovuto a problemi di comunicazione ci ha infatti rallentato e va di conseguenza evitato il più possibile in futuro.\
Inoltre va incoraggiato l'atteggiamento che è stato adottato dai Programmatori, i quali rapidamente hanno comunicato al gruppo le problematiche legate all'uso della libreria esterna, favorendo una comunicazione efficace per superarle. \
Infine è fondamentale migliorare ulteriormente la stima del tempo necessario attraverso preventivo per completare tutte le attività, poiché si è riscontrata nuovamente una leggera imprecisione. Nel primo periodo abbiamo sottostimato il tempo necessario, mentre nel secondo periodo lo abbiamo sovrastimato, quindi è cruciale trovare un equilibrio e adottare una maggiore precisione nella valutazione temporale delle attività.

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

===== Retrospettiva 
Il terzo periodo si è rivelato, come da aspettative, il più intenso dei tre. Affinchè il gruppo potesse partecipare alla prima revisione del prodotto prima di Natale, tutti i membri hanno sostenuto dei ritmi altissimi. Purtroppo l'obiettivo non è stato raggiunto.\ Nonostante gran parte della documentazione fosse stata ultimata, abbiamo sopravvalutato le nostre capacità ed ora necessitiamo di ulteriore lavoro per completare l'`Analisi dei Requisiti` e il PoC. \
Tutto sommato, il carico di lavoro poteva essere distribuito diversamente, magari su più periodi di lavoro, gravando meno pesantemente sui membri del gruppo prima di Natale.\ Abbiamo pianificato erroneamente, seguendo un obiettivo desiderabile, ma difficilmente realizzabile.

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

===== Retrospettiva
Il quarto periodo, coincidendo con le vacanze Natalizie, è risultato meno costante, specialmente riguardo le ore dedicate e la disponibilità dei singoli membri a partecipare agli incontri settimanali. Questa variabilità ha aggiunto ulteriore complessità ad un compito già difficile, come la stima dei preventivi svolta ad inizio periodo, la quale, per l'ennesima volta, si è dimostrata imprecisa. Pertanto, sarà quindi fondamentale migliorare in quest'attività nei prossimi periodi.\
All'interno del gruppo è stata molto apprezzata la disponibilità di alcuni membri nel dedicare più ore per evitare un rallentamento eccessivo nell'avanzamento complessivo del progetto. In futuro, però, sarebbe importante evitare situazioni simili, anche se ha evidenziato la volontà della maggior parte del gruppo di procedere a passo spedito.\ 
Infine l'aspetto fondamentale su cui concentrarsi nel corso del prossimo periodo è lo sviluppo del PoC, necessario per effettuare la candidatura per l'RTB, dato che ormai la documentazione è praticamente pronta.

=== Periodo V
Inizio: 2023-01-09\
Fine prevista: 2023-01-14\

==== Pianificazione
Durante lo scorso periodo il team Overture ha completato la redazione di tutta la documentazione di progetto necessaria fino ad ora. Conseguentemente non si prevede alcun ulteriore lavoro su di essa, se non per aggiornare `Piano di Qualifica` e `Piano di Progetto` e validare tutti i documenti.\
Per quanto riguarda l'organizzazione di questo periodo, abbiamo deciso di ridurre la durata di quest'ultimo ad una settimana, con lo scopo rifinire gli ultimi dettagli essenziali per poter completare tutto il lavoro necessario per la candidatura alla RTB.\
Facciamo presente che, qualora non fosse possibile candidarsi alla RTB al termine di questo periodo, allora dovremo ripianificare una futura data per la candidatura in quanto il team di sviluppo per un paio di settimane sarà impegnato a studiare per gli altri esami di questo semestre.\
I dettagli che intediamo rifinire per essere pronti alla candidatura RTB sono: 
- la validazione di tutti i documenti (compresi `Piano di Qualifica` e `Piano di Progetto` in seguito ai consueti aggiornamenti);
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