#import "//templates/document.typ": *

#show: project.with(
  title: "Piano di Qualifica",
  managers: p.vedovato,
  recipients: (
    p.vardanega,
    p.cardin,
    [_#(p.zextras)_],
  ),
  changelog: (
    "0.0.1", "2023-11-15", p.bulychov, p.amadori, "Struttura di base ed introduzione",
  )
)

\

= *Introduzione*
== Scopo del documento
Questo documento presenta le strategie di verifica e validazione implementate per garantire la qualità del prodotto e dei processi coinvolti nel progetto in questione. Data la natura evolutiva del documento, i contenuti saranno ampliati e modificati nel corso del tempo.\
Saranno inoltre riportati i risultati delle verifiche effettuate sul prodotto, con l'obiettivo di correggere tempestivamente eventuali problematiche riscontrate.

== Scopo del prodotto
Il prodotto mira principalmente a consentire all'azienda proponente di valutare se sia conveniente dedicare tempo e risorse all'integrazione del protocollo JMAP nel loro prodotto principale chiamato Carbonio, una soluzione di collaborazione online centrata sulla gestione delle email. Infatti JMAP é un protocollo di comunicazione progettato per semplificare l'interazione tra client e server nelle applicazioni di posta elettronica.\
Al momento, Carbonio utilizza protocolli standard come IMAP, POP e Exchange Active Sync, perció l'implementazione di JMAP potrebbe potenzialmente garantire maggiori funzionalità ed efficienza a un costo più contenuto.

== Glossario
Per evitare ambiguitá o incomprensioni riguardanti la terminologia usata nel documento, é stato deciso di adottare un glossario in cui vengono riportate le varie definizioni. In questa maniera in esso verranno riportati tutti i termini specifici del dominio d'uso con relativi significati.
\
La presenza di un termine all'interno del `Glossario` viene indicata applicando #glossary("questo stile").

== Riferimenti
=== Riferimenti normativi
- `Norme di Progetto`
- *Capitolato d'appalto C8*: JMAP, il nuovo protocollo standard per la comunicazione email \
  https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C8.pdf

=== Riferimenti informativi
- *ISO/IEC 9126* \
  https://en.wikipedia.org/wiki/ISO/IEC_9126
- *ISO/IEC 12207* \
  https://www.math.unipd.it/~tullio/IS-1/2009/Approfondimenti/ISO_12207-1995.pdf

