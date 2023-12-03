#import "//templates/document.typ": *

#show: project.with(
  title: "Verbale esterno del 2023-11-21",
  managers: p.vedovato,
  recipients: (
    p.vardanega,
    p.cardin,
    [_#(p.zextras)_],
  ),
  changelog: (
    "1.0", "2023-12-03", p.vedovato, p.bettin, "Finalizzazione del verbale",
    "0.1", "2023-12-22", p.vedovato, p.bettin, "Prima bozza: riassunto della discussione",
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione
- *Luogo*: Chat Discord;
- *Partecipanti*: #p.bettin\;
- *Partecipanti esterni*: #p.rispo.

== Ordine del giorno
- Discutere della bozza dei casi d'uso studiati fino ad ora.

= Sintesi dell'incontro
Nella discussione in questione, avvenuta in chat tra un'Analista rappresentate del gruppo ed un membro dell'azienda proponente, è stata presentata una bozza iniziale dei casi d'uso studiati, cercando un feedback su eventuali problemi e potenziali miglioramenti. 

#p.rispo, dopo aver guardato il nostro lavoro, ha risposto suggerendo alcune migliorie ed aggiustamenti.

= Suggerimenti forniti
== UC1 - registrazione
La registrazione non è un requisito funzionale richiesto. Possiamo quindi ignorarne l'implementazione e partire con l'assunto che l'utente sia già registrato nel sistema.

== UC2 - autenticazione
L'utilizzo della keyword "include" non è corretto, dovrebbe essere utilizzata per mettere in relazione due use-case che stanno sullo stesso livello di dettaglio. In questo caso UC2.1 è una descrizione più dettagliata di UC2. Inoltre i due "extend" si potrebbero accorpare in uno unico per non esporre ad un possibile malintenzionato che cosa è fallito durante l'autenticazione.

== Note generali
In tutti i diagrammi l'attore è definito come "Client Mail autenticato". Secondo il rappresentante dell'azienda dovremmo assumere il punto di vista dell'utente finale, e non dello strumento, quindi il suggerimento è quello di rinominare l'attore in "Utente autenticato".

= Decisioni prese
- Continuare l'analisi dei requisiti a partire dai suggerimenti forniti dall'azienda per sistemare/migliorare il lavoro precedentemente svolto.
