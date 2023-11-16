#import "//templates/document.typ": *

#show: project.with(
  title: "Verbale esterno del 2023-11-09",
  managers: p.vedovato,
  recipients: (
    p.vardanega,
    p.cardin,
    [_#(p.zextras)_],
  ),
  changelog: (
    "1.0", "2023-11-14", p.bonavigo, p.amadori, "Finalizzazione: riscrittura delle varie sezioni",
    "0.1", "2023-11-09", p.bonavigo, p.amadori, "Prima bozza: stuttura e appunti dalla riunione",
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione
- *Luogo*: Chiamata sulla piattaforma dell'azienda _#(p.zextras)_
- *Ora di inizio*: 15:30
- *Ora di fine*: 16:00
- *Partecipanti*: #p.amadori, #p.bettin, #p.bonavigo, #p.bulychov, #p.fabbian, #p.furno, #p.vedovato
- *Partecipanti esterni*: #p.crestani, #p.rispo

== Ordine del giorno
- Richiesta di approfondimento di alcuni aspetti tecnici del prodotto da sviluppare
- Discussione sulle modalità di approvazione dei verbali esterni

= Sintesi dell'incontro
Nell'incontro di oggi sono stati discussi argomenti di natura puramente tecnica.\
Abbiamo cercato di capire quali fossero i requisiti opzionali più importanti, e cercato di capire quali test siano effettivamente richiesti.\
Abbiamo poi discusso brevemente le modalità di approvazione dei verbali esterni.

= Domande e risposte

== Priorità dei requisiti opzionali
Il committente ha espresso una preferenza netta sulle priorità dei requisiti opzionali da implementare. In ordine, dal più al meno importante:

+ *Stress test client-server*: permettono di comparare le performance con l'attuale stack basato su IMAP e SMTP, nel punto di maggiore interesse per i clienti. Consigliano come framework di testing #link("https://locust.io/")[Locust].
+ *Integrazione con il protocollo SMTP*. Questo permette una maggiore accuratezza dei dati in uno scenario real-world, in cui _non_ tutti i server supportano JMAP. Questo renderebbe possibile testare l'inoltro da client a server con JMAP e da server a server con SMTP.
+ *Stress test server-server*: permette di confrontare come i server gestiscono un elevato traffico di email in confronto con SMTP.
+ *Stress test con scalabilità del "proxy"*. Il servizio è diviso in due parti: un "servizio proxy" stateless che inoltra dati al "servizio database". Testare il servizio con più istanze del servizio "proxy" consente di testare la scalabilità del server. Per questo tipo di test, potrebbero essere utili tecnologie di replicazione e gestione di container su più nodi come #link("https://kubernetes.io/")[Kubernetes].
+ *Supporto a Rubrica e Calendario*: le specifiche sono ancora in via di sviluppo e le librerie proposte non le implentano. Sarebbe quindi necessario apportare importanti modifiche alle librerie proposte, richiedendo elevata difficoltà ed impegno orario.

== Disponibilità di un server per lo sviluppo
_#(p.zextras)_ si impegnerà a fornire un server il prima possibile, per agevolare lo sviluppo del server e dei test richiesti.

== Disponibilità a rapidi chiarimenti tecnici
I proponenti, #p.crestani e #p.rispo, hanno dato la disponibilità ad essere inseriti nel server Discord del gruppo.\
Questo permette di avere un feedback veloce su eventuali dubbi "urgenti" incontrati durante il percorso, senza la necessità di organizzare un incontro formale per ciascuno.\
Gli incontri periodici (circa ogni 2 settimane) con l'azienda rimangono il canale di comunicazione ufficiale per il tracciamento dell'avanzamento del progetto, oltre che dedicati a chiarire tutti i dubbi "meno urgenti".

== Modalità di approvazine dei documenti
È stato concordato l'invio tramite email a verbale terminato. L'azienda risponderà poi con la versione firmata del documento.

== Linguaggio consigliato per lo sviluppo
Il proponente consiglia Java, soprattutto per la facilità di integrazione con i design pattern spiegati dal #p.cardin.\
Tuttavia, #p.crestani e #p.rispo riconoscono la necessità di informarsi su tutte le librerie a disposizione per i vari linguaggi. Questo permette di sondare le differenze tra di esse, con l'importante conseguenza di poter optare per quella avente maggior supporto (diretto o indiretto) ai vari requisiti opzionali.

= Decisioni prese
- Modalità di approvazione dei verbali esterni.

= Attività individuate

#tasks(
  (
    "-", "Esplorazione delle librerie JMAP disponibili.", [Tutto il gruppo _#(g.name)_],
  )
)