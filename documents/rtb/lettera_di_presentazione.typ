#import "//templates/document.typ": *

#show: project.with(
  title: "Lettera di presentazione",
  managers:  p.amadori,
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  group_is_recipient: false,
  changelog: (
    none, "2024-03-02", p.furno, p.bettin, none,
  ),
  show_outline: false,
)

Egregio #p.vardanega,

Egregio #p.cardin,

con la presente il gruppo _#(g.name)_ intende comunicarVi ufficialmente l’intenzione di sostenere la revisione *RTB* in data 2024-02-07 del progetto da voi commissionato, denominato 
#align(center, text(13pt)[
  *JMAP: il nuovo protocollo per la posta elettronica*
])

proposto dall’azienda _#(p.zextras)_.

La documentazione fornita è consultabile presso la sezione *rtb* della repo al seguente link:

#align(center, text(12.5pt)[
  #link(g.org+"/"+g.docs+"/tree/master/documents/rtb")
])

Al suo interno si possono trovare i documenti:\

*Interni*:
  - `Norme di Progetto v1.0.0`;
  - `Glossario v1.0.0`;
  - `Verbale interno del 2023-11-03 v1.1`;
  - `Verbale interno del 2023-11-07 v1.0`;
  - `Verbale interno del 2023-11-09 v1.0`;
  - `Verbale interno del 2023-11-15 v1.0`;
  - `Verbale interno del 2023-11-22 v1.1`;
  - `Verbale interno del 2023-11-28 v1.1`;
  - `Verbale interno del 2023-11-30 v1.0`;
  - `Verbale interno del 2023-12-08 v1.1`;
  - `Verbale interno del 2023-12-13 v1.0`;
  - `Verbale interno del 2023-12-21 v1.0`;
  - `Verbale interno del 2024-01-03 v1.0`;
  - `Verbale interno del 2024-01-09 v1.0`;
  - `Verbale interno del 2024-01-12 v1.0`.
  - `Verbale interno del 2024-02-02 v1.0`.
*Esterni*\
- `Analisi dei Requisiti v1.1.0`;
- `Piano di Progetto v1.0.0`;
- `Piano di Qualifica v1.1.0`;
- `Verbale esterno del 2023-11-09 v1.1`;
- `Verbale esterno del 2023-11-21 v1.0`;
- `Verbale esterno del 2023-11-30 v1.0`;
- `Verbale esterno del 2023-12-18 v1.0`;
- `Verbale esterno del 2024-01-10 v1.0`.
Viene inoltre fornito il *Proof of Concept*, disponibile al seguente link:

#align(center, text(12.5pt)[
  #link(g.org+"/"+g.jmap)
])

Il gruppo _#(g.name)_ rinnova la data di consegna del progetto al *2024-03-22* e aggiorna il preventivo dei costi per un importo totale di *12.615€*.\
Per qualsiasi chiarificazione rimaniamo a Vostra completa disposizione.

#align(right,"Cordiali Saluti,")
#align(right, [il gruppo _#(g.name)_])