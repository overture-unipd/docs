#import "//templates/document.typ": *

#show: project.with(
  title: "Verbale esterno del 2023-10-26",
  managers: (
    "Alex Vedovato",
  ),
  verifiers: (
    "Riccardo Bonavigo",
    "Francesco Furno",
    "Riccardo Fabbian",
  ),
  editors: (
    "Eleonora Amadori",
    "Michele Bettin",
    "Francesco Costantino Bulychov",
  ),
  recipients: (
    "Prof. Tullio Vardanega",
    "Prof. Riccardo Cardin",
    "Gruppo Overture",
  ),
  version: "1.0",
)

= Contenuti del verbale

== Informazioni sulla riunione
- Luogo: Chiamata sulla piattaforma dell'azienda Zextras
- Ora di inizio: 16:30
- Ora di fine: 17:30
- Partecipanti interni: Eleonora Amadori, Michele Bettin, Riccardo Bonavigo, Francesco Costantino Bulychov, Alex Vedovato, Riccardo Fabbian
- Partecipanti esterni: Alessio Crestani

== Ordine del giorno
- Stabilire metodologie pratiche per la possibile collaborazione 
- Approfondimento sul tipo di prodotto desiderato dalla proponente
- Discutere di procedure di carattere tecnico riguardanti il capitolato

= Resoconto

== Sintesi dell'incontro
Nella riunione il team si è confrontato con Alessio Crestani (engineering manager dell'azienda Zextras) riguardo il capitolato C8, preso in considerazione come prima scelta dal gruppo. L'incontro è stato incentrato sul tema trasparente del chiarire i dubbi che sono stati riscontrati, sia tecnici e realizzativi che di interazione.


==  Domande effettuate e relative risposte
/*+ Cosa ne pensano dell'utilizzo di Go come linguaggio*/



/*== verbale francesco

=== quanto spesso confrontarsi?
almeno 1 volta al mese, anche 2/3 settimane se necessario

=== infrastruttura server, fornite voi?
si, aspettiamo almeno le prime settimane per organizzarsi
dopodiché ci possono fornire un'immagine docker su un server o rack
per fine novembre istanziamo tutto

=== stress test, esempi?
chiedere a federico (collega che gestisce piú la parte tecnica)
quanti utenti possono autenticarsi contemporaneamente?
quanti possono chiedere inbox prima di rompersi?
quanti possono inviare email prima di rompersi?
quanto carico puo' sopportare un prodotto che utilizza quelle api?
capire quanto vada bene questo nuovo protocollo, gli stress test sono modi oggettivi per valutarlo

consiste nel numero fisico di cosa riesce a gestire
esempio sviluppate le api delle inbox, il testo prova che data la specifica tecnica, riesco a valutare quanti client possono chiedere l'inbox prima che si rompi tutto

imparare a usare locust per fare stress test puó avere una curva di apprendimento imporante per quanto riguarda il consumo del tempo, per questo é opzionale

=== approccio al progetto

- idea del progetto
l'approccio dovrebbe essere:
- capire come si sviluppa un microservizio
- capire come istanziarlo su docker
- 2 opzioni, aggiungere piú api senza stress test, oppure fare meno api (tipo 5) tutte testate

ci si aspetta un immagine docker container di un servizio che implementa i requisiti funzionali scritti nel capitolato

=== java e librerie
usare java con librerie potrebbe influenzare gli stress test, perché non si capirebbe se si sta testando il nostro prodotto o c'é un'influenza delle librerie

attenzione che i pattern di cardin sono difficili da rispettare con linguaggi funzionali (go, rust etc)
uml, design pattern, solid principle sono piú facili da rispettare con java

l'importante é saper gestire un ciclo software e non arrivare in fondo, quindi non é tanto riuscire a fare tutto, ma documentare e spiegare il perché non si é riusciti a farlo

=== nodi stateless

il requisito tecnico del servizio stateless non é atteso*/

//== verbale riccardo

=== Disponibilità a fornire sessioni formative sulle tecnologie e supporto nello svolgimento del progetto
L'azienda si è resa molto disponibile, offrendo la possibilità sia di eseguire incontri di supporto sia di rispondere ad eventuali dubbi che possono sorgere durante il progetto tramite mail botta e risposta.

=== Frequenza di incontro consigliata
Tramite l'esperienza accumulata negli anni precedenti l'azienda ha suggerito di effettuare incontri almeno una volta al mese, se necessario anche una volta ogni due settimane, senza obbligatoriamente fissare una cadenza di incontro regolare. È stata infatti accentuata l'importanza di non perdersi di vista.

=== Disponibilità a fornire un'infrastruttura server o altra strumentazione necessaria
L'azienda si è resa disponibile a fornire qualsiasi tipo di strumentazione possa essere utile allo svolgimento del progetto, dando la possibilità di procurarci ciò che ci serve in poche settimane. 

=== Cosa si intende con "Il servizio sviluppato deve essere scalabile mediante l’inizializzazione di più nodi stateless"
Con nodi stateless si intendono 2 microservizi: uno con i dati e uno che fa da proxy. Il proxy deve scalare orizzontalmente. 

=== Maggiori informazioni riguardanti gli stress test ed esempi
Gli stress test sono modi oggettivi per valutare il prodotto, testandolo nei casi limite. Essi ci aiutano a capire quanto questa nuova soluzione sia performante in confronto con il prodotto attuale. \
Alcuni esempi di stress test possono essere i seguenti: quanti utenti al massimo possono autenticarsi contemporaneamente? Quanti possono chiedere inbox? Quanti possono inviare email? Quanto carico puo' sopportare un prodotto che utilizza quelle api? \
Inoltre l'azienda consiglia di evitare l'utilizzo di framework nello sviluppo degli stress test in modo da non inquinare i risultati.

=== Approccio consigliato al progetto e PoC (Proof of Concept) atteso
L'azienda suggerisce di iniziare eseguendo per ogni requisito funzionale le seguenti tre fasi: sviluppare il microservizio, istanziarlo su docker e definire gli stress test necessari. \
Gli stress test quindi non sono veramente un requisito opzionale ma parte fondamentale del capitolato, dato che per l'azienda è interessante soprattutto testare le performance di JMAP. \
Come PoC l'azienda si aspetta un'immagine docker di un servizio che implementa e testa più requisiti funzionali possibili tra quelli presenti nel capitolato.


/*=== Cosa ne pensano dell'utilizzo di Go come linguaggio
dicono di non usare un linguaggio funziona. ma go non è funzionale*/
