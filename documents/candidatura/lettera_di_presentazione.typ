#import "//templates/document.typ": *

#show: project.with(
  title: "Lettera di presentazione",
  managers: p.vedovato,
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  group_is_recipient: false,
  changelog: (
    none, "2023-10-25", (p.amadori, p.fabbian, p.furno), (p.bulychov, p.bettin, p.bonavigo), none,
  ),
  show_outline: false,
)

Egregio #p.vardanega,

Egregio #p.cardin,

con la presente il gruppo _#(g.name)_ intende comunicarVi ufficialmente l’intenzione di candidarsi alla realizzazione del prodotto da Voi commissionato, denominato:

#align(center, text(13pt)[
  *JMAP: il nuovo protocollo per la posta elettronica*
])

proposto dall’azienda _#(p.zextras)_.

La documentazione relativa alla valutazione dei capitolati è consultabile presso la sezione Candidatura al seguente link:

#align(center, text(12.5pt)[
  #link(g.org+"/"+g.docs)
])

dove si possono trovare:
- Dicharazione degli impegni e preventivo dei costi;
- Valutazione dei capitolati e motivazione della scelta;
- Verbale esterno dell'incontro con _#(p.zextras)_ del 2023-10-26;
- Verbale interno del 2023-10-17;
- Verbale interno del 2023-10-19;
- Verbale interno del 2023-10-25.

Come specificato nel documento di dichiarazione degli impegni, il gruppo _#(g.name)_ ha preventivato un costo totale per la realizzazione del progetto di _*12635€*_ e prevede di consegnare il prodotto richiesto entro la data _*2024-03-15*_.

Di seguito si riportano i nominativi dei componenti del gruppo e i corrispondenti numeri di matricola:

#align(center,
  table(
    columns: (auto, auto),
    inset: 10pt,
    align: auto,
    [*Nominativo*], [*Matricola*], 
    [#p.amadori], [2089254], 
    [#p.bettin], [2042883],
    [#p.bonavigo], [1225420],
    [#p.bulychov], [2010004],
    [#p.fabbian], [2009110],
    [#p.furno], [2042327],
    [#p.vedovato], [2042353]
  )
)

Per qualsiasi chiarificazione rimaniamo a Vostra completa disposizione.

#align(right, "Cordiali Saluti,")
#align(right, [il gruppo _#(g.name)_])
