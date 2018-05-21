concrete CastleEng of Castle = open CatEng, SyntaxEng, ParadigmsEng in {
  lincat
    Line = Text ;
    ElemSent = Cl ;
    Subject = NP ;
    Thing = CN ;
    -- Determiner = Det ;
    Quality = AP ;
    Connector = Conj ;

  lin

    Connect conn c1 c2 = mkText (mkS conn (mkS c1) (mkS c2)) ;
    TFConnect c1 c2 = mkText (mkText c1) (mkText (mkS (mkAdv "therefore") (mkS c2))) ;
    Juxtapose c1 c2 = mkText (mkText c1) (mkText c2) ;
    Pred subj qual = mkCl subj qual ;
    -- Determine det thing = mkNP det thing ;
    Generalize thing = mkNP every_Det thing ;
    Particularize thing = mkNP a_Det thing ;
    NegGeneralize thing = mkNP not_Predet (mkNP every_Det thing) ;
    NegParticularize thing = mkNP no_Quant thing ;

    Count = mkCN (mkN "count") ;
    Stranger = mkCN (mkN "stranger") ;
    Look = mkCN (mkN "look") ;
    Church = mkCN (mkN "church") ;
    Castle = mkCN (mkN "castle") ;
    Picture = mkCN (mkN "picture") ;
    Eye = mkCN (mkN "eye") ;
    Village = mkCN (mkN "village") ;
    Tower = mkCN (mkN "tower") ;
    Farmer = mkCN (mkN "farmer") ;
    Road = mkCN (mkN "road") ;
    Guest = mkCN (mkN "guest") ;
    Day = mkCN (mkN "day") ;
    House = mkCN (mkN "house") ;
    Table = mkCN (mkN "table") ;
    Soldier = mkCN (mkN "soldier") ;

    Open = mkAP (mkA "open") ;
    Silent = mkAP (mkA "silent") ;
    Strong = mkAP (mkA "strong") ;
    Good = mkAP (mkA "good") ;
    Narrow = mkAP (mkA "narrow") ;
    Near = mkAP (mkA "near") ;
    New = mkAP (mkA "new") ;
    Quiet = mkAP (mkA "quiet") ;
    Far = mkAP (mkA "far") ;
    Deep = mkAP (mkA "deep") ;
    Late = mkAP (mkA "late") ;
    Dark = mkAP (mkA "dark") ;
    Free = mkAP (mkA "free") ;
    Large = mkAP (mkA "large") ;
    Old = mkAP (mkA "old") ;
    Angry = mkAP (mkA "angry") ;

    And = and_Conj ;
    Or = or_Conj ;

    -- Generalizer = every_Det ;
    -- Particularizer = a_Det ;
    -- NegGeneralizer =
    -- NegParticularizer =

} ;
