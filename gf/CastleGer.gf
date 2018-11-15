concrete CastleGer of Castle = open CatGer, SyntaxGer, ParadigmsGer, MakeStructuralGer in {
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

    Count = mkCN (mkN "Graf" "Grafen" masculine) ;
    Stranger = mkCN (mkA "Fremd") (mkN [] [] [] [] [] [] masculine) ;
    Look = mkCN (mkN "Blick" "Blicke" masculine) ;
    Church = mkCN (mkN "Kirche" "Kirchen" feminine) ;
    Castle = mkCN (mkN "Schloss" "Schlösser" masculine) ;
    Picture = mkCN (mkN "Bild" "Bilder" neuter) ;
    Eye = mkCN (mkN "Auge" "Augen" neuter) ;
    Village = mkCN (mkN "Dorf" "Dörfer" neuter) ;
    Tower = mkCN (mkN "Turm" "Türme" masculine) ;
    Farmer = mkCN (mkN "Bauer" "Bauern" masculine) ;
    Road = mkCN (mkN "Weg" "Wege" masculine) ;
    Guest = mkCN (mkN "Gast" "Gäste" masculine) ;
    Day = mkCN (mkN "Tag" "Tage" masculine) ;
    House = mkCN (mkN "Haus" "Häuser" neuter) ;
    Table = mkCN (mkN "Tisch" "Tische" masculine) ;
    Soldier = mkCN (mkN "Knecht" "Knechte" masculine) ;

    Open = mkAP (mk3A "offen" "offener" "offenste") ;
    Silent = mkAP (mkA "still") ;
    Strong = mkAP (mkA "stark") ;
    Good = mkAP (mkA "gut") ;
    Narrow = mkAP (mkA "schmal") ;
    Near = mkAP (mkA "nah") ;
    New = mkAP (mkA "neu") ;
    Quiet = mkAP (mkA "leise") ;
    Far = mkAP (mkA "fern") ;
    Deep = mkAP (mkA "tief") ;
    Late = mkAP (mkA "spät") ;
    Dark = mkAP (mkA "dunkel") ;
    Free = mkAP (mkA "frei") ;
    Large = mkAP (mkA "groß") ;
    Old = mkAP (mkA "alt") ;
    Angry = mkAP (mkA "wütend") ;

    And = and_Conj ;
    Or = or_Conj ;
    Therefore = mkConj [] "so gilt" singular ;
} ;
