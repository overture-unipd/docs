#import "//templates/document.typ": *

#show: project.with(
  title: "Verbale interno del 2023-11-30",
  managers: p.fabbian,
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "1.0", "2023-12-05", p.fabbian, p.bettin, "Finalizzazione del verbale",
    "0.1", "2023-11-30", p.fabbian, p.bettin, "Prima bozza con riassunto incontro",
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione
- *Luogo*: Chiamata Discord;
- *Ora di inizio*: 18:30;
- *Ora di fine*: 19:10;
- *Partecipanti*: #p.amadori, #p.bettin, #p.bonavigo, #p.bulychov, #p.fabbian, #p.furno, #p.vedovato.

== Ordine del giorno
- Analisi interna dei chiarimenti forniti dall'azienda proponente;

= Sintesi dell'incontro
L'incontro si è svolto al termine della riunione con l'azienda proponente ed è stato dedicato alla discussione immediata dei temi trattati. Il primo argomento all'ordine del giorno è stata la richiesta di includere Unit Test e, come requisito opzionale, Integration Test all'interno del Proof of Concept (PoC). _#(p.zextras)_ ha consigliato l'utilizzo dei framework MockServer e TestContainers.

Abbiamo poi discusso brevemente i framework di testing proposti e della compatibilità con Scala. Poichè alcuni richiedono più di qualche accorgimento, il gruppo ha deciso di effettuare una transizione al linguaggio Java. Il codice sviluppato finora è piuttosto limitato e il costo di cambio è trascurabile.\
Abbiamo quindi deciso di utilizzare #link("https://gradle.org/")[Gradle] come sistema di build e #link("https://sparkjava.com/")[Spark] come web server.\
Abbiamo poi discusso la necessità di impostare controlli automatici sul codice prima di ogni commit e durante una pull request. Utilizzeremo quindi #link("https://pre-commit.com/")[pre-commit] le action di GitHub (CI).

Come ultimo punto, abbiamo discusso la creazione di un verbale esterno per tracciare la conversazione avvenuta su Discord riguardo ai casi d'uso identificati.

= Decisioni prese
- Decisione di passare da Scala a Java come linguaggio di programmazione;
- Gradle come sistema di build;
- Spark come webserver;
- Creare un verbale esterno che tracci la conversazione avvenuta su Discord per trattare i casi d'uso.

= Attività individuate

#tasks((
  (g.docs, 103), [Stesura del verbale esterno del 2023-11-30], (p.fabbian, p.bulychov),
  (g.docs, 114), [Stesura del verbale esterno del 2023-11-21], p.vedovato,
  (g.docs, 104), [Stesura di _questo_ verbale], p.fabbian,
  (g.jmap, 4), [Esporre un endpoint per il reset dei dati sul database], p.bonavigo,
  (g.jmap, 5), [pre-commit per controlli prima di effettuare commit], (p.bulychov, p.amadori),
  (g.jmap, 6), [CI per controlli durante le pull-request], p.bonavigo,
  (g.jmap, 7), [Recupero di tutte le mail di un utente], p.bonavigo,
  (g.jmap, 8), [Gestione dell'autenticazione], (p.bulychov, p.amadori),
))