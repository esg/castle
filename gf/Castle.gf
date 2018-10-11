abstract Castle = {
  flags
    startcat = Line ;
  -- A Castle text consists of a sequence of lines.
  -- Each line consists of two "elementary sentences", either separately
  -- or joined togegher with a conjunction.

  cat
    Line ;
    ElemSent ;
    Subject ;
    Thing ;
    Quality ;
    Connector ;

  fun
    Connect : Connector -> ElemSent -> ElemSent -> Line ;
    Juxtapose : ElemSent -> ElemSent -> Line ;

    Pred : Subject -> Quality -> ElemSent ;

    And, Or, Therefore : Connector ;

    Particularize : Thing -> Subject ;
    Generalize : Thing -> Subject ;
    NegParticularize : Thing -> Subject ;
    NegGeneralize : Thing -> Subject ;


    Count : Thing ;
    Stranger : Thing ;
    Look : Thing ;
    Church : Thing ;
    Castle : Thing ;
    Picture : Thing ;
    Eye : Thing ;
    Village : Thing ;
    Tower : Thing ;
    Farmer : Thing ;
    Road : Thing ;
    Guest : Thing ;
    Day : Thing ;
    House : Thing ;
    Table : Thing ;
    Soldier : Thing ;

    Open : Quality ;
    Silent : Quality ;
    Strong : Quality ;
    Good : Quality ;
    Narrow : Quality ;
    Near : Quality ;
    New : Quality ;
    Quiet : Quality ;
    Far : Quality ;
    Deep : Quality ;
    Late : Quality ;
    Dark : Quality ;
    Free : Quality ;
    Large : Quality ;
    Old : Quality ;
    Angry : Quality ;

} ;
