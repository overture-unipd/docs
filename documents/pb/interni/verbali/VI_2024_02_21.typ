#import "//templates/document.typ": *

#show: project.with(
  title: "Verbale interno del 2024-02-21",
  managers: p.vedovato,
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "1.0", "2024-02-22", p.furno, p.amadori, "Finalizzazione del verbale",
    "0.1", "2024-02-21", p.furno, p.amadori, "Stesura della bozza del verbale",
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione
- *Luogo*: Chiamata Discord;
- *Ora di inizio*: 14:30;
- *Ora di fine*: 15:00;
- *Partecipanti*: #p.amadori, #p.bettin, #p.bonavigo, #p.bulychov, #p.fabbian, #p.furno, #p.vedovato.

== Ordine del giorno
- Punto della situazione del documento `Specifica Tecnica`;
- Punto della situazione del prodotto software;
- Discutere di eventuali modifiche ad alcuni documenti.

= Sintesi dell'incontro
Il primo punto affrontato durante la riunione interna riguardava il documento di `Specifica Tecnica`. Dall'ultimo incontro interno sono state redatte le prime sezioni relative all'architettura, illustrando l'architettura logica, l'architettura di deployment e il database del prodotto. Ora procederemo con l'inserimento delle sezioni dedicate ai diagrammi UML delle classi e all'esposizione dei design pattern utilizzati.\
Vista l'evoluzione del documento di `Specifica Tecnica`, dall'incontro è risultato come essenziale integrare il `Glossario` con la terminologia individuata durante le fasi di progettazione.\
Per quanto riguarda il resto della documentazione, pianifichiamo di modificare le `Norme di Progetto` e il `Piano di Qualifica`, aggiornando le metriche di qualità del prodotto: verranno rimosse alcune metriche ritenute ora poco sensate e non affini al nostro prodotto.\
Infine per quanto riguarda il prodotto software, negli ultimi giorni sono state gettate le basi di quest'ultimo, ora continueremo la codifica seguendo il design definito.

= Decisioni prese
- Arricchire il `Glossario` con la terminologia individuata durante la progettazione;
- Aggiornare le sezioni riguardanti le metriche di qualità del prodotto dei documenti `Norme di Progetto` e `Piano di Qualifica`;
- Definiti i ruoli per questo periodo;
- Continuare con la codifica software del design.


#pagebreak()

= Attività individuate
#tasks((
  (g.docs, 299), [Stesura di _questo_ verbale], p.furno,
  (g.docs, 300), [`Piano di Progetto`: consuntivo, retrospettiva e avanzamento raggiunto del periodo precedente], p.bettin,
  (g.docs, 301), [`Piano di Progetto`: pianificazione e preventivo del periodo corrente], p.amadori,
  (g.docs, 302), [`Norme di Progetto` e `Piano di Qualifica`: miglioramento delle metriche di qualitá del prodotto e dei rispettivi valori accettabili ed ottimi], p.vedovato,
  (g.docs, 303), [`Piano di Qualifica`: aggiunta delle metriche di qualità del prodotto alla sezione 'Cruscotto di valutazione della qualità'], p.furno,
  (g.docs, 304), [`Piano di Qualifica`: aggiornamento della sezione 'Cruscotto di valutazione della qualità'], p.furno,
  (g.docs, 305), [`Glossario`: aggiunta dei nuovi termini identificati nelle fasi di progettazione], p.fabbian,
  (g.docs, 297), [`Specifica Tecnica`: stesura della sezione riguardante i design pattern utilizzati], (p.bettin, p.amadori), 
  (g.docs, 298), [`Specifica Tecnica`: inizio stesura della sezione riguardante i diagrammi delle classi], (p.furno, p.fabbian, p.bettin, p.amadori),
  (g.jmap, 43), [Utilizzo di #link("https://github.com/google/guice")[Guice] per la Dependency Injection], (p.bonavigo),
  (g.jmap, 44), [Migliorare la gestione della configurazione, reset e provisioning degli account], (p.fabbian),
  (g.jmap, 45), [Sviluppo delle funzionalità relative alle mailbox], (p.vedovato),
  (g.jmap, 46), [Testing delle funzionalità relative alle mailbox], (p.vedovato),
  (g.jmap, 47), [Continuazione sviluppo della gestione degli update su database], (p.amadori),
  (g.jmap, 48), [Passaggio a #link("https://min.io")[Minio] per gli allegati], (p.bulychov),
))