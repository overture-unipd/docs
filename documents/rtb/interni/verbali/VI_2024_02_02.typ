#import "//templates/document.typ": *

#show: project.with(
  title: "Verbale interno del 2024-02-02",
  managers: p.amadori,
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "1.0", "2024-02-02", p.vedovato, p.bettin, "Verbale completo",
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione
- *Luogo*: Chiamata Discord;
- *Ora di inizio*: 16:00;
- *Ora di fine*: 16:35;
- *Partecipanti*: #p.amadori, #p.bettin, #p.bonavigo, #p.bulychov, #p.fabbian, #p.furno, #p.vedovato.

== Ordine del giorno
- Discussione riguardante i problemi individuati durante la prima parte della RTB;
- Discussione sulle disponibilità dei componenti;
- Individuazione delle task risolutive ed assegnazione ai componenti.

= Sintesi dell'incontro
All'interno dell'incontro innanzitutto sono stati discussi i problemi individuati dal #p.cardin in seguito al colloquio sulla prima parte della RTB. Dopo una breve riflessione sui possibili tempi di risoluzione, si è deciso di risolverli prima di procedere con la seconda parte della revisione.\
Poichè i tempi stimati sono piuttosto ridotti, il gruppo ha discusso la possibilità di svolgere la seconda parte della RTB la settimana successiva.\
Di conseguenza, sono stati esposti gli impegni personali e la disponibilità oraria, risultando in una possibile finestra per l'intera giornata di mercoledì 7 febbraio.\
L'incontro è proseguito con l'individuazione delle task risolutive dei problemi ed i rispettivi assegnatari.\
Infine è stato deciso di contattare il #p.vardanega per chiedere di svolgere la seconda parte della RTB. Questo verrà fatto non appena le task assegnate verranno completate.

= Decisioni prese
- Risoluzione dei problemi individuati durante la prima parte della RTB prima di procedere con la seconda;
- Contattare il #p.vardanega per chiedere di fissare una data per la seconda parte della RTB.

= Attività individuate
#tasks((
  (g.docs, 227), [Stesura di _questo_ verbale], p.vedovato,
  (g.docs, 228), [`Analisi dei Requisiti`: sistemare i problemi individuati (requisiti, diagrammi e descrizioni)], p.fabbian,
  (g.docs, 229), [`Analisi dei Requisiti`: correggere ed aggiungere i riferimenti ai documenti esterni], p.amadori,
  (g.docs, 230), [`Piano di Qualifica`: sistemare i test di sistema, seguendo modifiche ad `AdR`], p.furno,
  (g.docs, 231), [Aggiungere la sezione oltre al nome dei documenti per i riferimenti], p.bulychov,
  (g.docs, 232), [Sistemare la lettera di candidatura], p.furno,
))