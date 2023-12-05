#import "//templates/document.typ": *

#show: project.with(
  title: "Verbale esterno del 2023-11-30",
  managers: p.vedovato,
  recipients: (
    p.vardanega,
    p.cardin,
    [_#(p.zextras)_],
  ),
  changelog: (
    "1.0", "2023-12-03", (p.bulychov, p.fabbian), p.bettin, "Finalizzazione del verbale",
    "0.1", "2023-11-30", p.bulychov, p.bettin, "Prima bozza: stuttura e appunti dalla riunione",
  ),
)
  

= Contenuti del verbale

== Informazioni sulla riunione
- *Luogo*: Chiamata sulla piattaforma dell'azienda _#(p.zextras)_;
- *Ora di inizio*: 17:00;
- *Ora di fine*: 18:30;
- *Partecipanti*: #p.amadori, #p.bettin, #p.bonavigo, #p.bulychov, #p.fabbian, #p.furno, #p.vedovato\;
- *Partecipanti esterni*: #p.rispo.


== Ordine del giorno
- Discussione con l'azienda proponente riguardo la struttura e le funzionalità del PoC;
- Discussione riguardo l'analisi dei requisiti e gli use case identificati.


= Sintesi dell'incontro
Nell'incontro di oggi sono stati discussi gli use case dell'analisi dei requisiti, analizzandoli insieme ad un rappresentante dell'azienda proponente. Su quest'ultimi sono state suggerite modifiche, aggiunte, rimozioni e miglioramenti.
Abbiamo poi trattato il PoC teorizzato nel corso della settimana, la struttura di base e le funzionalità implementate. Si è infine discussa la necessità di accompagnarlo con degli stress, unit ed integration test.

= Domande e risposte
== Necessitá dello unit testing per il PoC
L'azienda proponente ha insistito sull'importanza degli Unit Test per il PoC, ritenendoli essenziali per il raggiungimento degli obiettivi del capitolato.\
Inoltre, come requisito totalmente opzionale, sarebbe interessante implementare dei test di integrazione. Dei framework suggeriti dall'azienda per familiarità e facilità di utilizzo sono MockServer e TestContainers.\
Al momento, gli Stress Test non sono stati considerati essenziali per il progetto e non sono previsti nel piano del PoC.

== Necessità di implementare la funzionalità di inoltro di una mail a domini esterni
L'azienda proponente non richiede che il prodotto finale, ne tantomeno il PoC, presentino la funzionalità di inoltro di una mail a domini esterni poiché considerata troppo complessa da implementare e non aiuta a chiarire i possibili vantaggi di JMAP.\
Quindi, se testeremo la trasmissione tra server, sarà internamente alla rete Docker.

== Valutazione della necessitá di un server per lo sviluppo
L'azienda aveva gentilmente offerto un server da utilizzare per lo sviluppo del progetto. Dopo un'attenta valutazione delle nostre esigenze, e delle potenzialità offerte da Docker per la gestione in locale, abbiamo preso la decisione di non richierlo effettivamente.\
Riteniamo infatti di essere in grado di gestire efficacemente tutte le operazioni necessarie in ambiente locale senza la necessità di affidarci a risorse esterne.

== Discussione degli use cases
Durante l'incontro abbiamo esaminato approfonditamente gli use cases. La collaborazione è stata estremamente utile poiché l'intermediario, avendo una conoscenza approfondita delle esigenze aziendali, è stato in grado di correggere eventuali discrepanze, suggerire integrazioni significative e apportare modifiche pertinenti. In questo modo ci ha consentito di ottenere una prospettiva più completa e mirata, garantendo che il nostro approccio sia allineato con le effettive necessità dell'azienda.

In particolare, le modifiche consigliate sono le seguenti:
- UC1: il login é una funzionalitá desiderabile, ma non obbligatoria;
- UC2.1: é preferibile utlizzare un'estensione dell'errore nel commento;
- UC2.1.2: é necessario separare oggetto e corpo del messaggio  in due use case differenti; inoltre i destinatari sono troppo generici e gli allegati non sono necessari;
- UC3: necessitá di migliorare i commenti;
- UC3.3: non é necessaria l'estensione;
- UC3.X: vi é una mancanza di sottocasi;
- UC4.X: é necessario essere piú specifici nel dominio, in questo caso utilizzare "email" al posto di "oggetto" generico;
- UC4.4: é necessario essere piú specifici nella descrizione dell'errore;
- UC5.2: é necessario separare l'errore;
- UC5.3: use case troppo generico;
- UC6: l'attore identificato è sbagliato, deve essere sostituito con "sviluppatore";
- UC6.1.2: è necessario separare il corpo del messaggio dall'oggetto;
- UC8: è necessario identificare degli errori più specifici.


= Decisioni prese
- Non utilizzare il production server fornito dall'azienda proponente, optando invece per una soluzione che impiega container Docker;
- Sistemare i problemi relativi all'analisi dei requisiti.