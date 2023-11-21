#import "//templates/document.typ": *

#show: project.with(
  title: "Verbale interno del 2023-10-19",
  managers: p.vedovato,
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "1.1", "2023-11-09", p.bonavigo, p.amadori, "Aggiunta del registro delle modifiche e riorganizzazione dell'indice",
    "1.0", "2023-10-19", (p.bettin, p.bonavigo, p.furno), (p.amadori, p.bulychov, p.fabbian), "Stesura del verbale",
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione
- *Luogo*: Aula 1BC45 Torre Archimede;
- *Ora di inizio*: 14:15;
- *Ora di fine*: 16:15;
- *Partecipanti*: #p.amadori, #p.bettin, #p.bonavigo, #p.fabbian, #p.furno, #p.vedovato.

== Ordine del giorno
- Terminazione obblighi operativi;
- Definizione degli strumenti di gestione;
- Contatto con l'azienda _#(p.zextras)_;
- Individuazione materiale da produrre.

= Sintesi dell'incontro

Nella riunione odierna innanzitutto il gruppo si è dotato di un riflettore di posta elettronica e generato un logo con le potenti tecnologie moderne.

Il gruppo ha deciso di utilizzare GitHub per la gestione dei repository, creando poi la struttura di base delle repo.

È stato poi individuato Typst come software per stesura e l'impaginazione di tutta la documentazione. È un'alternativa moderna a LaTeX.

Successivamente sono stati definiti gli strumenti di gestione che verranno utilizzati d'ora in poi per la comunicazione interna al gruppo, per la stesura dei documenti e per il tracciamento delle attività.

Dopo di che sono stati avviati i primi contatti con l'azienda _#(p.zextras)_, proponente del capitolato C8, che è risultato essere il capitolato di maggior interesse del gruppo.

Infine si è individuato il materiale da produrre in ottica della presentazione della candidatura, di modo da organizzarsi ed iniziare la stesura dei documenti necessari.

= Decisioni prese

- Sito web per repository: GitHub;
- Strumenti per le comunicazioni interne: Telegram e Discord;
- Strumento per la stesura dei documenti: Typst;
- Strumento per il tracciamento delle attività: GitHub;
- Indirizzo mail "riflettore": #link("mailto:"+g.mail).