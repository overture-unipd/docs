#import "//templates/document.typ": *

#show: project.with(
  title: "Verbale interno del 2023-11-07",
  managers: p.vedovato,
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "1.0", "2023-11-21", p.bonavigo, p.vedovato, "Aggiustamenti alla forma e correzioni",
    "0.3", "2023-11-09", p.bonavigo, p.amadori, "Aggiunti link alle issue su GitHub",
    "0.2", "2023-11-08", p.furno, p.amadori, [Sviluppo della "sintesi" e aggiunta sezione "attività da svolgere"],
    "0.1", "2023-11-07", p.bonavigo, p.amadori, "Prima bozza con riassunto incontro",
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione
- *Luogo*: Chiamata Discord;
- *Ora di inizio*: 14:00;
- *Ora di fine*: 15:00;
- *Partecipanti*: #p.amadori, #p.bonavigo, #p.bettin, #p.bulychov, #p.fabbian, #p.furno, #p.vedovato.

== Ordine del giorno
- Discussione sulle sfide riscontrate in fase di candidatura: esame e analisi delle criticità;
- Esplorazione degli approcci al Registro delle Modifiche e raccolta informazioni su quelle non aggiunte in fase di candidatura;
- Discussione su strutturazione e organizzazione della repository;
- Pianificazione dell'incontro con i rappresentanti dell'azienda _#(p.zextras)_ e definizione delle domande da presentare in vista del colloquio.

= Sintesi dell'incontro
Nell'incontro odierno, avvenuto il giorno successivo all'aggiudicazione degli appalti, sono state discusse le debolezze architetturali riscontrare durante la candidatura.\
In particolare sono stati affrontati i temi relativi ai documenti, che devono riportare nel nome la versione corrente, ai verbali esterni, che devono essere approvati dall'azienda _#(p.zextras)_, e all'organizzazione della repository, che non rispecchiava l'efficenza necessaria.\
Abbiamo raccolto informazioni tra i componenti riguardo allo storico delle modifiche apportate ai documenti presentati in fase di candidatura per integrarlo dove mancante. D'ora in poi verrà aggiunta una riga al registro per ogni modifica validata.\
Inoltre, sono state assegnate le task relative alla stesura dell'`Analisi dei Requisiti`, del `Glossario` e relative alla correzione dei documenti non idonei.\
Infine sono state discusse le domande da porre al committente durante la prossima riunione.

== Unione delle repository di documentazione
Abbiamo discusso la possibile causa della valutazione "discreta" in fase di candidatura circa l'organizzazione delle repository.\ Una possibile spiegazione che ci siamo dati è la separazione delle repository `docs-sources` e `docs`, che rappresentano rispettivamente la repository con i sorgenti della documentazione (`.typ`) e quella con i `.pdf` compilati.
Abbiamo quindi deciso di unirle utilizzando due branch con commit iniziale distinto; branch che non condividono l'origine con `master` sono tecnicamente noti come _orphan branches_.

= Decisioni prese
- Iniziativa di correzione degli errori riscontrati durante la candidatura;
- Inclusione del changelog in tutti i documenti
- Domande da fare a _#(p.zextras)_ nell'incontro di giovedì 9 novembre;
- Assegnazione delle prime attività da svolgere sui documenti.
- Unione delle repository `docs` e `docs-sources`.

= Attività individuate

#tasks(
  (
    [-], [Unione delle repository `docs` e `docs-sources`], p.bonavigo,
    (g.docs, 16), [Migliorie alla CI di `docs-sources`], p.bonavigo,
    (g.docs, 17), [Sistemare i problemi della documentazione rilevati in fase di candidatura], p.bonavigo,
    (g.docs, 18), [Stesura di _questo_ verbale], (p.bonavigo, p.furno),
    (g.docs, 19), [`Analisi dei Requisiti`: struttura di base ed introduzione], (p.bettin, p.bulychov),
    (g.docs, 20), [`Analisi dei Requisiti`: primi Use Case], p.bulychov,
    (g.docs, 21), [`Glossario`: struttura di base ed introduzione], p.bettin,
  )
)