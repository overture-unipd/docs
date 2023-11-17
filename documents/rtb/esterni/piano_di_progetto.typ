#import "//templates/document.typ": *

#show: project.with(
  title: "Piano di Progetto",
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
Questo documento ha l'obiettivo di delineare la pianificazione e la gestione delle attività necessarie per la realizzazione del progetto. Vengono approfonditi aspetti chiave come l'`Analisi dei Rischi`, il modello di sviluppo adottato, la pianificazione delle attività, la suddivisione dei ruoli, nonché stime dei costi e delle risorse necessarie.

== Scopo del prodotto
Lo scopo principale del prodotto é quello di permettere all'azienda proponente di poter valutare se ha senso investire tempo e risorse per implementare il protocollo JMAP nel loro prodotto di punta chiamato Carbonio, una soluzione di collaborazione online che ruota attorno alla gestione delle email. JMAP è difatti un protocollo di comunicazione appositamente progettato per semplificare l'interazione tra client e server nell'ambito delle applicazioni di posta elettronica.\
Attualmente, Carbonio fa affidamento su protocolli standard come IMAP, POP e Exchange Active Sync. Di conseguenza, l'implementazione di JMAP potrebbe offrire potenzialmente un aumento di funzionalità e efficienza a un costo inferiore.

== Glossario
Per evitare ambiguitá o incomprensioni riguardanti la terminologia usata nel documento, é stato deciso di adottare un glossario in cui vengono riportate le varie definizioni. In questa maniera in esso verranno riportati tutti i termini specifici del dominio d'uso con relativi significati.
\
La presenza di un termine all'interno del `Glossario` viene indicata applicando #glossary("questo stile").

== Riferimenti
=== Riferimenti normativi
- `Norme di Progetto`
- *PD2 - Regolamento del progetto didattico* \
  https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/PD2.pdf
- *Capitolato d'appalto C8*: JMAP, il nuovo protocollo standard per la comunicazione email \
  https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C8.pdf

=== Riferimenti informativi
- *T2 - Processi di ciclo di vita del software* \
  https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T2.pdf
- *T4 - Gestione di progetto* \
  https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T4.pdf
