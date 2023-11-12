#import "//templates/document.typ": *

#show: project.with(
  title: "Verbale interno del 2023-11-03",
  managers: p.vedovato,
  recipients: (
    p.vardanega,
    p.cardin,
    g.name,
  ),
  changelog: (
    "1.1", "2023-11-12", p.bonavigo, p.amadori, "Punta a nuovo nome repository: da `docs-sources` a `docs`",
    "1.0", "2023-11-09", p.vedovato, p.amadori, "Correzioni finali",
    "0.1", "2023-11-03", p.vedovato, p.amadori, "Prima bozza"
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione
- Luogo: Chiamata Discord
- Ora di inizio: 10:00
- Ora di fine: 11:30
- Partecipanti: Eleonora Amadori, Michele Bettin, Riccardo Bonavigo, Francesco Costantino Bulychov, Riccardo Fabbian, Francesco Furno, Alex Vedovato

== Ordine del giorno
- Discutere del way of working adottato dal gruppo.

= Sintesi dell'incontro
Nel breve incontro odierno, avvenuto in attesa dell'aggiudicazione degli appalti, il gruppo si è ritrovato per trattare meglio del way of working che verrà adottato durante lo svolgimento del progetto. Si sono dunque discussi il tema della rotazione dei ruoli fra i membri, l'utilizzo del framework Scrum, le best practice da seguire per la stesura dei verbali ed è stata decisa la struttura di base del documento che conterrà tutte queste informazioni e molte altre in futuro, ovvero le Norme di Progetto. Infine sono stati trattati anche i temi ITS (issue tracking system) e repository, confermando ciò di buono che già era stato fatto e prendendo nuove decisioni per migliorare nel futuro.

= Decisioni prese

- La rotazione dei ruoli avverrà ogni due settimane, in modo da fornire il tempo necessario per adattarsi al cambiamento ed al contempo evitare periodi troppo lunghi all'interno di un singolo ruolo;
- Si è deciso di organizzare per processi il documento Norme di Progetto seguendo lo standard ISO/IEC 12207:1995;
- É stata bloccata la possibilità di eseguire modifiche direttamente sul ramo principale delle varie repository. D'ora in poi ogni aggiornamento verrà richiesto tramite "pull-request", ed approvato da un terzo (il verificatore);
- Si è deciso di iniziare ad associare le decisioni prese in seguito alle riunioni che scatenano delle azioni con le loro corrispondenti issue tramite link;

= Attività individuate

#tasks(
  (
    (g.docs, 9), [Stesura di _questo_ verbale], p.vedovato,
    (g.docs, 10), [Norme di Progetto: struttura base], p.vedovato,
    (g.docs, 11), [Norme di Progetto: stesura dell'introduzione], p.vedovato,
    (g.docs, 12), [Norme di Progetto: stesura del processo di supporto "Documentazione"], p.furno,
    (g.docs, 13), [Norme di Progetto: stesura del processo di supporto "Verifica"], p.fabbian,
    (g.docs, 14), [Norme di Progetto: stesura del processo di supporto "Validazione"], p.fabbian,
    (g.docs, 15), [Norme di Progetto: stesura del processo di organizzativo "Gestione dei processi"], p.furno,
  )
)
