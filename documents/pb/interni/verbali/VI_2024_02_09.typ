#import "//templates/document.typ": *

#show: project.with(
  title: "Verbale interno del 2024-02-09",
  managers: p.bulychov,
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "1.0", "2024-02-09", p.bonavigo, p.furno, "Finalizzazione del verbale",
    "0.1", "2024-02-09", p.bonavigo, p.furno, "Prima bozza con riassunto incontro",
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione
- *Luogo*: Chiamata Discord;
- *Ora di inizio*: 10:00;
- *Ora di fine*: 10:30;
- *Partecipanti*: #p.amadori, #p.bettin, #p.bonavigo, #p.bulychov, #p.fabbian, #p.furno, #p.vedovato.

== Ordine del giorno
- Modifiche da apportare in seguito alla valutazione della revisione RTB;
- Pianificazione incontro con #p.zextras\;

= Sintesi dell'incontro
La mattina seguente al feedback derivante della revisione RTB, il gruppo si è rapidamente riunito per un'ulteriore discussione. Occorreva infatti decidere come organizzarsi per risolvere i problemi riportati il prima possibile, in modo da poter operare su una baseline pulita. 

Inoltre è stata sollevata l'importanza di organizzare un incontro con la proponente #p.zextras per favorire un allineamento tecnico e ottenere consigli utili riguardanti la fase di progettazione (design) del prodotto.

Infine abbiamo discusso degli argomenti da esporre al diario di bordo.

= Decisioni prese
- Risolvere i problemi riportati nel documento di valutazione della revisione RTB entro fine settimana;
- Rimuovere la sezione "Iniziative di auto-miglioramento" dal `Piano di Qualifica`, dato che i suoi contenuti, i quali attengono all’attuazione del ciclo PCDA, sono meglio documentati in verbali che traccino
  puntualmente gli obiettivi e le decisioni corrispondenti, come questo. Il PdQ, invece, nel suo cruscotto della qualità, potrà vedere gli effetti di tali iniziative;
- Ristrutturare il `Piano di Progetto` per facilitarne la comprensione d’insieme dei contenuti;
- Organizzato un incontro con la proponente #p.zextras per il giorno 12 febbraio.

= Attività individuate
#tasks((
  (g.docs, 249), [Stesura di _questo_ verbale], p.bonavigo,
  (g.docs, 250), [Stesura del diario di bordo del 2024-02-09], p.bulychov,
  (g.docs, 251), [`Norme di Progetto`: risolvere i problemi individuati], p.amadori,
  (g.docs, 252), [`Piano di Qualifica`: risolvere i problemi individuati], p.vedovato,
  (g.docs, 253), [`Piano di Progetto`: risolvere i problemi individuati], p.bonavigo,
  (g.docs, 254), [Correggere gli errori comuni nei vari documenti (riferimenti imprecisi e anomalie stilistiche)], p.bulychov,
))
