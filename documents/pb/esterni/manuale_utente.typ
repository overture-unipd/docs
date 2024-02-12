#import "//templates/document.typ": *

#show: project.with(
  title: "Manuale Utente",
  managers: p.amadori,
  recipients: (
    p.vardanega,
    p.cardin,
    [_#(p.zextras)_],
  ),
  changelog: (
    "0.0.1", "2024-02-12", p.bulychov, p.fabbian, 
    [
      Struttura di base del documento e introduzione.
    ]
  ),
  outline_depth: 3,
)

= *Introduzione*
== Scopo del prodotto
Lo scopo principale del prodotto é quello di permettere all'azienda #glossary("proponente") di poter valutare se ha senso investire tempo e risorse per implementare il #glossary("protocollo") #glossary("JMAP") nel loro prodotto di punta chiamato #glossary("Carbonio"), una soluzione di collaborazione online che ruota attorno alla gestione delle email. JMAP è difatti un protocollo di comunicazione appositamente progettato per semplificare l'interazione tra client e server nell'ambito delle applicazioni di posta elettronica.\
Attualmente, Carbonio fa affidamento su protocolli standard come IMAP, POP e #glossary("Exchange Active Sync"). Di conseguenza, l'implementazione di JMAP potrebbe offrire potenzialmente un aumento di #glossary("funzionalità") e #glossary("efficienza") a un costo inferiore.

== Scopo del documento
Questo documento ha lo scopo di spiegare ai committenti le modalità di utilizzo e le funzionalità del sistema informatico che il gruppo Overture ha dovuto sviluppare per adempiere alle richieste fatte in merito allo studio del protocollo JMAP per la posta elettronica.\
Al suo interno verranno illustrate tutte le istruzioni per avviare il server di posta elettronica (quindi il nostro backend), le istruzioni per avviare un client di posta elettronica, una breve guida per mostrare il funzionamento di un client e di come riesce a fruire di tutti i requisiti che il server implementa e infine come avviare gli stress test richiesti dal committente così da poterli modificare a piacimento al fine di testare più approfonditamente o in modo diverso alcune parti.

== Glossario
Per evitare ambiguitá o incomprensioni riguardanti la terminologia usata nel documento, é stato deciso di adottare un glossario in cui vengono riportate le varie definizioni. In questa maniera in esso verranno riportati tutti i termini specifici del dominio d'uso con relativi significati.
\
La presenza di un termine all'interno del `Glossario` viene indicata applicando #glossary("questo stile").

== Riferimenti
=== Riferimenti normativi
- `Norme di Progetto v1.0.0`: \ https://overture-unipd.github.io/docs/rtb/interni/norme_di_progetto_v1.0.0.pdf
- *PD2 - Regolamento del progetto didattico* \
  https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/PD2.pdf
- *Capitolato d'appalto C8*: JMAP, il nuovo protocollo standard per la comunicazione email \
  https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C8.pdf

=== Riferimenti informativi
- `Glossario v1.0.0`: \ https://overture-unipd.github.io/docs/rtb/interni/glossario_v1.0.0.pdf