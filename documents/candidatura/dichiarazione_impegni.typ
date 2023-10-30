#import "//templates/document.typ": *

#show: project.with(
  title: "Dichiarazione degli impegni",
  managers: (
    "Alex Vedovato",
  ),
  verifiers: (
    "Eleonora Amadori",
    "Michele Bettin",
    "Riccardo Bonavigo",
  ),
  editors: (
    "Francesco Costantino Bulychov",
    "Riccardo Fabbian",
    "Francesco Furno",
  ),
  recipients: (
    "Prof. Tullio Vardanega",
    "Prof. Riccardo Cardin",
  ),
  version: "1.0",
  date: "2023-10-25"
)

\
= Scopo del documento
In questo documento vengono riportati il preventivo per il progetto, calcolato in base alla suddivisone in ruoli delle ore di lavoro e relativi costi, il totale di ore produttive assegnate a persona e la scadenza ultima di consegna prevista.


= Impegni orari
Ogni componente del gruppo Overture si impegna a dedicare al progetto un totale di 90 ore produttive, suddivise equamente tra i membri nello svolgimento dei vari ruoli previsti.

La seguente tabella riporta la spartizione decisa dal gruppo:

#align(center,
  table(
    columns: 4,
    inset: 10pt,
    align: center,
    [*Ruoli*], [*Costo orario*], [*Ore per ruolo*], [*Ore per membro*],
    [Responsabile], [30], [63], [9],
    [Amministratore], [20], [56], [8],
    [Verificatore], [15], [147], [21],
    [Progettista], [25], [119], [17],
    [Programmatore], [15], [168], [24],
    [Analista], [25], [77], [11],
    [], [_Totale costo_], [_Totale ore_], [_Totale ore_],
    [], [12635], [630], [90]
  )
)

= Ruoli

Il calcolo delle ore per ruolo è avvenuto tenendo presente le seguenti funzioni per i ruoli da ricoprire:

- Responsabile: colui che rappresenta il progetto verso l’esterno e che governa il team, pianificando e gestendo le risorse e coordinando il gruppo;
- Amministratore: colui che definisce, controlla, e si occupa della manutenzione dell’ambiente IT di lavoro;
- Verificatore: colui che giudica e verifica il lavoro svolto con il fine di garantire qualità, affidabilità e robustezza;
- Progettista: colui che determina le scelte realizzative del progetto;
- Programmatore: colui che si occupa della  realizzazione e manutenzione del prodotto come definito dal progettista;
- Analista: colui che si impegna a conoscere il dominio del problema.

= Preventivo costi e promessa di consegna

Il preventivo calcolato del progetto equivale a #emph(text(weight: "bold")[12635€]) ed il gruppo stima di terminare il prodotto entro e non oltre la data #emph(text(weight: "bold")[15-03-2024]).