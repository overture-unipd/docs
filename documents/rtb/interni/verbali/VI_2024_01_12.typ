#import "//templates/document.typ": *

#show: project.with(
  title: "Verbale interno del 2024-01-12",
  managers: p.bulychov,
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "1.0", "2024-01-13", p.fabbian, p.bonavigo, "Finalizzazione del verbale",
    "0.1", "2024-01-12", p.fabbian, p.bonavigo, "Prima bozza con riassunto incontro",
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione
- *Luogo*: Chiamata Discord;
- *Ora di inizio*: 19:30;
- *Ora di fine*: 20:00;
- *Partecipanti*: #p.amadori, #p.bettin, #p.bonavigo, #p.bulychov, #p.fabbian, #p.furno, #p.vedovato.

== Ordine del giorno
- Confronto sull'andamento della attività;
- Discussione sulla prontezza del gruppo per la RTB.

= Sintesi dell'incontro
Nell'incontro odierno il gruppo si è riunito per un rapido confronto sull'andamento della attività rimanenti, le quali sono necessarie per candidarsi alla RTB. Ne è emerso che tutto sta procedendo secondo quanto pianificato e, dunque, entro la fine di questo periodo sicuramente la documentazione ed il PoC saranno pronti, con quest'ultimo che ha richiesto addirittura meno sforzi di quelli preventivati per risolvere i problemi precedentemente emersi. \
Di conseguenza si è passati a discutere della prontezza del gruppo per candidarsi alla RTB: una volta fatti gli ultimi aggiornamenti a `Piano di Progetto` e `Piano di Qualifica` e sistemati gli ultimissimi dettagli generali, ci riteniamo pronti. 

= Decisioni prese
- Scrivere una email al #p.cardin per comunicare l'intenzione del gruppo a partecipare al colloquio relativo alla prima parte della RTB.

= Attività individuate
#tasks((
  (g.docs, 205), [Stesura di _questo_ verbale], p.fabbian,
  (g.docs, 206), [`Piano di Progetto`: Consuntivo del periodo della settimana corrente], p.fabbian,
  (g.docs, 207), [`Piano di Progetto`: Sommario finale RTB], p.bonavigo,
  (g.docs, 208), [`Piano di Progetto`: Pianificazione in attesa del passaggio della RTB], p.bonavigo,
  (g.docs, 209), [`Piano di Qualifica`: Aggiornamento della sezione 'Cruscotto di valutazione della qualità'], p.vedovato,
  (g.docs, 210), [`Piano di Qualifica`: Aggiornamento della sezione 'Iniziative di automiglioramento per la qualità'], p.bettin,
  (g.docs, 211), [Validare il `Piano di Progetto` per la RTB], p.furno,
  (g.docs, 212), [Validare le `Piano di Qualifica` per la RTB], p.bulychov,
  (g.docs, 213), [Aggiungere il riferimento alla versione dei documenti nei vari documenti], p.fabbian,
  (g.docs, 214), [Stesura della lettera di presentazione per la RTB], p.bulychov,
))