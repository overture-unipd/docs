#import "//templates/document.typ": *

#show: project.with(
  title: "Verbale esterno del 2023-10-26",
  managers:  p.vedovato,
  recipients: (
    p.vardanega,
    p.cardin,
    [_#(p.zextras)_],
  ),
  changelog: (
    "1.1", "2023-11-09", p.bonavigo, p.amadori, "Aggiunta del registro delle modifiche e riorganizzazione dell'indice",
    "1.0", "2023-10-28", p.amadori, p.fabbian, "Sistemazione di errori grammaticali",
    "0.1", "2023-10-26", (p.amadori, p.bettin, p.bulychov), (p.bonavigo, p.fabbian, p.furno), "Prima stesura del documento",
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione
- *Luogo*: Chiamata sulla piattaforma dell'azienda _#(p.zextras)_
- *Ora di inizio*: 16:30
- *Ora di fine*: 17:30
- *Partecipanti*: #p.amadori, #p.bettin, #p.bonavigo, #p.bulychov, #p.fabbian, #p.vedovato
- *Partecipanti esterni*: #p.crestani

== Ordine del giorno
- Stabilire metodologie pratiche per la possibile collaborazione 
- Approfondimento sul tipo di prodotto desiderato dalla proponente
- Discutere di procedure di carattere tecnico riguardanti il capitolato

= Sintesi dell'incontro
Nella riunione il team si è confrontato con Alessio Crestani (engineering manager dell'azienda _#(p.zextras)_) riguardo il capitolato C8, preso in considerazione come prima scelta dal gruppo. L'incontro è stato incentrato sul tema trasparente del chiarire i dubbi che sono stati riscontrati, sia tecnici e realizzativi che di interazione.

=  Domande effettuate e relative risposte

== Disponibilità a fornire sessioni formative sulle tecnologie necessarie
L'azienda si è resa molto disponibile, offrendo la possibilità sia di eseguire incontri di supporto sia di rispondere ad eventuali dubbi che possono sorgere durante il progetto tramite mail botta e risposta.

== Frequenza di incontro consigliata
Tramite l'esperienza accumulata negli anni precedenti l'azienda ha suggerito di effettuare incontri almeno una volta al mese, se necessario anche una volta ogni due settimane, senza obbligatoriamente fissare una cadenza di incontro regolare. È stata infatti accentuata l'importanza di non perdersi di vista.

== Disponibilità a fornire un'infrastruttura server
L'azienda si è resa disponibile a fornire qualsiasi tipo di strumentazione possa essere utile allo svolgimento del progetto, dando la possibilità di procurarci ciò che ci serve in poche settimane. 

== Cosa intendono con "nodi stateless scalabili orizzontalmente"
Sostanzialmente intendono l'utilizzo di due servizi: uno con i dati e uno che funziona da "proxy" per le richieste. Il database è gestito da un nodo unico, mentre possono esserci più nodi "proxy", scalando quindi il servizio orizzontalmente. 

== Maggiori informazioni riguardanti gli stress test
Gli stress test sono modi oggettivi per valutare il prodotto, testandolo nei casi limite. Essi ci aiutano a capire quanto questa nuova soluzione sia performante in confronto con il prodotto attuale. \
Alcuni esempi di stress test possono essere i seguenti: quanti utenti al massimo possono autenticarsi contemporaneamente? Quanti possono chiedere inbox? Quanti possono inviare email? Quanto carico puo' sopportare un prodotto che utilizza quelle api? \
Inoltre l'azienda consiglia di evitare l'utilizzo di framework nello sviluppo degli stress test in modo da non inquinare i risultati.

== Approccio consigliato al PoC (Proof of Concept) atteso
L'azienda suggerisce di iniziare eseguendo per ogni requisito funzionale le seguenti tre fasi: sviluppare il microservizio, istanziarlo su docker e definire gli stress test necessari. \
Gli stress test quindi non sono veramente un requisito opzionale ma parte fondamentale del capitolato, dato che per l'azienda è interessante soprattutto testare le performance di JMAP. \
Come PoC l'azienda si aspetta un'immagine docker di un servizio che implementa e testa più requisiti funzionali possibili tra quelli presenti nel capitolato.
