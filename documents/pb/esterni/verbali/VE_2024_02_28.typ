#import "//templates/document.typ": *

#show: project.with(
  title: "Verbale esterno del 2024-02-28",
  managers: p.vedovato,
  recipients: (
    p.vardanega,
    p.cardin,
    [_#(p.zextras)_],
  ),
  changelog: (
    "1.0", "2024-02-29", p.fabbian, p.bulychov, "Finalizzazione del verbale",
    "0.1", "2024-02-28", p.fabbian, p.bulychov, "Prima bozza del verbale esterno",
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione
- *Luogo*: Chiamata sulla piattaforma dell'azienda _#(p.zextras)_;
- *Ora di inizio*: 17:00;
- *Ora di fine*: 17:40;
- *Partecipanti*: #p.amadori, #p.bettin, #p.bonavigo, #p.bulychov, #p.fabbian, #p.furno, #p.vedovato\;
- *Partecipanti esterni*: #p.rispo.


== Ordine del giorno
- Discussione sull'uso di Postman per superare le difficoltà riscontrate con i client e testare le API;
- Comunicazione riguardo alla decisione di non soddisfare i requisiti funzionali desiderabili relativi alla gestione della condivisione delle cartelle;
- Chiarimenti sui test di accettazione richiesti dall'azienda.

= Sintesi dell'incontro
All'interno della riunione, abbiamo iniziato discutendo i progressi compiuti dal team al fine di aggiornare la proponente sul nostro stato attuale. Successivamente, abbiamo affrontato l'ordine del giorno: prima discutendo delle possibili alternative ai client già testati per dimostrare le funzionalità del nostro prodotto software, poi esaminando l'argomento "condivisione delle cartelle" e come ultima cosa richiedendo chiarimenti sui test di accettazione. \
Infine abbiamo discusso l'uso di alcuni pattern, cercando insieme delle soluzioni a dei problemi da noi riscontrati di cui parleremo anche con il #p.cardin in un colloquio dedicato.

= Domande e risposte 
== Dati i problemi emersi con i client già testati e le limitate funzionalità che essi offrono, potremmo valutare l'opzione di utilizzare Postman per testare le API del nostro prodotto?
Certamente si, difatti non ha senso continuare a sbattere la testa su client acerbi e che potrebbero non implementare il protocollo alla perfezione, ma è molto meglio concentrarsi invece sulla codebase, sui test e garantire il funzionamento complessivo del sistema. Postman è ottimo perchè non solo consente di dimostrare la correttezza del prodotto software, ma offre anche strumenti per la scrittura di richieste concatenate. Questo significa che le risposte alle richieste precedenti possono essere utilizzate come input per richieste successive, il che si adatta perfettamente alle esigenze del capitolato.

== Visto il poco tempo a nostra disposizione e la complessità che comporterebbe gestire la condivisione delle cartelle, sarebbe un problema se ci concentrassimo su altri aspetti abbandonando questo punto?
Come menzionato precedentemente, l'azienda preferirebbe che implementassimo anche i requisiti relativi alla condivisione delle cartelle. Tuttavia, poiché non rappresenta l'obiettivo principale del capitolato e comporterebbe una complessità aggiuntiva non essenziale, non c'è alcun problema se scegliamo di trascurare questo aspetto. È decisamente preferibile infatti concentrarsi sulla creazione di più scenari per gli stress test piuttosto che implementare funzionalità aggiuntive che non sono fondamentali per rispondere alle domande che pone il capitolato.

== Non abbiamo una comprensione completa del concetto di test di accettazione. Potreste fornirci chiarimenti in merito?
Per l'azienda, i test di accettazione comprendono una panoramica completa di tutte le funzionalità del prodotto da noi sviluppato, dimostrando che tutto funzioni correttamente, inclusi soprattutto i test di carico. I test di accettazione dimostrano il soddisfacimento dei requisiti obbligatori alla presenza della proponente e costituiscono una demo per l'azienda, garantendo che il sistema funzioni come previsto. Sono simili ai test di sistema e vengono eseguiti generalmente manualmente per mostrare le funzionalità del prodotto e garantire che le aspettative siano state soddisfatte.

= Decisioni prese
- Verrà utilizzato Postman per dimostrare la correttezza del nostro prodotto;
- Raggiunto l'accordo relativo al non soddisfacimento dei requisiti funzionali desiderabili riguardanti la gestione della condivisione delle cartelle;
- Definito che tipo di test di accettazione sono richiesti dall'azienda.