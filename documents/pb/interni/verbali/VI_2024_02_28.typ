#import "//templates/document.typ": *

#show: project.with(
  title: "Verbale interno del 2024-02-28",
  managers: p.vedovato,
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "1.0", "2024-02-29", p.amadori, p.bonavigo, "Finalizzazione del verbale",
    "0.1", "2024-02-28", p.amadori, p.bonavigo, "Bozza del verbale"
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione
- *Luogo*: Chiamata Discord;
- *Ora di inizio*: 17:45;
- *Ora di fine*: 18:15;
- *Partecipanti*: #p.amadori, #p.bettin, #p.bonavigo, #p.bulychov, #p.fabbian, #p.furno, #p.vedovato.

== Ordine del giorno
- Rapida discussione sull'incontro avvenuto con #p.zextras\.

= Sintesi dell'incontro
Subito dopo aver terminato il colloquio con l'azienda proponente, il team si è riunito per discutere delle tematiche trattate. \
Siamo entusiasti per il fatto che l'azienda riconosca e apprezzi i grandi passi avanti che stiamo compiendo ed inoltre siamo felici che sia stata accolta positivamente la nostra richiesta sull'utilizzo di Postman. Si è dunque approfittato di questo momento per fornire una migliore spiegazione di questo strumento ai membri del gruppo meno esperti, in modo che i Programmatori possano cominciare ad utilizzarlo sin da subito senza intoppi. \
Inoltre l'azienda ha chiarito i nostri dubbi riguardanti i test di accettazione richiesti, dunque ci siamo organizzati per andarli ad inserire all'interno del `Piano di Qualifica` nei prossimi giorni. \
Infine sono stati trattati i punti da esporre all'interno del diario di bordo di questa settimana.

= Decisioni prese
- Cominciare a familiarizzare con Postman;
- Aggiornare il `Piano di Qualifica` con una nuova sezione riguardante i test di accettazione.

= Attività individuate
#tasks((
  (g.docs, 317), [Stesura di _questo_ verbale], p.amadori,
  (g.docs, 318), [Stesura del verbale esterno del 2024-02-28], p.fabbian,
  (g.docs, 319), [`Piano di Qualifica`: stesura della sezione riguardante i test di accettazione], p.bettin,
  (g.jmap, 50), [Primo approccio con #link("https://www.postman.com/")[Postman]], p.bonavigo,
))