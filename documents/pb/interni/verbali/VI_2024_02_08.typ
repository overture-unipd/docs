#import "//templates/document.typ": *

#show: project.with(
  title: "Verbale interno del 2024-02-08",
  managers: p.amadori,
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "1.0", "2024-02-08", p.vedovato, p.bettin, "Aggiustamenti alla forma e finalizzazione del verbale",
    "0.1", "2024-02-08", p.vedovato, p.bettin, "Prima bozza con riassunto incontro",
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione
- *Luogo*: Chiamata Discord;
- *Ora di inizio*: 15:30;
- *Ora di fine*: 16:50;
- *Partecipanti*: #p.amadori, #p.bettin, #p.bonavigo, #p.bulychov, #p.fabbian, #p.furno, #p.vedovato.

== Ordine del giorno
- Organizzazione del lavoro in seguito al colloquio con il #p.vardanega\;

= Sintesi dell'incontro
Nella riunione odierna, il gruppo si è incontrato due giorni dopo il colloquio con il #p.vardanega per discutere dei prossimi passi da intraprendere per procedere verso il completamento del progetto. Durante l'incontro è emersa principalmente la necessità di aggiornare costantemente la documentazione esistente, in modo da non trascurarla, e di creare nuovi documenti specifici relativi alla fase di progettazione, i quali andranno studiati maggiormente nei prossimi giorni. 

Inoltre, un altro tema scottante trattato è stato quello relativo alle milestone. Infatti, come discusso nel colloquio con il #p.vardanega, fino ad ora abbiamo definito delle milestone troppo generiche e che non specificavano abbastanza bene quali attività implementare, né fornivano una tempistica o obiettivi quantificabili, bensì riguardavano solo il raggiungimento della versione 1.0.0 dei vari prodotti. Da qui alla revisione PB, dovremo essere sicuramente più specifici, definendo un numero superiore di milestone a distanza più ravvicinata.

Per quanto riguarda il passaggio da PoC a prodotto finale, si è discusso di come andare a sviluppare il secondo partendo dal primo. Il PoC ci dà infatti delle basi già solide su cui lavorare, ma prima di passare alla fase di codifica sarà necessario cominciare la fase di progettazione. Non potendo quindi svolgere le due attività in parallelo sin dall'inizio (potremo farlo solo una volta raggiunta una baseline iniziale per il design la quale richiederà qualche giorno di lavoro), ne approfitteremo 
ora per terminare di esplorare funzionalità mancanti al PoC ed eseguire ulteriori test su client che ci serviranno in futuro per dimostrare le funzionalità del nostro prodotto software.

Infine, come di consuento, si è discussa la suddivisione dei ruoli e si è deciso di dare priorità, nel prossimo periodo, al lavoro riguardante il design del prodotto. 

= Decisioni prese
- Ampliare le `Norme di Progetto`, normando eventuali nuovi processi necessari in futuro e migliorando alcuni processi precedentemente descritti;
- Definire la struttura di base della nuova documentazione necessaria e studiarne a fondo i contenuti;
- Definire almeno una milestone per ogni periodo di progetto seguente;
- Estendere il PoC;
- Iniziare la fase di design con un approccio bottom-up, procedendo gradualmente e focalizzandosi prima su parti semplici.

#pagebreak()

= Attività individuate
#tasks((
  (g.docs, 238), [Stesura di _questo_ verbale], p.vedovato,
  (g.docs, 239), [`Piano di Progetto`: consuntivo e retrospettiva del periodo precedente], p.bonavigo,
  (g.docs, 240), [`Piano di Progetto`: pianificazione e preventivo del periodo corrente], p.bonavigo,
  (g.docs, 241), [`Piano di Qualifica`: aggiornamento della sezione 'Cruscotto di valutazione della qualità'], p.vedovato,
  (g.docs, 242), [`Norme di Progetto`: aggiornamento della sezione 'Gestione della qualità'], p.amadori,
  (g.docs, 243), [`Norme di Progetto`: studio di eventuali nuovi processi da normare], p.bulychov,
  (g.docs, 244), [`Specifica Tecnica`: struttura di base ed introduzione], (p.fabbian, p.vedovato),
  (g.docs, 245), [`Manuale Utente`: struttura di base ed introduzione], p.bulychov,
  (g.docs, 246), [`Manuale Sviluppatore`: struttura di base ed introduzione], p.bonavigo,
  (g.docs, 247), [Inizio della progettazione: studio dei possibili design da implementare], (p.vedovato, p.bonavigo, p.fabbian, p.bulychov),
  (g.jmap, 35), [Testare i client individuati: #link("https://github.com/meli/meli")[meli],  #link("https://github.com/linagora/tmail-flutter")[Twake Mail]], p.amadori,
  (g.jmap, 36), [Gestione degli update su database], p.bettin,
  (g.jmap, 37), [Gestione del multiutente], p.furno,
  (g.jmap, 38), [Implementazione del metodo necessario per lo spostamento da una mailbox ad un'altra (`SetEmailSubmissionMethodCall`)], p.furno,
))
