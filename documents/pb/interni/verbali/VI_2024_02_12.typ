#import "//templates/document.typ": *

#show: project.with(
  title: "Verbale interno del 2024-02-12",
  managers: p.amadori,
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "1.0", "2024-02-13", p.vedovato, p.fabbian, "Aggiustamenti alla forma e finalizzazione del verbale",
    "0.1", "2024-02-12", p.vedovato, p.fabbian, "Prima bozza con riassunto incontro",
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione
- *Luogo*: Chiamata Discord;
- *Ora di inizio*: 15:25;
- *Ora di fine*: 16:00;
- *Partecipanti*: #p.amadori, #p.bettin, #p.bonavigo, #p.bulychov, #p.fabbian, #p.furno, #p.vedovato.

== Ordine del giorno
- Discussione rapida sull'incontro avvenuto con #p.zextras\;
- Punto della situazione rigurdante il design, l'estensione del PoC ed i contenuti della nuova documentazione.

= Sintesi dell'incontro
Subito dopo aver terminato l'incontro con la proponente #p.zextras, il gruppo si è riunito per discutere dei consigli che ci sono stati dati e fare il punto della situazione sul lavoro svolto negli ultimi giorni. \
Per quanto riguarda l’architettura di deployment, ci è stato consigliato di basarci su una architettura a microservizi. Tuttavia il gruppo si è mostrato un po' scettico riguardo a questo consiglio, infatti sebbene quest'ultima offra numerosi vantaggi in termini di agilità, scalabilità e resilienza, è importante valutare attentamente i costi e le sfide associate e assicurarsi di avere le risorse e le competenze necessarie per implementarla con successo. Visto il poco tempo a nostra disposizione e l'alta complessità che verrebbe introdotta in maniera non necessaria in un progetto di taglia ridotta come il nostro, probabilmente opteremo per un monolite, più semplice da sviluppare, testare e distribuire rispetto ai microservizi. \
Abbiamo discusso poi degli avanzamenti ottenuti nello studio dei possibili design pattern applicabili al nostro prodotto, argomento trattato anche con l'azienda, individuando dei buoni punti di partenza. \
Infine abbiamo trattato l'estensione del PoC, che in un paio di giorni dovrebbe essere terminata, dandoci ancora più sicurezza nelle fasi future di codifica, la quale potrà essere iniziata a breve, ed i contenuti che dovranno essere inseriti nella nuova documentazione ora che la struttura di base è stata definita.

= Decisioni prese
- Preferita un'architettura monolitica piuttosto che a microservizi;
- Individuati i design pattern dependency injection, builder, adapter e strategy come possibili candidati nel design del prodotto;
- Individuate le prime sezioni da inserire all'interno dei documenti `Manuale Utente` e `Specifica Tecnica`.

#pagebreak()

= Attività individuate
#tasks((
  (g.docs, 268), [Stesura di _questo_ verbale], p.vedovato,
  (g.docs, 269), [Stesura del verbale esterno del 2024-02-12], p.bulychov,
  (g.docs, 270), [`Manuale Utente`: Stesura della sezione 'Avvio del server di posta elettronica'], (p.bonavigo, p.vedovato),
  (g.docs, 271), [`Manuale Utente`: Stesura della sezione 'Collegamento di un client di posta elettronica al server'], p.fabbian,
  (g.docs, 272), [`Specifica Tecnica`: Stesura della sezione 'Tecnologie per la codifica'], p.bulychov,
  (g.docs, 273), [`Specifica Tecnica`: Stesura della sezione 'Tecnologie per l'analisi del codice'], p.fabbian,
  (g.docs, 274), [`Specifica Tecnica`: Stesura della sezione 'Tecnologie per il testing'], p.bonavigo,
  (g.docs, 275), [`Specifica Tecnica`: Stesura della sezione 'Requisiti soddisfatti'], p.vedovato,
))