#import "//templates/document.typ": *

#show: project.with(
  title: "Verbale interno del 2023-11-09",
  managers: p.vedovato,
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "1.0", "2023-11-23", p.bonavigo, p.vedovato, "Finalizzazione del verbale",
    "0.1", "2023-11-09", p.bonavigo, p.amadori, "Bozza con riassunto incontro",
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione
- *Luogo*: Chiamata Discord;
- *Ora di inizio*: 16:00;
- *Ora di fine*: 17:00;
- *Partecipanti*: #p.amadori, #p.bettin, #p.bonavigo, #p.bulychov, #p.fabbian, #p.furno, #p.vedovato.

== Ordine del giorno
- Discussione sull'incontro appena svolto con il proponente;
- Breve esplorazione dei possibili linguaggi da utilizzare;
- Decisione dei ruoli validi per le prime due settimane.

= Sintesi dell'incontro
Immediatamente dopo l'incontro tenuto con _#(p.zextras)_, il gruppo si è riunito per una ulteriore discussione. Da quanto emerso nell'incontro, ci è risultato abbastanza urgente informarci sulle possibili tecnologie necessarie per il progetto. Ogni membro del gruppo inizierà a colmare i buchi di conoscenza riguardo i punti maggiormente richiesti dal proponente: sistemi di containerizzazione e framework di stress testing.

Poi ci siamo avviati in un breve escursus sui linguaggi con almeno una libreria JMAP disponibile. Tra questi, non abbiamo raggiunto una preferenza unanime, decidendo quindi di esplorare più a fondo le librerie presenti.

Inoltre abbiamo cercato di assegnare dei ruoli consoni a questo primo periodo (2 settimane) di progetto. Abbiamo individuato come necessari:
- 3 analisti;
- 1 progettista;
- 1 verificatore;
- 1 responsabile;
- 1 amministratore.

Una nota importante è che ogni ruolo può produrre documentazione, tranne che per il verificatore cue sarà autorizzato a solamente a controllare e verificare il lavoro altrui.\
Maggiori informazioni sulla rotazione (incluse motivazioni ed abilitazione) saranno presenti nel `Piano di Progetto`.

Infine abbiamo deciso di inziare la stesura del `Piano di Progetto` e del `Piano di Qualifica`.

= Decisioni prese
- Rotazione dei ruoli per questo primo periodo;
- Il verificatore non può produrre documentazione;
- Tutto il gruppo si impegna a studiare le tecnologie necessarie, oltre che esplorare le librerie disponibili per i vari linguaggi.

= Attività individuate
#tasks((
  "-", "Esplorazione delle librerie JMAP disponibili.", [Tutto il gruppo _#(g.name)_],
  (g.docs, 22), [Stesura verbale esterno del 2023-11-09], p.bonavigo,
  (g.docs, 25), [Stesura del diario di bordo del 2023-11-13], p.vedovato,
  (g.docs, 26), [Stesura di _questo_ verbale], p.bonavigo,
  (g.docs, 29), [`Glossario`: aggiunta dei primi termini], p.vedovato,
  (g.docs, 34), [`Piano di Progetto`: struttura di base ed introduzione],p.bulychov,
  (g.docs, 35), [`Piano di Qualifica`: struttura di base ed introduzione], p.bulychov,
))