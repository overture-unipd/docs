#import "//templates/document.typ": *

#show: project.with(
  title: "Verbale interno del 2023-12-08",
  managers: p.bettin,
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "1.0", "2023-12-09", p.furno, p.fabbian, "Finalizzazione del verbale",
    "0.1", "2023-12-08", p.furno, p.fabbian, "Prima bozza con riassunto incontro",
  ),
)
  
= Contenuti del verbale

== Informazioni sulla riunione
- *Luogo*: Chiamata Discord;
- *Ora di inizio*: 10:00;
- *Ora di fine*: 11:00;
- *Partecipanti*: #p.amadori, #p.bettin, #p.bonavigo, #p.bulychov, #p.fabbian, #p.furno, #p.vedovato.

== Ordine del giorno
- Valutazione POC
- Discutere piano di progetto
- Discutere piano di qualifica
- Revisione usecase e conseguenze per l'analisi dei requisiti (dopo il colloquio avuto con #p.cardin)
- Finalizzazione del consuntivo ed assegnazione dei ruoli per il nuovo periodo


= Sintesi dell'incontro
Il gruppo si è riunito con l'obiettivo di stabilire, dopo un colloquio con il #p.cardin, la direzione da seguire nello sviluppo del sistema. 
La valutazione si è concentrata sull'individuare se il focus del progetto è improntato sulla realizzazione di un backend e quindi la sola esposizione delle relative  API o anche sulla realizzazione di un client eventuale di posta elettronica. 

= Discussione 
Discutendo con il docente abbiamo capito che il focus del progetto è l'esposizione di API per permettere ad un client qualsiasi, nel nostro caso uno di quelli che troviamo nel repository https://jmap.io/software.html di utilizzare il servizio di posta elettronica con il protocollo JMAP.
Dal momento che esponiamo API fruibili da ogni client (anche un client da CLI), dobbiamo prevedere che il sistema gestisca tutti gli errori di integrità che posso essere causati da un client che potrebbe aver fornito informazioni non coerenti.
Rivalutando le decisioni prese in passato, è emerso che nei nostri attuali diagrammi dei casi d'uso sono presenti errori generici che si riferiscono a condizioni diverse. Durante una discussione, ci è stato suggerito di creare errori specifici e associarli a ciascuna condizione corrispondente.

= Decisioni prese
- Cambiare gli attori da utente a client.
- Gestione errori per l'integrità del sistema.
- Stesura preventiva delle modalità di testing.
- Stesura delle sezioni per la qualità.

= Attività individuate
#tasks((
  (g.docs, 129), [Stesura di _questo_ verbale], p.furno,
  (g.docs, 130), [Stesura del diario di bordo del 2023-12-11], p.bettin,
  (g.docs, 131), [`Piano di Progetto`: Consuntivo del periodo delle due settimane precedenti], p.bulychov,
  (g.docs, 132), [`Piano di Progetto`: Pianificazione del periodo corrente], p.bulychov,
  (g.docs, 133), [`Piano di Progetto`: Preventivo del periodo corrente], p.bulychov,
  (g.docs, 134), [`Piano di Qualifica`: Stesura della sezione 'Qualità di processo' in 'Obiettivi metrici di qualità'], p.bettin,
  (g.docs, 135), [`Piano di Qualifica`: Stesura della sezione 'Qualità di prodotto' in 'Obiettivi metrici di qualità'], p.bettin,
  (g.docs, 136), [`Piano di Qualifica`: Stesura della sezione 'Metodologie di testing'], p.amadori,
  (g.docs, 137), [`Piano di Qualifica`: Stesura della sezione 'Cruscotto di valutazione della qualità'], p.amadori,
  (g.docs, 138), [`Piano di Qualifica`: Stesura della sezione 'Iniziative di automiglioramento per la qualità'], p.amadori,
  (g.docs, 126), [`Analisi dei Requisiti`: ridefinizione degli attori nei vari casi d'uso], p.vedovato,
  (g.docs, 127), [`Analisi dei Requisiti`: approfondire la gestione degli errori nei vari casi d'uso], p.bonavigo,
  (g.docs, 128), [`Analisi dei Requisiti`: separare gli errori provenienti da condition differenti nei vari casi d'uso], p.fabbian,
  (g.jmap, 12), [Refactoring del codice: suddivione in più classi e funzioni], p.vedovato,
  (g.jmap, 13), [Implementare un dispatcher per le richieste JMAP], p.furno,
  (g.jmap, 14), [Utilizzare la libreria individuata per conversione e validazione delle richieste ricevute], p.bettin,
  (g.jmap, 15), [Impostazione dei test di unità], p.furno,
  (g.jmap, 16), [Utilizzo di variabili d'ambiente per la configurazione], p.amadori,
))