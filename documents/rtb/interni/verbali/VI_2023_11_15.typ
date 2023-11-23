#import "//templates/document.typ": *

#show: project.with(
  title: "Verbale interno del 2023-11-15",
  managers: p.vedovato,
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "1.0", "2023-11-23", p.bonavigo, p.vedovato, "Finalizzazione documento",
    "0.1", "2023-11-15", p.bonavigo, p.amadori, "Riassunto incontro",
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione
- *Luogo*: Chiamata Discord;
- *Ora di inizio*: 16:00;
- *Ora di fine*: 17:00;
- *Partecipanti*: #p.amadori, #p.bettin, #p.bonavigo, #p.bulychov, #p.fabbian, #p.furno, #p.vedovato.

== Ordine del giorno
- Restart dei casi d'uso;
- Discussione sull'idoneità dei linguaggi e relative librerie;
- Individuazione di nuove attività per la documentazione.

= Sintesi dell'incontro
Come prima cosa abbiamo confrontato tra componenti gli Use Case individuati, e riscontrato un problema: oltre ad essere poco coerenti, non comprendono molte casistiche descritte come necessarie dal proponente. È chiaramente necessaria una collaborazione più stretta tra gli analisti, così da chiarire dubbi ed espandere dove necessario. Una delle strade individuate per reperire informazioni è proprio la specifica del protocollo JMAP, considerando però solamente i punti di interesse.

Dopo una breve esplorazione delle librerie disponibili, il gruppo si trova d'accordo sull'ultilizzo della libreria proposta da _#(p.zextras)_. Le motivazioni sono principalmente due:
+ quasi tutti i componenti conoscono Java;
+ facilità di integrazione dei design pattern spiegati dal #p.cardin.

Infine abbiamo discusso lo stato della documentazione prodotta, ed inviduato diverse attività da svolgere, in particolare sulle `Norme di Progetto`.

= Decisioni prese
- Una più stretta collaborazione tra gli analisti, reperendo informazioni dalla specifica di JMAP;
- Individuazione della libreria proposta da _#(p.zextras)_ come preferita;
- Attività prioritarie da svolgere sulla documentazione.

= Attività individuate

#tasks((
  (g.docs, 40), [Stesura di _questo_ verbale], p.bonavigo,
  (g.docs, 41), [`Piano di Progetto`: analisi dei rischi], p.fabbian,
  (g.docs, 43), [`Analisi dei Requisiti`: studio più approfondito dei casi d'uso], (p.bettin, p.bulychov, p.furno),
  (g.docs, 44), [Fix ai documenti creati in passato, dovuto al cambiamento della WoW], p.bonavigo,
  (g.docs, 45), [`Norme di Progetto`: Stesura del processo di supporto "Gestione della configurazione"], p.furno,
  (g.docs, 46), [`Norme di Progetto`: Stesura del processo organizzativo "Miglioramento"], p.vedovato,
  (g.docs, 47), [`Norme di Progetto`: Stesura del processo organizzativo "Formazione"], p.vedovato,
  (g.docs, 48), [`Norme di Progetto`: Stesura del processo primario "Fornitura"], p.furno,
  (g.docs, 49), [`Norme di Progetto`: Stesura di parte del processo primario "Sviluppo"], p.fabbian,
  (g.docs, 50), [Studio approfondito della #link("https://github.com/iNPUTmice/jmap")[libreria Java] per l’implementazione del protocollo JMAP], p.bonavigo,
  (g.docs, 53), [`Norme di Progetto`: stesura del processo di supporto "Gestione della qualità"], p.amadori,
  (g.docs, 58), [Stesura del diario di bordo del 2023-11-20], p.fabbian,
  (g.docs, 67), [Utilizzo di uno stile coerente per gli elenchi puntati], p.bonavigo,
))
