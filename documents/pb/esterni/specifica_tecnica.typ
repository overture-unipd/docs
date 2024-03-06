#import "//templates/document.typ": *

#show: project.with(
  title: "Specifica Tecnica",
  managers: p.bulychov,
  recipients: (
    p.vardanega,
    p.cardin,
    [_#(p.zextras)_],
  ),
  changelog: (
    "0.0.13", "2024-03-01", p.furno, p.bonavigo, 
    [
      Aggiunta la sottosezione 'Gestione delle richieste' all'interno della sezione 'Diagramma delle classi'.
    ],
    "0.0.12", "2024-02-29", p.amadori, p.bonavigo, 
    [
      Aggiunto 'Chain of Responsibility' all'interno della sezione 'Design pattern utilizzati'.
    ],
    "0.0.11", "2024-02-27", p.fabbian, p.amadori, 
    [
      Aggiunta la sottosezione 'Ingresso delle richieste nell'applicazione' all'interno della sezione 'Diagramma delle classi'.
    ],
    "0.0.10", "2024-02-26", p.bettin, p.bulychov, 
    [
      Aggiunto 'Dependecy injection' all'interno della sezione 'Design pattern utilizzati'.
    ],
    "0.0.9", "2024-02-24", p.amadori, p.bonavigo, 
    [
      Aggiunta la sezione 'Diagramma delle classi'.
    ],
    "0.0.8", "2024-02-20", p.bulychov, p.furno, 
    [
      Aggiunta la sezione 'Database'.
    ],
    "0.0.7", "2024-02-20", p.vedovato, p.fabbian, 
    [
      Aggiunta la sezione 'Architettura di deployment'.
    ],
    "0.0.6", "2024-02-19", (p.bonavigo,p.fabbian), p.bettin, 
    [
      Aggiunta la sezione 'Architettura logica'.
    ],
    "0.0.5", "2024-02-16", p.bonavigo, p.bettin, 
    [
      Aggiunta la sezione 'Tecnologie per il testing'.
    ],
    "0.0.4", "2024-02-16", p.fabbian, p.furno, 
    [
      Aggiunta la sezione 'Tecnologie per l'analisi del codice'.
    ],
    "0.0.3", "2024-02-15", p.bulychov, p.fabbian, 
    [
      Aggiunta la sezione 'Tecnologie per la codifica'.
    ],
    "0.0.2", "2024-02-15", p.vedovato, p.furno, 
    [
      Aggiunta la sezione 'Stato dei requisiti funzionali'.
    ],
    "0.0.1", "2024-02-12", (p.vedovato, p.fabbian), p.bettin, 
    [
      Struttura di base del documento e introduzione.
    ]
  ),
  show_images_list: true,
  show_tables_list: true,
  outline_depth: 3,
)

= Introduzione

== Scopo del documento
Lo scopo di questo documento è quello di elencare e motivare le scelte architetturali che il gruppo Overture ha intrapreso per la realizzazione dell'infrastruttura informatica richiesta. Il documento comprende anche i diagrammi delle classi e dei package al fine di spiegare in maniera più chiara e dettagliata il software sviluppato.

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
- `Glossario v1.0.0`: \ https://overture-unipd.github.io/docs/rtb/interni/glossario_v1.0.0.pdf
- `Analisi dei Requisiti v1.1.0`: \ https://overture-unipd.github.io/docs/rtb/esterni/analisi_dei_requisiti_v1.1.0.pdf
- Progettazione: le dipendenze fra le componenti, #p.cardin \ https://www.math.unipd.it/~rcardin/swea/2023/Object-Oriented%20Progamming%20Principles%20Revised.pdf
- Progettazione e programmazione: diagrammi delle classi (UML), #p.cardin \ https://www.math.unipd.it/~rcardin/swea/2023/Diagrammi%20delle%20Classi.pdf
- Progettazione: i _pattern_ architetturali, #p.cardin \ https://www.math.unipd.it/~rcardin/swea/2022/Software%20Architecture%20Patterns.pdf
- Progettazione: il _pattern Dependency Injection_, #p.cardin \ https://www.math.unipd.it/~rcardin/swea/2022/Design%20Pattern%20Architetturali%20-%20Dependency%20Injection.pdf
- Progettazione _software_ (T6), #p.vardanega \ https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T6.pdf
- Progettazione: i _pattern_ creazionali (GoF), #p.cardin \ https://www.math.unipd.it/~rcardin/swea/2022/Design%20Pattern%20Creazionali.pdf
- Progettazione: i _pattern_ strutturali (GoF), #p.cardin \ https://www.math.unipd.it/~rcardin/swea/2022/Design%20Pattern%20Strutturali.pdf
- Progettazione: i _pattern_ di comportamento (GoF), #p.cardin \ https://www.math.unipd.it/~rcardin/swea/2021/Design%20Pattern%20Comportamentali_4x4.pdf
- Programmazione: SOLID _programming_, #p.cardin \ https://www.math.unipd.it/~rcardin/swea/2021/SOLID%20Principles%20of%20Object-Oriented%20Design_4x4.pdf

#pagebreak()

= Tecnologie <Tech>

In questa sezione vengono elencate tutte le tecnologie utilizzate per l'implementazione del prodotto richiesto dal capitolato. 

== Tecnologie per la codifica
=== Linguaggi
#figure(tecnologieUsate(
  (
    "Java", "21 LTS", "Linguaggio di programmazione ad alto livello, orientato agli oggetti e a tipizzazione statica. Fortemente consigliato dall'azienda proponente Zextras dato che è il linguaggio principale nello stack tencologico di Carbonio."
  ),
), caption: [Linguaggi di programmazione usati per la codifica])
=== Strumenti e servizi
#figure(tecnologieUsate(
  (
    "Docker", "25.0.0", "Strumento di conteinerizzazione richiesto esplicitamente dall'azienda proponente. Ogni contenitore viene eseguito in modo isolato dagli altri. Si integra facilmente con Gradle tramite un plugin.",
    "Docker-compose", "2.24.0", "Strumento di conteinerizzazione utilizzato per la definizione di servizi multi-container. Semplifica la gestione e la scalabilità delle applicazioni.",
    "RethinkDB", "2.4.4", "Database NoSQL che supporta subqueries e changefeed. Facilita la gestione e le conversioni degli oggetti Json e consente di rappresentare facilmente dati complessi e annidati.",
    "Gradle", "8.6", "Strumento di automazione della build e di gestione delle dipendenze, progettato per la compilazione, il testing e la distribuzione di progetti software. Utilizza un linguaggio DSL basato su Groovy o Kotlin e supporta la build incrementale. ",
    "Caddy", "2.7.0", "Web server open-source che converte il traffico da HTTP a HTTPS. Si distingue per la sua facilità d'uso, configurazione automatizzata e supporto nativo per HTTPS. Necessario in quanto richiesto dai client."
  ),
), caption: [Strumenti e servizi usati per la codifica])
=== Framework
#figure(tecnologieUsate(
  (
    "Spark", "3.5.0", "Lightweight framework open-source per lo sviluppo di applicazioni web in Java. Ideale per progetti agili che cercano di mantenere la complessità sotto controllo."
  )
), caption: [Framework usati per la codifica])
=== Librerie
#figure(tecnologieUsate(
  (
    "Java JMAP iNPUTmice Library", "0.8.13", "Libreria consgliata dall'azienda proponente che sincronizza i dati tra client e server utilizzando il JSON Meta Application Protocol. Definisce classi per ogni operazione possibile, funzioni per operare su di esse e conversioni da e verso Json."
  )
), caption: [Librerie usate per la codifica])

#pagebreak()

== Tecnologie per l'analisi del codice
=== Analisi statica
#figure(tecnologieUsate(
  (
    "Compilatore Java", "JDK 21", "Traduce il codice sorgente scritto in linguaggio di programmazione Java in un formato eseguibile, generalmente chiamato bytecode Java. Il bytecode Java può essere eseguito da una macchina virtuale Java (JVM) su qualsiasi piattaforma che abbia una JVM disponibile, rendendo il codice Java altamente portabile.",
    "Spotless", "2.42.0", "Plugin Gradle open-source utilizzato per applicare automaticamente le convenzioni di formattazione del codice a progetti Java. Garantisce che il codice sorgente sia formattato secondo regole specifiche, migliorandone la leggibilità e la manutenibilità."
  )
), caption: [Tecnologie usate per l'analisi statica del codice])

=== Analisi dinamica
#figure(tecnologieUsate(
  (
    "Junit", "5.10.0", "Framework open source per l'automazione di unit testing per il linguaggio di programmazione Java. Offre un ambiente di sviluppo strutturato per la scrittura dei test, consentendo agli sviluppatori di verificare il comporamento delle singole unità di codice in modo efficiente e affidabile.",
    "Mockito", "5.10.0", "Framework open surce di testing per il linguaggio di programmazione Java. È utlizzato per la creazione, configurazione e gestione di oggetti mock nei test di unità. Consente agli sviluppatori di simulare il comporamento di oggetti reali durante l'esecuzione dei test.",
    "TestContainers", "1.19.4", "Framework open source che fornisce un'interfaccia per l'integrazione di container Docker nelle attività di testing. È particolarmente utile per lo sviluppo di test di integrazione che coinvolgono componenti dipendenti come database o qualsiasi altro servizio che può essere eseguito in un container Docker." 
  )
), caption: [Tecnologie usate per l'analisi dinamica del codice])

#pagebreak()

== Tecnologie per il testing
=== Linguaggi
#figure(tecnologieUsate(
  (
    "Python", "3.12.1", "Linguaggio di programmazione ad alto livello, interpretato e general-purpose. È noto per la sua sintassi chiara e leggibile, che lo rende molto adatto per sviluppare rapidamente script e applicazioni."
  )
), caption: [Linguaggi di programmazione usati per il testing])

=== Framework
#figure(tecnologieUsate(
  (
    "Locust","2.23.1","Framework open source di testing di carico e stress delle applicazioni. È scritto in Python e permette agli sviluppatori di scrivere test di carico simulando il comporamento di migliaia di utenti concorrenti."
  )
), caption: [Framework utilizzati per il testing])

#pagebreak()

= Architettura
La descrizione dell'architettura del prodotto adotta un approccio top-down, partendo dalla struttura generale per poi scendere nel dettaglio.

== Architettura logica
Nell'architettura logica che abbiamo scelto di adottare, il server di posta è organizzato in un modello esagonale che riflette una suddivisione chiara delle responsabilità e delle funzionalità delle varie componenti, andando a porre al centro la business logic, la quale non andrà così a dipendere da altre parti del sistema riguardanti, per esempio, logiche di persistenza.

#figure(image("//imgs/Specifica_Tecnica/ArcLogica.jpeg", width: 100%), caption: [Architettura logica del prodotto])

All'esterno dell'esagono, in entrata, è presente una componente dedicata alla gestione delle richieste provenienti dai client, fornendo un'interfaccia per l'ingresso di quest'ultime nel sistema. Questa classe è responsabile di gestire gli oggetti JSON forniti dagli utilizzatori adattandoli per garantire una coerenza con la logica di business del sistema. È il punto di contatto tra il server di posta elettronica e il mondo esterno, quindi i client che interagiscono con il nostro prodotto.

Al centro dell'esagono risiede poi la business logic del server di posta elettronica. Questa è la parte centrale del sistema, dove avviene l'elaborazione delle richieste in arrivo. Qui si trovano quindi le implementazioni delle funzionalità come la gestione delle email, la gestione delle caselle di posta, la gestione delle condivisioni di quest'ultime ed altro ancora, oltre a tutti gli oggetti della libreria specifici del dominio del nostro prodotto. La business logic costituisce il cuore del server di posta elettronica, garantendo il corretto funzionamento del sistema e la coerenza delle operazioni svolte.

Infine, all'esterno dell'esagono, in uscita, troviamo l'insieme di componenenti che si occupano dell'interfacciamento con il database. Queste classi hanno il ruolo di gestire la persistenza dei dati necessari per il funzionamento del sistema, inclusi salvataggio delle email, memorizzazione delle cartelle, persistenza degli account e così via. Assicurano che i dati vengano salvati e recuperati in modo affidabile e efficiente.

L'adozione di questa architettura esagonale favorisce una gestione modulare e scalabile del server di posta elettronica. Ogni componente svolge un ruolo specifico e ben definito, facilitando la manutenzione, l'aggiornamento e l'espansione del sistema nel tempo. Inoltre, la chiara separazione delle responsabilità e delle funzionalità promuove la testabilità del sistema, consentendo una maggiore fiducia nella robustezza e nella stabilità complessiva del prodotto.

Un grande vantaggio di questa architettura è la facilità nel cambiare, per esempio, il database sottostante. Supponendo infatti che si voglia aggiornare il sistema di persistenza dei dati, grazie alla netta separazione delle componenti e all'interfacciamento ben definito con il database è relativamente semplice farlo senza dover apportare modifiche significative al resto del sistema. Questa flessibilità consente di adattare il server di posta elettronica alle esigenze future e alle evoluzioni tecnologiche, garantendo una maggiore longevità e versatilità del prodotto.

== Architettura di deployment

=== Struttura a monolite vs struttura a microservizi
Dal momento in cui il prodotto software che dobbiamo andare a realizzare ha lo scopo di fornire una implementazione per un nuovo protocollo, per poi successivamente testarne le performance con degli stress test, la scelta di un architettura a monolite rispetto che ad altre, come quella a microservizi, è motivata da una vasta gamma di fattori.\
Prima di tutto, come detto prima, il software non necessiterà di particolari espansioni future, una volta forniti i risultati degli stress test essa verra utilizzata dal committente per effettuare ulteriori test o al massimo per osservare come abbiamo implementato certe funzionalità di jmap nel caso volessero integrarle nei loro sistemi.\
Fatte queste premesse, l'approccio monolitico è quindi preferito per la sua rapidità e semplicità. L'applicazione è destinata ad essere di dimensioni limitate e a svolgere un compito specifico, il team dunque intende semplificare lo sviluppo senza la necessità di gestire la complessità aggiuntiva introdotta da un'architettura a microservizi.\
Inoltre, in un progetto dove il team di sviluppo ha un esperienza di programmazione scarsa e necessita di modificare e correggere continuamente alcune parti del software, l'architettura monolitica risulta essere più gestibile in quanto permette di semplificare il processo di sviluppo riducendo la necessità di coordinazione tra diversi servizi, come richiesto dalle architetture a microservizi.

==== Conclusioni
L'architettura monolitica è raccomandata per applicazioni semplici e per prototipi, semplificando lo sviluppo senza la necessità di integrare molteplici servizi. D'altra parte l'architettura a microservizi si adatta meglio a sistemi complessi offrendo un'aggiunta flessibile di nuove funzionalità.\
Per la scelta dell'architettura è anche fondamentale conoscere le competenze generali del team di sviluppo. Per lo sviluppo con i microservizi sono generalmente essenziali conoscenze tecniche specifiche riguardanti cloud, API e contenerizzazione.\
In secondo luogo la scelta dell'architettura è anche condizionata dall'infrastruttura con cui si ha a che fare: le applicazioni monolitiche operano su un singolo server, i microservizi traggono maggiore beneficio dall'ambiente cloud, offrendo scalabilità e distribuzione.\
Per conludere, il team _Overture_ riconosce i vantaggi che alcune architetture più complesse, come quella a microservizi, porterebbero sicuramente al prodotto sviluppato, ma per una serie di ragioni legate alla complessità instriseca delle architetture stesse riteniamo che nel nostro scenario i vantaggi non coprano assolutamente gli sforzi e i tempi necessari nel presente per adottare queste architetture. Per questo abbiamo optato per una architettura monolitica.

=== Docker e conteinerizzazione dell'applicazione
L'uso della conteinerizzazione nell'ambito dell'architettura di deployment è considerato interessante per i seguenti motivi (i quali ci hanno fatto comprendere il motivo per cui il comittente aveva inserito la containerizzazione dell'applicazione come requisito obbligatorio):
- Portabilità: i container forniscono un ambiente isolato che include tutte le dipendenze. Questo rende l'applicazione altamente portabile tra diversi ambienti, eliminado le preoccupazioni legate alle differenze di configurazione tra i sistemi di sviluppo e produzione.
- Consistenza: la containerizzazione garantisce che l'applicazione venga eseguita in un ambiente consistente, indipendentemente dalla macchina host. Ciò riduce i problemi legati a differenze di configurazione tra le diverse fasi di sviluppo e deployment, migliorando la coerenza del processo.
- Scalabilità: i container sono leggeri e possono essere avviati rapidamente. Questo facilita la scalabilità orizzontale, consentendo l'esecuzione di più istanze di un'applicazione su più container.
- Gestione delle risorse: i container condividono il kernel del sistema operativo host, riducendo l'overhead rispetto a soluzioni di virtualizzazione tradizionali. Ciò consente di utilizzare in modo più efficiente le risorse hardware, riducendo i costi e migliorando le prestazioni complessive del sistema.

Complessivamente, la containerizzazione offre numerosi vantaggi nell'ambito dell'architettura di deployment, migliorando l'efficienza, la portabilità e la gestione delle applicazioni.

==== Come lo abbiamo utilizzato noi
Se andiamo sulla cartella root del nostro progetto noteremo che c'è un file chiamato "docker-compose.yml". Questo definisce una configurazione di Docker Compose per orchestrare i container di tre servizi diversi: web server, database e caddy.\
Il servizio web server è attivato mediante l'immagine custom `overture-unipd/jmap:latest` ricavata dall'immagine di base `openjdk:21-jdk-slim` e esposta nella porta 8000.\
Il servizio di database è creato mediante l'immagine `rethinkdb:2.4.2-bullseye-slim` disponibile direttamente sul repository pubblico al seguente link https://hub.docker.com/_/rethinkdb mappando le porte 9000, 29015 e 28015 del container con rispettivamente le porte 8080. 29015 e 28015 dell'host e configurando i volumi in modo tale da consentire la persistenza dei dati del database tra le esecuzioni del container.\
Il servizio di caddy invece lo attiviamo con l'immagine custom `overture-unipd/caddy:latest` ricavata dall'immagine di base `caddy:latest` ma integrata con il plugin per Duck DNS. Anche qui vengono mappate le porte 80 e 443 del container con quelle dell'host e vengono configurati i  volumi Docker per condividere dati tra il container e l'host, ad esempio per persistere i dati del server web Caddy e per fornire un file di configurazione Caddy personalizzato.\

Si nota che tutti i volumi che i servizi montano, sono riportati alla fine del file "docker-compose.yml" dopo il record `volumes`.

== Design pattern utilizzati

=== Dependency injection

==== Motivazioni e studio del design pattern
In qualsiasi progetto non banale, quindi costituito da un numero di componenti considerevole, risulta fondamentale la gestione e quindi la minimizzazione delle dipendenze.
Questo non tanto nel momento in cui si sviluppa il codice, ma più nella fase di manutenzione o implementazione di nuove features nel momento in cui il software è gia in produzione.
Lo scopo di questo design pattern è quindi quello di separare il comportamento di un componente dalla risoluzione delle sue dipendenze con l'obiettivo di semplificare l'albero delle dipendenze. Se tale albero diventa troppo complesso (aggiungendo debito tecnico) si ha una situazione in cui ogni componente del progetto dipende da altri, facendo si che una modifica a quest'ultimo comporti delle modifiche a cascata di tutti gli altri componenti.

==== Implementazione del design pattern
Il gruppo di progetto ha deciso di implementare il pattern dependecy injection con il framework Guice. Semplicemente, Guice ci permette di realizzare questo design pattern evitando di scrivere tutto il boilerplate code necessario se lo implementassimo con il metodo tradizionale senza l'utilizzo di strumenti esterni.
In parole povere, Guice allevia la necessità di avere componenti factories nel proprio codice e di usare la parola chiave `new` per ogni oggetto che si vuole costruire. Il costrutto $at$Inject di Guice è il nuovo `new` di Java. Bisognerà comunque implementare delle classi factories in certi casi, ma il codice non dipenderà direttamente da esse e il codice risultante sarà più facile da modificare, da testare e da riutilizzare.

===== Concetti principali di Guice ed esempio di utilizzo
Dependecy Injection  è un pattern dove le classi dichiarano le loro dipendenze come argomenti al posto di creare oggetti legati a queste dipendenze direttamente al loro interno. Ad esempio, un client che vorrebbe chiamare un servizio non dovrebbe sapere come costruire questo servizio, ma al contrario, del codice esterno deve essere responsabile per fornire questo servizio al client.

====== Costruttore $at$Inject
Tutte le classi di Java che sono annotate con $at$Inject possono essere chiamate da Guice tramite un processo di "costructor injection", dove ogni argomento viene creato e fornito da Guice stesso.
Questo è un esempio di classe demo che usa il "costructor injection":
```java
class Saluto {
  private final String messaggio;
  private final int conta;


  // La classe Saluto dichiara che necessita di una stringa per il messaggio
  // e un intero che rappresenta il numero di volte che un messaggio è
  // stampato.
  // L'annotazione @Inject segna il costruttore come istanziabile da Guice.
  @Inject
  Saluto(@Messaggio String messaggio, @Conta int conta) {
    this.messaggio = messaggio;
    this.conta = conta;
  }

  void diciCiao() {
    for (int i=0; i < conta; i++) {
      System.out.println(messaggio);
    }
  }
}
```

La classe Saluto ha un costruttore che è chiamato quando l'applicazione chiede a Guice di istanziare un oggetto Saluto. Guice creerà i due argomenti richiesti e invocherà il costruttore. Le dipendeze, che sono gli argomenti da passare al costruttore, sono noti a Guice grazione ai codiddetti: Moduli, che soddisfano queste dipendenze.

====== Moduli di Guice
I moduli sono dei costrutti di Guice che permettono di soddisfare le dipendenze richieste dal costruttore di una classe. Questo è fatto grazie alla creazione di una classe (il modulo appunto) che specifica come soddisfare tali dipendenze automaticamente.
Ecco un esempio di modulo che soddisfa le dipendenze della classe Saluto:
```java

import com.google.inject.Provides;

class DemoModulo extends AbstractModule {
  @Provides
  @Conta
  static Integer fornisciConta() {
    return 3;
  }

  @Provides
  @Messaggio
  static String fornisciMessaggio() {
    return "hello world";
  }
}

```

====== Utilizzo 
Incapsuliamo il codice precedente in una classe apposita di demo:
```java

package guicedemo;

import static java.lang.annotation.RetentionPolicy.RUNTIME;

import com.google.inject.AbstractModule;
import com.google.inject.Guice;
import com.google.inject.Injector;
import com.google.inject.Key;
import com.google.inject.Provides;
import java.lang.annotation.Retention;
import javax.inject.Inject;
import javax.inject.Qualifier;

public class GuiceDemo {
  @Qualifier
  @Retention(RUNTIME)
  @interface Messaggio {}

  @Qualifier
  @Retention(RUNTIME)
  @interface Conta {}

  static class DemoModulo extends AbstractModule {
  @Provides
  @Conta
  static Integer fornisciConta() {
    return 3;
  }

  @Provides
  @Messaggio
  static String fornisciMessaggio() {
    return "hello world";
  }

  static class Saluto {
    private final String messaggio;
    private final int conta;
  
    @Inject
    Saluto(@Messaggio String messaggio, @Conta int conta) {
      this.messaggio = messaggio;
      this.conta = conta;
    }
  
    void diciCiao() {
      for (int i=0; i < conta; i++) {
        System.out.println(messaggio);
      }
    }
  }
}

```


Ecco come possiamo usare l'infrastruttura creata precedentemente e testare la potenza di Guice:
```java

public static void main(String[] args) {
    /*
     * Guice.createInjector() prende uno o più moduli e ritorna una nuova istanza di Inject.
    */
    Injector injector = Guice.createInjector(new DemoModulo());

    /*
     * Ora che abbiamo l'injector possiamo creare un istanza della classe Saluto.
     */
    Saluto saluto = injector.getInstance(Saluto.class);

    // Stampa "hello world" 3 volte nella console.
    greeter.diciCiao();
  }

```

==== Integrazione del pattern
Per vedere come abbiamo utilizzato Guice nel nostro progetto, basta prendere una classe che ha un costruttore: come la classe `AccountImpl`. 

```java

@Inject
AccountImpl(Connection conn) {
    this.conn = conn;
}

```


Notiamo che il costruttore della classe dichiara delle dipendenze tra la classe `AccountImpl` e la classe `Connection`.\
Il costruttore è marchato con l'annotazione $at$Inject per denotare che Guice sarà responasabile di fornire un'istanza di `Connection` quando si vorrà creare un'istanza di `AccountImp`.\

La configurazione di del modulo Guice è fatta su un'altra file: `Init.java` che si occupa di soddisfare le dipendenze necesarie per la classe connection con il costrutto Injector.
```java

Injector injector = Guice.createInjector(
    new DatabaseModule(),
    new WebserverModule(),
);

```

Nel momento in cui si volesse ottenere un'stanza di `AccountImpl` basterà chiamare il metodo getInstance cono l'oggetto injector creato precedentemente:

```java

Injector injector = Guice.createInjector(/* ... */);
AccountImpl accountImpl = injector.getInstance(AccountImpl.class);

```

Con l'injector creato utilizzando Guice, è possibile ottenere un'istanza di `AccountImpl`. Guice si occuperà di soddisfare le dipendenze necessarie, come la `Connection`, iniettandole automaticamente nel costruttore di `AccountImpl`.

In generale, l'utilizzo di Guice semplifica la gestione delle dipendenze nel codice, separando la creazione delle istanze delle classi e la gestione delle dipendenze in un framework esterno. Ciò rende il codice più modulare, facilitando la manutenzione e il testing.

=== Chain of responsability

==== Studio del pattern
Il design pattern "chain of responsibility" è un pattern comportamentale che consente di creare una catena di oggetti responsabili del trattamento di una richiesta, in modo che ogni oggetto nella catena possa decidere se trattare la richiesta o passarla al prossimo oggetto nella catena.

Nel nostro caso il pattern è stato individuato poichè dovevamo gestire le richieste provenienti dai client che si interfacciano con il nostro prodotto e volevamo farlo evitando di specificare esplicitamente quale oggetto dovesse gestire la richiesta. Chain of responsibility infatti va a definire un Handler, il quale è un'interfaccia o una classe astratta che definisce un metodo per gestire le richieste e mantiene un riferimento al prossimo oggetto nella catena. Il ConcreteHandler poi implementerà l'interfaccia o la classe astratta per gestire le richieste specifiche, decidendo se può gestire una richiesta o se deve passarla al prossimo gestore nella catena. Quindi, quando il client invia una richiesta, questa viene inviata al primo oggetto nella catena, il quale deciderà se può gestire la richiesta o se deve passarla al prossimo oggetto nella catena. Se un oggetto nella catena è in grado di gestire la richiesta, allora la catena interrompe il passaggio della richiesta agli altri oggetti, mentre se nessun oggetto della catena è in grado di gestire la richiesta, il client può essere informato di ciò.

Questo pattern è stato scelto poichè garantisce i seguenti vantaggi: 
- riduce l'accoppiamento;
- rende flessibile l'aggiunta o la rimozione di nuovi gestori di richieste;
- permette di assegnare dinamicamente responsabilità agli oggetti senza conoscere esplicitamente i dettagli dell'implementazione.

È dunque perfetto per il nostro caso, dove vogliamo gestire nel modo migliore possibile la vastità di richieste provenienti dai client. Grazie ad esso potremo rendere facilmente estendibile il codice, in modo che anche le funzionalità che non andremo ad implentare possano essere facilmente aggiunte in futuro tramite i relativi gestori. Infine ci permette di evitare di dover sapere come viene gestita una richiesta o chi la gestirà, garantendo una migliore modularità e manutenibilità del codice.

#pagebreak()

== Diagramma delle classi
#figure(image("//imgs/Specifica_Tecnica/UML.png", width: 100%), caption: [Diagramma delle classi])

=== Ingresso delle richieste nell'applicazione
#figure(image("//imgs/Specifica_Tecnica/UML1.png", width: 35%), caption: [Modellazione delle componenti che gestiscono l'ingresso delle richieste nell'applicazione])

Il pezzo di diagramma riportato illustra le componenti fondamentali per gestire l'ingresso delle richieste provenienti dai client all'interno del sistema. Vi si trovano le seguenti classi:
- *Request*: gestore principale dell'ingresso delle richieste in arrivo (input), il cui scopo è quello di definire molteplici rotte utilizzando il framework Spark. Include al suo interno la gestione iniziale delle operazioni come l'autenticazione, la gestione delle sessioni e la manipolazione dei dati attraverso diverse operazioni come upload e download;
- *RequestPort*: porta in ingresso che funge da punto di accesso per l'interazione tra il dominio dell'applicazione (core) e il mondo esterno. Essa definisce un insieme di operazioni che rappresentano le azioni che l'applicazione può eseguire in risposta alle richieste esterne provenienti dai client. La sua implementazione è responsabilità di classi concrete che forniranno la logica specifica per gestire tali operazioni in modo efficace all'interno dell'applicazione, mantenendo così la separazione tra la logica di business dell'applicazione e i dettagli di implementazione relativi alle richieste in arrivo;
- *RequestHandler*: implementazione dell'interfaccia RequestPort. Essenzialmente, funge da intermediario tra le richieste provenienti dall'esterno dell'applicazione e la logica di business sottostante. Riceve le richieste in arrivo e in base al tipo di richiesta e ai dati associati, determina come instradarla all'interno dell'applicazione. 

=== Gestione delle richieste
#figure(image("//imgs/Specifica_Tecnica/UML2.png", width: 35%), caption: [Modellazione delle componenti che gestiscono le rischieste all'interno dell'applicazione])

Le componenti riportate nel frammento di diagramma soprastante sono quelle necessarie per la gestione delle richieste, implementando dunque la business logic del prodotto. Vi si trovano le seguenti classi:
- *Dispatcher*: componente responsabile di indirizzare le richieste in arrivo ai corrispondenti handler di metodo (come Email, Mailbox, ecc.), dove vengono effettivamente eseguite le operazioni richieste. Fornisce risposte appropriate in base al tipo di operazione istanziata, come l'invio o la ricezione di email e la gestione dei dati correlati. Questo processo avviene attraverso la decodifica delle richieste in arrivo, l'esecuzione delle operazioni richieste e la restituzione delle risposte appropriate ai client;
- *Email*: componente responsabile della gestione delle email all'interno del sistema;
- *EmailSubmission*: componente responsabile della gestione dell'invio di un'email per la consegna a uno o più destinatari all'interno del sistema;
- *Authentication*: componente responsabile della gestione dell'autenticazione all'interno del sistema;
- *Account*: componente responsabile della gestione degli account all'interno del sistema;
- *Identity*: componente responsabile della gestione delle identità all'interno del sistema;
- *Session*: componente responsabile della gestione delle sessioni all'interno del sistema;
- *Mailbox*: componente responsabile della gestione delle caselle di posta all'interno del sistema;
- *MailboxInfo*: componente responsabile della gestione delle informazioni riguardanti le caselle di posta all'interno del sistema;
- *Thread*: componente responsabile della gestione dei thread all'interno del sistema;
- *Echo*: componente responsabile della gestione degli echo all'interno del sistema;
- *Update*: componente responsabile della sincronizzazione all'interno del sistema;
- *UpdateDeserializer*: componente responsabile della deserializzazione degli oggetti di tipo Update dalla loro rappresentazione JSON;
- *Converter*: componente il cui scopo è fornire funzionalità di serializzazione e deserializzazione di oggetti utilizzando la libreria Gson.

#pagebreak

== Database
Come già citato nella sezione #link(<Tech>)[*Tecnologie*] del documento, il nostro prodotto utilizza RethinkDB come database NoSQL per la gestione dei dati. Il database viene inizializzato con la creazione delle collezioni richieste (account, email, mailbox, attachment, update...) e l'inserimento di dati di esempio. Successivamente, viene utilizzato per l'aggiunta di nuovi dati o la sostituzione di quelli esistenti. 

=== Scelta di RethinkDB
RethinkDB è stata la nostra scelta principale per molteplici motivi che rispecchiano le esigenze uniche del progetto: la necessità di un sistema altamente flessibile, scalabile e performante, in grado di adattarsi a diverse condizioni operative, che includono sia situazioni normali che di elevato carico e sovraccarico.\

=== Funzionalità di RethinkDB
- *Modello di dati flessibile*: la natura NoSQL di questo database ci consente di modellare i dati in modo flessibile, senza vincoli rigidi di schema. Ciò significa che possiamo memorizzare email, cartelle, metadati e altri dati associati in un formato che si adatta alle esigenze specifiche del nostro sistema, consentendoci di gestire la complessità del nostro dominio in modo efficiente;
- *Scalabilità Orizzontale*: RethinkDB è progettato per scalare orizzontalmente, consentendo al nostro sistema di gestire volumi crescenti di dati e carichi di lavoro variabili. Questa funzionalità è fondamentale per assicurare che il sistema possa crescere in modo fluido con l'aumentare del carico, senza compromettere le prestazioni o la disponibilità del servizio;
- *Real time*: RethinkDB è stato progettato per supportare applicazioni che richiedono aggiornamenti in tempo reale dei dati grazie alla sua capacità di fornire un flusso continuo di cambiamenti ai dati attraverso i feed dei cambiamenti: questo lo rende particolarmente adatto per l'integrazione con un server di posta elettronica.
RethinkDB offre, inoltre, un potente sistema di query che semplifica l'accesso e la manipolazione dei dati, inclusi strumenti come subqueries e changefeed.
- *Subqueries*: sono query annidate all'interno di altre query e consentono agli sviluppatori di scrivere query più complesse e efficienti per soddisfare le esigenze specifiche delle loro applicazioni;
- *Changefeeds*: permettono agli sviluppatori di tracciare le modifiche nei dati e di ricevere notifiche istantanee quando avvengono cambiamenti nel database, facilitando lo sviluppo di applicazioni reattive.


=== Conclusioni
L'adozione di RethinkDB nel nostro server di posta elettronica rappresenta un elemento chiave nella nostra strategia di gestione dei dati. Grazie alla sua flessibilità, scalabilità e capacità di query avanzate, siamo in grado di offrire un servizio di posta elettronica affidabile, efficiente e altamente performante. Questo ci permette di ottenere i migliori risulati possibili durante i test di carico (stress test) richiesti dal proponente.
 

#pagebreak()

= Stato dei requisiti funzionali
#figure(
  requisitiSoddisfatti(
  (
    "R-001-F-2", "Desiderabile", "L’utente che utilizza un client di posta elettronica per interagire con il server deve autenticarsi all’interno del sistema.", "Non soddisfatto",
    "R-002-F-2", "Desiderabile", "È necessario che il client fornisca all’interno della richiesta l’indirizzo email personale dell’utente per procedere con l’autenticazione.", "Non soddisfatto",
    "R-003-F-2", "Desiderabile", "È necessario che il client fornisca all’interno della richiesta la password associata all’indirizzo email personale dell’utente per procedere con l’autenticazione.", "Non soddisfatto",
    "R-004-F-2", "Desiderabile", "Se la fase di autenticazione è fallita allora è necessario che il client riceva dal server una risposta con eventuali dettagli che ne indicano il motivo.", "Non soddisfatto",
    "R-005-F-1", "Obbligatorio", "Il client deve essere in grado di reperire la risorsa JMAP Session, contenente informazioni sulle capacità del server, dettagli sull’account dell’utente e le URL per le richieste API future, in modo da poter interagire con dati e servizi offerti dal server.", "Non soddisfatto",
    "R-006-F-1", "Obbligatorio", "È necessario che il client riceva in risposta l'errore \"unkownCapability\" in caso di esecuzione di una richiesta con proprietà \"using\" non supportata dal server.", "Non soddisfatto",
    "R-007-F-1", "Obbligatorio", "È necessario che il client riceva in risposta l'errore \"notJSON\" se il contenuto di una richiesta inviata al server non era application/json o se la richiesta non è stata interpretata dal server come I-JSON.", "Non soddisfatto",
    "R-008-F-1", "Obbligatorio", "È necessario che il client riceva in risposta l'errore \"notRequest\" se una richiesta JSON non ha corrisposto alla firma di tipo dell'oggetto di richiesta (Request).", "Non soddisfatto",
    "R-009-F-1", "Obbligatorio", "È necessario che il client riceva in risposta l'errore \"limit\" in caso di inserimento di una richiesta che supera uno dei limiti definiti sull'oggetto di capacità, come maxSizeRequest, maxCallsInRequest o maxCurrentRequests.", "Non soddisfatto",
    "R-010-F-1", "Obbligatorio", "È necessario che il client riceva in risposta l'errore \"serverUnavailable\" in caso di inserimento di una richiesta che necessita di alcune risorse interne del server momentaneamente non disponibili.", "Non soddisfatto",
    "R-011-F-1", "Obbligatorio", "È necessario che il client riceva in risposta l'errore \"serverFail\" in caso si verifichi un errore inaspettato o sconosciuto durante l'elaborazione di una sua richiesta dal server.", "Non soddisfatto",
    "R-012-F-1", "Obbligatorio", "È necessario che il client riceva in risposta l'errore \"serverPartialFail\" e proceda risincronizzando i dati in caso si verifichi un errore inaspettato o sconosciuto durante l'elaborazione di una sua richiesta dal server.", "Non soddisfatto",
    "R-013-F-1", "Obbligatorio", "È necessario che il client riceva in risposta l'errore \"unknownMethod\" in caso di inserimento di una richiesta contenente un metodo non riconosciuto dal server.", "Non soddisfatto",
    "R-014-F-1", "Obbligatorio", "È necessario che il client riceva in risposta l'errore \"invalidArguments\" se uno degli argomenti di un metodo fornito all'interno di una richiesta al server è di tipo errato, non valido o, nel caso in cui sia obbligatorio, è assente.", "Non soddisfatto",
    "R-015-F-1", "Obbligatorio", "È necessario che il client riceva in risposta l'errore \"invalidResultReference\" se uno degli argomenti di un metodo fornito all'interno di una richiesta al server ha utilizzato un riferimento di risultato che non è stato possibile risolvere da parte del server.", "Non soddisfatto",
    "R-016-F-1", "Obbligatorio", "È necessario che il client riceva in risposta l'errore \"forbidden\" in caso utilizzi, all'interno di una richiesta al server, un metodo la cui esecuzione violerebbe una Access Control List (ACL) o un’altra policy di autorizzazione.", "Non soddisfatto",
    "R-017-F-1", "Obbligatorio", "È necessario che il client riceva in risposta l'errore \"accountNotFound\" se l’\"accountID\" fornito all'interno di una richiesta al server non corrisponde a un account valido.", "Non soddisfatto",
    "R-018-F-1", "Obbligatorio", "È necessario che il client riceva in risposta l'errore \"accountNotSupportedByMethod\" se all'interno di una richiesta al server è presente un metodo o tipo di dato non supportato dall’\"accountID\" fornito.", "Non soddisfatto",
    "R-019-F-1", "Obbligatorio", "È necessario che il client riceva in risposta l'errore \"accountReadOnly\" se all'interno di una richiesta al server è presente un metodo che tenta di modificare lo stato nonostante l’account sia in sola lettura.", "Non soddisfatto",
    "R-020-F-1", "Obbligatorio", "È necessario che il client riceva in risposta l'errore \"cannotCalculateChanges\" se, in seguito all'inserimento di una richiesta, il server non possa calcolare le modifiche dello stato dalla stringa di stato fornita dal client.", "Non soddisfatto",
    "R-021-F-1", "Obbligatorio", "È necessario che il client riceva in risposta l'errore \"overQuota\" se una richiesta inserita nel server richiede la creazione di oggetti che per dimensione o quantità superano il limite imposto dal server.", "Non soddisfatto",
    "R-022-F-1", "Obbligatorio", "È necessario che il client riceva in risposta l'errore \"notFound\" se una richiesta inserita nel server fornisce degli ID che non possono essere trovati.", "Non soddisfatto",
    "R-023-F-1", "Obbligatorio", "È necessario che il client riceva in risposta l'errore \"willDestroy\" se ha richiesto che un oggetto fosse sia aggiornato che distrutto all'interno della stessa richiesta al server.", "Non soddisfatto",
    "R-024-F-1", "Obbligatorio", "È necessario che il client riceva in risposta l'errore \"tooLarge\" se una richiesta inserita nel server richiede la creazione di un oggetto che supera il limite definito dal server per la dimensione massima per un oggetto di quel tipo.", "Non soddisfatto",
    "R-025-F-1", "Obbligatorio", "È necessario che il client riceva in risposta l'errore \"rateLimit\" se una richiesta inserita nel server comporta la creazione di un oggetto per cui sono stati creati troppi oggetti quel tipo di recente, raggiungendo un limite di frequenza definito dal server.", "Non soddisfatto",
    "R-026-F-1", "Obbligatorio", "È necessario che il client riceva in risposta l'errore \"invalidPatch\" se una richiesta inserita nel server fornisce un PatchObject non valido per modificare il record.", "Non soddisfatto",
    "R-027-F-1", "Obbligatorio", "È necessario che il client riceva in risposta l'errore \"invalidProperties\" se una richiesta inserita nel server fornisce un record non valido.", "Non soddisfatto",
    "R-028-F-1", "Obbligatorio", "È necessario che il client riceva in risposta l'errore \"singleton\" se una richiesta inserita nel server tentasse di agire erroneamente su un tipo singleton.", "Non soddisfatto",
    "R-029-F-1", "Obbligatorio", "È necessario che il client riceva in risposta l'errore \"requestTooLarge\" se una richiesta inserita nel server contiene un numero di azioni che supera il massimo che il server è disposto a elaborare in una singola chiamata di metodo interna alla richiesta.", "Non soddisfatto",
    "R-030-F-1", "Obbligatorio", "È necessario che il client riceva in risposta l'errore \"stateMismatch\" se una richiesta inserita nel server contiene un argomento ifInState e questo non corrisponde allo stato attuale.", "Non soddisfatto",
    "R-031-F-1", "Obbligatorio", "È necessario che il client riceva in risposta l'errore \"blobNotFound\" se una richiesta inserita nel server contiene almeno un ID blob fornito per una parte del corpo dell'email che non esiste.", "Non soddisfatto",
    "R-032-F-1", "Obbligatorio", "È necessario che il client riceva in risposta l'errore \"tooManyKeywords\" se una richiesta inserita nel server modifica un numero di parole chiave dell'email superiore al limite massimo definito dal server.", "Non soddisfatto",
    "R-033-F-1", "Obbligatorio", "È necessario che il client riceva in risposta l'errore \"tooManyMailboxes\" se una richiesta inserita nel server modifica un numero di cartelle a cui appartiene l'email superiore al limite massimo definito dal server.", "Non soddisfatto",
    "R-034-F-1", "Obbligatorio", "È necessario che il client riceva in risposta l'errore \"alreadyExists\" se una richiesta inserita in un server che vieta i duplicati contiene un record già esistente nell'account di destinazione.", "Non soddisfatto",
    "R-035-F-1", "Obbligatorio", "È necessario che il client riceva in risposta l'errore \"fromAccountNotFound\" se una richiesta inserita nel server contiene un fromAccountId che non corrisponde a nessun account valido.", "Non soddisfatto",
    "R-036-F-1", "Obbligatorio", "È necessario che il client riceva in risposta l'errore \"fromAccountNotSupportedByMethod\" se una richiesta inserita nel server contiene un fromAccountId che non supporta un tipo di dato utilizzato.", "Non soddisfatto",
    "R-037-F-1", "Obbligatorio", "È necessario che il client riceva in risposta l'errore \"anchorNotFound\" se una richiesta inserita nel server contiene un argomento di ancoraggio che non è stato trovato nei risultati della query.", "Non soddisfatto",
    "R-038-F-1", "Obbligatorio", "È necessario che il client riceva in risposta l'errore \"unsupportedSort\" se una richiesta inserita nel server presenta una clausola di ordinamento non supportata o un metodo di collezione non riconosciuto dal server.", "Non soddisfatto",
    "R-039-F-1", "Obbligatorio", "È necessario che il client riceva in risposta l'errore \"unsupportedFilter\" se una richiesta inserita nel server contiene un filtro che il server non è grado di elaborare.", "Non soddisfatto",
    "R-040-F-1", "Obbligatorio", "È necessario che il client riceva in risposta l'errore \"tooManyChanges\" se una richiesta inserita nel server contiene un numero di modifiche superiore all'argomento maxChanges inserito del client.", "Non soddisfatto",
    "R-041-F-1", "Obbligatorio", "È necessario che il client riceva in risposta l'errore \"mailboxHasChild\" se una richiesta inserita nel server desidera rimuovere una cartella(Mailbox) che ha ancora almeno una cartella figlia.", "Non soddisfatto",
    "R-042-F-1", "Obbligatorio", "È necessario che il client riceva in risposta l'errore \"mailboxHasEmail\" se una richiesta inserita nel server, con l'argomento onDestroyRemoveEmails impostato su false, desidera rimuovere una cartella(Mailbox) che ha al suo interno almeno una email.", "Non soddisfatto",
    "R-043-F-1", "Obbligatorio", "È necessario che il client riceva in risposta l'errore \"invalidEmail\" se una richiesta inserita nel server contiene un'email da inviare non valida.", "Non soddisfatto",
    "R-044-F-1", "Obbligatorio", "È necessario che il client riceva in risposta l'errore \"tooManyRecipients\" se una richiesta inserita nel server contiene un envelope (insieme di destinatari) che ha più destinatari di quanti il server consenta.", "Non soddisfatto",
    "R-045-F-1", "Obbligatorio", "È necessario che il client riceva in risposta l'errore \"noRecipients\" se una richiesta inserita nel server contiene un envelope (insieme di destinatari) che non presenta alcun destinatario.", "Non soddisfatto",
    "R-046-F-1", "Obbligatorio", "È necessario che il client riceva in risposta l'errore \"invalidRecipients\" se una richiesta inserita nel server contiene un envelope (insieme di destinatari) con almeno un indirizzo email destinatario non valido.", "Non soddisfatto",
    "R-047-F-1", "Obbligatorio", "È necessario che il client riceva in risposta l'errore \"forbiddenMailFrom\" se una richiesta è inserita in un server che non consente all'utente di inviare un messaggio con quel indirizzo mittente nell'envelope (From address).", "Non soddisfatto",
    "R-048-F-1", "Obbligatorio", "È necessario che il client riceva in risposta l'errore \"forbiddenFrom\" se una richiesta è inserita in un server che non consente all'utente di inviare un messaggio con il campo di intestazione From del messaggio da inviare.", "Non soddisfatto",
    "R-049-F-1", "Obbligatorio", "È necessario che il client riceva in risposta l'errore \"forbiddenToSend\" se una richiesta è inserita in un server che non consente all'utente di inviare un messaggio in quel momento.", "Non soddisfatto",
    "R-050-F-1", "Obbligatorio", "L'utente che utilizza un client di posta elettronica per interagire con il server deve avere la possibilità di inviare email.", "Non soddisfatto",
    "R-051-F-1", "Obbligatorio", "È necessario che il client inserisca all'interno della richiesta l'identificazione delle capacità necessarie all'invio di una email.", "Non soddisfatto",
    "R-052-F-1", "Obbligatorio", "È necessario che il client inserisca all'interno della richiesta le chiamate di metodo necessarie all'invio di una email, con relativi parametri (sia quelli comuni, come l'identificativo dell'account da utilizzare, sia quelli specifici del caso) e un identificatore univoco associato.", "Non soddisfatto",
    "R-053-F-1", "Obbligatorio", "È necessario che il client inserisca all'interno della richiesta le proprietà dell'oggetto Email da creare (cartelle in cui è contenuta, mittente, destinatari, oggetto, corpo del messaggio ed altri dettagli definiti dall'RFC5322).", "Non soddisfatto",
    "R-054-F-1", "Obbligatorio", "È necessario che il client inserisca all'interno della richiesta le proprietà dell'oggetto EmailSubmission da creare (l'identificativo dell'email creata in precedenza ed ora da inviare, le informazioni necessarie per l'invio ed altri dettagli).", "Non soddisfatto",
    "R-055-F-1", "Obbligatorio", "È possibile che il client inserisca all'interno della richiesta eventuali azioni da compiere in seguito al corretto invio dell'email.", "Non soddisfatto",
    "R-056-F-1", "Obbligatorio", "È necessario che il client riceva una risposta che contiene l'esito dell'operazione di invio dell'email con relativi parametri (come il nuovo stato, gli oggetti creati ed eventuali errori).", "Non soddisfatto",
    "R-057-F-1", "Obbligatorio", "L'utente che utilizza un client di posta elettronica per interagire con il server deve avere la possibilità di ricevere email e visualizzarne il dettaglio.", "Non soddisfatto",
    "R-058-F-1", "Obbligatorio", "È necessario che il client inserisca all'interno della richiesta l'identificazione delle capacità necessarie alla ricezione di una email.", "Non soddisfatto",
    "R-059-F-1", "Obbligatorio", "È necessario che il client inserisca all'interno della richiesta le chiamate di metodo necessarie alla ricezione di una email, con relativi parametri (sia quelli comuni, come l'identificativo dell'account da utilizzare, sia quelli specifici del caso) e un identificatore univoco associato.", "Non soddisfatto",
    "R-060-F-1", "Obbligatorio", "È necessario che il client inserisca all'interno della richiesta l'identificativo delle email da ricevere", "Non soddisfatto",
    "R-061-F-1", "Obbligatorio", "È possibile che il client inserisca all'interno della richiesta le proprietà specifiche delle email che è interessato a ricevere", "Non soddisfatto",
    "R-062-F-1", "Obbligatorio", "È necessario che il client riceva una risposta che contiene l'esito dell'operazione di ricezione dell'email con relativi parametri (come lo stato corrente dei dati di tipo Email sul server, la lista delle email richieste ed eventuali errori)", "Non soddisfatto",
    "R-063-F-1", "Obbligatorio", "L'utente che utilizza un client di posta elettronica per interagire con il server deve avere la possibilità di eliminare email.", "Non soddisfatto",
    "R-064-F-1", "Obbligatorio", "È necessario che il client inserisca all'interno della richiesta l'identificazione delle capacità necessarie all'eliminazione di una email.", "Non soddisfatto",
    "R-065-F-1", "Obbligatorio", "È necessario che il client inserisca all'interno della richiesta le chiamate di metodo necessarie all'eliminazione di una email, con relativi parametri (sia quelli comuni, come l'identificativo dell'account da utilizzare, sia quelli specifici del caso) e un identificatore univoco associato.", "Non soddisfatto",
    "R-066-F-1", "Obbligatorio", "È necessario che il client inserisca all'interno della richiesta la lista degli identificativi delle email da eliminare.", "Non soddisfatto",
    "R-067-F-1", "Obbligatorio", "È necessario che il client riceva una risposta che contiene l'esito dell'operazione di eliminazione delle email con relativi parametri (come il nuovo stato, gli identificativi degli oggetti eliminati ed eventuali errori)", "Non soddisfatto",
    "R-068-F-1", "Obbligatorio", "L'utente che utilizza un client di posta elettronica per interagire con il server deve avere la possibilità di ricevere cartelle e visualizzarne il dettaglio.", "Non soddisfatto",
    "R-069-F-1", "Obbligatorio", "È necessario che il client inserisca all'interno della richiesta l'identificazione delle capacità necessarie alla ricezione di una cartella.", "Non soddisfatto",
    "R-070-F-1", "Obbligatorio", "È necessario che il client inserisca all'interno della richiesta le chiamate di metodo necessarie alla ricezione di una cartella, con relativi parametri (sia quelli comuni, come l'identificativo dell'account da utilizzare, sia quelli specifici del caso) e un identificatore univoco associato.", "Non soddisfatto",
    "R-071-F-1", "Obbligatorio", "È necessario che il client inserisca all'interno della richiesta l'identificativo delle cartelle da ricevere", "Non soddisfatto",
    "R-072-F-1", "Obbligatorio", "È possibile che il client inserisca all'interno della richiesta le proprietà specifiche delle cartelle che è interessato a ricevere", "Non soddisfatto",
    "R-073-F-1", "Obbligatorio", "È necessario che il client riceva una risposta che contiene l'esito dell'operazione di ricezione della cartella con relativi parametri (come lo stato corrente dei dati di tipo Mailbox sul server, la lista delle cartelle richieste ed eventuali errori)", "Non soddisfatto",
    "R-074-F-1", "Obbligatorio", "L'utente che utilizza un client di posta elettronica per interagire con il server deve avere la possibilità di creare cartelle.", "Non soddisfatto",
    "R-075-F-1", "Obbligatorio", "È necessario che il client inserisca all'interno della richiesta l'identificazione delle capacità necessarie alla creazione di una cartella.", "Non soddisfatto",
    "R-076-F-1", "Obbligatorio", "È necessario che il client inserisca all'interno della richiesta le chiamate di metodo necessarie alla creazione di una cartella, con relativi parametri (sia quelli comuni, come l'identificativo dell'account da utilizzare, sia quelli specifici del caso) e un identificatore univoco associato.", "Non soddisfatto",
    "R-077-F-1", "Obbligatorio", "È necessario che il client inserisca all'interno della richiesta le proprietà dell'oggetto Mailbox da creare (nome, eventuale genitore, ruolo ed altri dettagli).", "Non soddisfatto",
    "R-078-F-1", "Obbligatorio", "È necessario che il client riceva una risposta che contiene l'esito dell'operazione di creazione della cartella con relativi parametri (come lo stato corrente del server, la lista delle cartelle create ed eventuali errori)", "Non soddisfatto",
    "R-079-F-1", "Obbligatorio", "L'utente che utilizza un client di posta elettronica per interagire con il server deve avere la possibilità di modificare cartelle esistenti.", "Non soddisfatto",
    "R-080-F-1", "Obbligatorio", "È necessario che il client inserisca all'interno della richiesta l'identificazione delle capacità necessarie alla modifica di una cartella.", "Non soddisfatto",
    "R-081-F-1", "Obbligatorio", "È necessario che il client inserisca all'interno della richiesta le chiamate di metodo necessarie alla modifica di una cartella, con relativi parametri (sia quelli comuni, come l'identificativo dell'account da utilizzare, sia quelli specifici del caso) e un identificatore univoco associato.", "Non soddisfatto",
    "R-082-F-1", "Obbligatorio", "È necessario che il client inserisca all'interno della richiesta le modifiche da apportare all'oggetto Mailbox che l'utente desidera modificare.", "Non soddisfatto",
    "R-083-F-1", "Obbligatorio", "È necessario che il client riceva una risposta che contiene l'esito dell'operazione di modifica della cartella con relativi parametri (come lo stato corrente del server, la lista delle cartelle modificate ed eventuali errori)", "Non soddisfatto",
    "R-084-F-1", "Obbligatorio", "L'utente che utilizza un client di posta elettronica per interagire con il server deve avere la possibilità di eliminare cartelle esistenti.", "Non soddisfatto",
    "R-085-F-1", "Obbligatorio", "È necessario che il client inserisca all'interno della richiesta l'identificazione delle capacità necessarie alla eliminazione di una cartella.", "Non soddisfatto",
    "R-086-F-1", "Obbligatorio", "È necessario che il client inserisca all'interno della richiesta le chiamate di metodo necessarie alla eliminazione di una cartella, con relativi parametri (sia quelli comuni, come l'identificativo dell'account da utilizzare, sia quelli specifici del caso) e un identificatore univoco associato.", "Non soddisfatto",
    "R-087-F-1", "Obbligatorio", "È necessario che il client inserisca all'interno della richiesta la lista degli identificativi delle cartelle da eliminare.", "Non soddisfatto",
    "R-088-F-1", "Obbligatorio", "È necessario che il client specifichi all'interno della richiesta il comportamento desiderato da parte del server quando si cerca di eliminare una cartella che contiene ancora delle email.", "Non soddisfatto",
    "R-089-F-1", "Obbligatorio", "È necessario che il client riceva una risposta che contiene l'esito dell'operazione di eliminazione della cartella con relativi parametri (come lo stato corrente del server, la lista degli identificativi delle cartelle eliminate ed eventuali errori)", "Non soddisfatto",
    "R-090-F-1", "Obbligatorio", "L'utente che utilizza un client di posta elettronica per interagire con il server deve avere la possibilità di gestire i contenuti di una cartella.", "Non soddisfatto",
    "R-091-F-1", "Obbligatorio", "È necessario che il client inserisca all'interno della richiesta l'identificazione delle capacità necessarie alla gestione dei contenuti di una cartella.", "Non soddisfatto",
    "R-092-F-1", "Obbligatorio", "È necessario che il client inserisca all'interno della richiesta le chiamate di metodo necessarie alla gestione dei contenuti di una cartella, con relativi parametri (sia quelli comuni, come l'identificativo dell'account da utilizzare, sia quelli specifici del caso) e un identificatore univoco associato.", "Non soddisfatto",
    "R-093-F-1", "Obbligatorio", "È necessario che il client inserisca all'interno della richiesta le modifiche da apportare agli oggetti Email che l'utente desidera aggiungere ad una o più cartelle.", "Non soddisfatto",
    "R-094-F-1", "Obbligatorio", "È necessario che il client inserisca all'interno della richiesta le modifiche da apportare agli oggetti Email che l'utente desidera rimuovere da una o più cartelle.", "Non soddisfatto",
    "R-095-F-1", "Obbligatorio", "È necessario che il client inserisca all'interno della richiesta le modifiche da apportare agli oggetti Email che l'utente desidera spostare da una o più cartelle ad una o più cartelle.", "Non soddisfatto",
    "R-096-F-1", "Obbligatorio", "È necessario che il client riceva una risposta che contiene l'esito delle operazioni di gestione dei contenuti di una cartella con relativi parametri (come lo stato corrente del server, la lista delle email modificate ed eventuali errori)", "Non soddisfatto",
    "R-097-F-2", "Desiderabile", "L'utente che utilizza un client di posta elettronica per interagire con il server deve avere la possibilità di condividere le sue cartelle con altri utenti.", "Non soddisfatto",
    "R-098-F-2", "Desiderabile", "È necessario che il client inserisca all'interno della richiesta l'identificazione delle capacità necessarie alla creazione della condivisione di una cartella.", "Non soddisfatto",
    "R-099-F-2", "Desiderabile", "È necessario che il client inserisca all'interno della richiesta le chiamate di metodo necessarie alla creazione della condivisione di una cartella, con relativi parametri (sia quelli comuni, come l'identificativo dell'account da utilizzare, sia quelli specifici del caso) e un identificatore univoco associato.", "Non soddisfatto",
    "R-100-F-2", "Desiderabile", "È necessario che il client inserisca all'interno della richiesta le proprietà dell'oggetto Principal da creare (nome, tipo, descrizione, gli identificativi degli account a cui vogliamo condividere le cartelle e altri dettagli).", "Non soddisfatto",
    "R-101-F-2", "Desiderabile", "È necessario che il client inserisca all'interno della richiesta le modifiche da apportare all'oggetto Mailbox che l'utente desidera condividere, specificando quali diritti hanno su quest'ultimo i membri del principale a cui si sta condividendo.", "Non soddisfatto",
    "R-102-F-2", "Desiderabile", "È necessario che il client riceva una risposta che contiene l'esito delle operazioni di creazione della condivisione di una cartella con relativi parametri (come lo stato corrente dei dati sul server, la lista dei principali creati, la lista delle cartella modificate ed eventuali errori)", "Non soddisfatto",
    "R-103-F-2", "Desiderabile", "L'utente che utilizza un client di posta elettronica per interagire con il server deve avere la possibilità di modificare principali esistenti.", "Non soddisfatto",
    "R-104-F-2", "Desiderabile", "È necessario che il client inserisca all'interno della richiesta l'identificazione delle capacità necessarie alla modifica di un principale.", "Non soddisfatto",
    "R-105-F-2", "Desiderabile", "È necessario che il client inserisca all'interno della richiesta le chiamate di metodo necessarie alla modifica di un principale, con relativi parametri (sia quelli comuni, come l'identificativo dell'account da utilizzare, sia quelli specifici del caso) e un identificatore univoco associato.", "Non soddisfatto",
    "R-106-F-2", "Desiderabile", "È necessario che il client inserisca all'interno della richiesta le modifiche da apportare all'oggetto Principal che l'utente desidera modificare.", "Non soddisfatto",
    "R-107-F-2", "Desiderabile", "È necessario che il client riceva una risposta che contiene l'esito dell'operazione di modifica del principale con relativi parametri (come lo stato corrente del server, la lista dei principali modificati ed eventuali errori)", "Non soddisfatto",
    "R-108-F-2", "Desiderabile", "L'utente che utilizza un client di posta elettronica per interagire con il server deve avere la possibilità di eliminare principali esistenti.", "Non soddisfatto",
    "R-109-F-2", "Desiderabile", "È necessario che il client inserisca all'interno della richiesta l'identificazione delle capacità necessarie alla eliminazione di un principale.", "Non soddisfatto",
    "R-110-F-2", "Desiderabile", "È necessario che il client inserisca all'interno della richiesta le chiamate di metodo necessarie alla eliminazione di un principale, con relativi parametri (sia quelli comuni, come l'identificativo dell'account da utilizzare, sia quelli specifici del caso) e un identificatore univoco associato.", "Non soddisfatto",
    "R-111-F-2", "Desiderabile", "È necessario che il client inserisca all'interno della richiesta la lista degli identificativi dei principali da eliminare.", "Non soddisfatto",
    "R-112-F-2", "Desiderabile", "È necessario che il client riceva una risposta che contiene l'esito dell'operazione di eliminazione del principale con relativi parametri (come lo stato corrente del server, la lista degli identificativi dei principali eliminati ed eventuali errori)", "Non soddisfatto",
    "R-113-F-2", "Desiderabile", "L'utente che utilizza un client di posta elettronica per interagire con il server deve avere la possibilità di modificare la condivisione di una cartella (compresa l'eliminazione di quest'ultima).", "Non soddisfatto",
    "R-114-F-2", "Desiderabile", "È necessario che il client inserisca all'interno della richiesta l'identificazione delle capacità necessarie alla modifica della condivisione di una cartella (compresa l'eliminazione di quest'ultima).", "Non soddisfatto",
    "R-115-F-2", "Desiderabile", "È necessario che il client inserisca all'interno della richiesta le chiamate di metodo necessarie alla modifica della condivisione di una cartella (compresa l'eliminazione di quest'ultima), con relativi parametri (sia quelli comuni, come l'identificativo dell'account da utilizzare, sia quelli specifici del caso) e un identificatore univoco associato.", "Non soddisfatto",
    "R-116-F-2", "Desiderabile", "È necessario che il client inserisca all'interno della richiesta le modifiche da apportare all'oggetto Mailbox di cui l'utente desidera modificare/eliminare la condivisione, specificando i nuovi diritti che hanno su quest'ultimo i membri del principale a cui si sta condividendo.", "Non soddisfatto",
    "R-117-F-2", "Desiderabile", "È necessario che il client riceva una risposta che contiene l'esito dell'operazione di modifica della condivisione di una cartella (compresa l'eliminazione di quest'ultima) con relativi parametri (come lo stato corrente del server, la lista degli identificativi delle cartelle modificate ed eventuali errori)", "Non soddisfatto",
    "R-118-F-3", "Opzionale", "Un client di posta elettronica utilizzato da un utente per interagire con il server deve avere la possibilità di mantenersi sincronizzato con gli ultimi aggiornamenti per quanto riguarda le email.", "Non soddisfatto",
    "R-119-F-3", "Opzionale", "È necessario che il client inserisca all'interno della richiesta l'identificazione delle capacità necessarie alla sincronizzazione delle email.", "Non soddisfatto",
    "R-120-F-3", "Opzionale", "È necessario che il client inserisca all'interno della richiesta le chiamate di metodo necessarie alla sincronizzazione delle email, con relativi parametri (sia quelli comuni, come l'identificativo dell'account da utilizzare, sia quelli specifici del caso) e un identificatore univoco associato.", "Non soddisfatto",
    "R-121-F-3", "Opzionale", "È necessario che il client inserisca all'interno della richiesta il suo stato corrente per quanto riguarda le email, con lo scopo di sincronizzarsi.", "Non soddisfatto",
    "R-122-F-3", "Opzionale", "È necessario che il client inserisca all'interno della richiesta il numero massimo di identificatori di email che desidera ricevere come risposta, con lo scopo di sincronizzarsi.", "Non soddisfatto",
    "R-123-F-3", "Opzionale", "È necessario che il client riceva una risposta che contiene le informazioni di cui ha bisogno per sincronizzarsi (come lo stato corrente del server, un flag booleano che indica se ci sono ulteriori cambiamenti nel server relativi ai dati di tipo Email, oltre a quelli già restituiti nella risposta corrente, e la lista delle email da creare/modificare/eliminare per sincronizzarsi)", "Non soddisfatto",
    "R-124-F-3", "Opzionale", "Un client di posta elettronica utilizzato da un utente per interagire con il server deve avere la possibilità di mantenersi sincronizzato con gli ultimi aggiornamenti per quanto riguarda le cartelle.", "Non soddisfatto",
    "R-125-F-3", "Opzionale", "È necessario che il client inserisca all'interno della richiesta l'identificazione delle capacità necessarie alla sincronizzazione delle cartelle.", "Non soddisfatto",
    "R-126-F-3", "Opzionale", "È necessario che il client inserisca all'interno della richiesta le chiamate di metodo necessarie alla sincronizzazione delle cartelle, con relativi parametri (sia quelli comuni, come l'identificativo dell'account da utilizzare, sia quelli specifici del caso) e un identificatore univoco associato.", "Non soddisfatto",
    "R-127-F-3", "Opzionale", "È necessario che il client inserisca all'interno della richiesta il suo stato corrente per quanto riguarda le cartelle, con lo scopo di sincronizzarsi.", "Non soddisfatto",
    "R-128-F-3", "Opzionale", "È necessario che il client inserisca all'interno della richiesta il numero massimo di identificatori di cartelle che desidera ricevere come risposta, con lo scopo di sincronizzarsi.", "Non soddisfatto",
    "R-129-F-3", "Opzionale", "È necessario che il client riceva una risposta che contiene le informazioni di cui ha bisogno per sincronizzarsi (come lo stato corrente del server, un flag booleano che indica se ci sono ulteriori cambiamenti nel server relativi ai dati di tipo Mailbox, oltre a quelli già restituiti nella risposta corrente, e la lista delle cartelle da creare/modificare/eliminare per sincronizzarsi)", "Non soddisfatto"
  )
)
,caption: [Stato dei requisiti funzionali])

== Grafici riassuntivi
#resumeRequisiti(0,0,0,0)