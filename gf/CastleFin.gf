concrete CastleFin of Castle = open CatFin, SyntaxFin, ParadigmsFin in {
  lincat
    Line = Text ;
    ElemSent = Cl ;
    Subject = NP ;
    Thing = CN ;
    Quality = AP ;
    Connector = Conj ;

  lin

    Connect conn c1 c2 = mkText (mkS conn (mkS c1) (mkS c2)) ;
    Juxtapose c1 c2 = mkText (mkText c1) (mkText c2) ;

    Pred subj qual = mkCl subj qual ;

    Generalize thing = mkNP every_Det thing ;
    Particularize thing = mkNP a_Det thing ;
    NegGeneralize thing = mkNP not_Predet (mkNP every_Det thing) ;
    NegParticularize thing = mkNP no_Quant thing ;

    Count = mkCN (mkN "kreivi") ;
    Stranger = mkCN (mkN "muukalainen") ;
    Look = mkCN (mkN "katse") ;
    Church = mkCN (mkN "kirkko") ;
    Castle = mkCN (mkN "linna") ;
    Picture = mkCN (mkN "kuva") ;
    Eye = mkCN (mkN "silmä") ;
    Village = mkCN (mkN "kylä") ;
    Tower = mkCN (mkN "torni") ;
    Farmer = mkCN (mkN "maanviljelijä") ;
    Road = mkCN (mkN "tie") ;
    Guest = mkCN (mkN "vieras") ;
    Day = mkCN (mkN "päivä") ;
    House = mkCN (mkN "talo") ;
    Table = mkCN (mkN "pöytä") ;
    Soldier = mkCN (mkN "sotilas") ;

    Open = mkAP (mkA "avoin") ;
    Silent = mkAP (mkA "hiljainen") ;
    Strong = mkAP (mkA "vahva") ;
    Good = mkAP (mkA "hyvä") ;
    Narrow = mkAP (mkA "kapea") ;
    Near = mkAP (mkA "lähellä") ;
    New = mkAP (mkA "uusi") ;
    Quiet = mkAP (mkA "hiljainen") ;
    Far = mkAP (mkA "kaukana") ;
    Deep = mkAP (mkA "syvä") ;
    Late = mkAP (mkA "myöhäinen") ;
    Dark = mkAP (mkA "pimeä") ;
    Free = mkAP (mkA "vapaa") ;
    Large = mkAP (mkA "suuri") ;
    Old = mkAP (mkA "vanha") ;
    Angry = mkAP (mkA "vihainen") ;

    And = and_Conj ;
    Or = or_Conj ;
    Therefore = mkConj "joten" ;

} ;
