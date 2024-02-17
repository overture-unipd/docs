#import "//templates/document.typ": *

#show: project.with(
  title: "Verbale interno del 2024-02-16",
  managers: p.bulychov,
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "1.0", "2024-02-16", p.amadori, p.bettin, "Stesura del verbale",
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione
- *Luogo*: Chiamata Discord;
- *Ora di inizio*: 10:30;
- *Ora di fine*: 11:30;
- *Partecipanti*: #p.amadori, #p.bettin, #p.bonavigo, #p.bulychov, #p.fabbian, #p.furno, #p.vedovato.

== Ordine del giorno
- Decidere come procedere con la stesura di `Manuale Utente` e `Specifica Tecnica`;
- Discutere dei problemi relativi ai client;
- Decidere come procedere con il design del prodotto.

= Sintesi dell'incontro

Il primo punto affrontato durante la riunione interna riguardava la documentazione. La struttura generale e le prime sezioni dei nuovi documenti, ovvero il `Manuale Utente` e la `Specifica Tecnica`, sono ormai state definite. Il `Manuale Utente` verrà messo momentaneamente da parte, poichè prima di poterlo ampliare ulteriormente dovremo ultimare il prodotto. Il nostro focus si sposta ora esclusivamente sulla `Specifica Tecnica`, in particolare sulla stesura delle sezioni dedicate all'architettura logica del prodotto.

La seconda parte dell'incontro ha affrontato alcune tematiche legate al prodotto e allo studio del design. 
Non prevediamo di estendere ulteriormente le funzionalità del PoC, ciò che ci interessava fare è stato completato.
Il design del prodotto, grazie anche alla collaborazione dell'azienda proponente, ha fatto diversi passi in avanti. Attualmente è stata raggiunta la base iniziale per la progettazione logica: abbiamo individuato i primi pattern da utilizzare, specialmente a livello architetturale. Inizieremo anche a codificare le prime parti del design, seguendo i pattern individuati. 

Per quanto riguarda le difficoltà riscontrate recentemente, queste sono relative ai client: al momento l'unico client che siamo riusciti ad utilizzare è ltt.rs, che però non possiede diverse funzionalità che il nostro server metterà a disposizione, come la gestione delle cartelle e la loro condivisione. Non siamo certi di riuscire a trovare un client in grado di dimostrare tutte le funzionalità del nostro prodotto, che sarà comunque interamente funzionante. Sicuramente dovremo dedicare ulteriore tempo al test di altri client JMAP e discutere di questo problema con l'azienda.

I temi affrontati nell'incontro odierno verrano riportati all'interno del diario di bordo, in programma il 2024-02-16.

= Decisioni prese
- Interrompere al momento la stesura del `Manuale Utente`, in favore della stesura della prima parte della sezione 'Architettura' all'interno della `Specifica Tecnica`;
- Continuare con lo studio del design del prodotto;
- Iniziare la codifica delle prime parti di design.

#pagebreak()

= Attività individuate
#tasks((
  (g.docs, 288), [Stesura di _questo_ verbale], p.amadori,
  (g.docs, 289), [Correggere il verbale esterno del 2024-02-12], p.amadori,
  (g.docs, 282), [`Specifica Tecnica`: Prima stesura della sezione 'Architettura logica'], (p.bonavigo,p.fabbian),
  (g.docs, 283), [`Specifica Tecnica`: Prima stesura della sezione 'Architettura di deployment'], p.vedovato,
  (g.docs, 284), [`Specifica Tecnica`: Stesura della sezione 'Database'], p.bulychov,
  (g.jmap, 40), [Inizio della codifica della struttura di base seguendo l'architettura individuata], (p.amadori, p.bettin, p.furno),
  (g.jmap, 41), [Sviluppo delle funzionalità relative all'email], (p.amadori, p.bettin, p.furno),
  (g.jmap, 42), [Testing delle funzionalità relative all'email], (p.amadori, p.bettin, p.furno)
))