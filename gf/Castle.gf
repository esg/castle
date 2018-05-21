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
    -- Determiner ;
    Quality ;
    Connector ;

  fun
    -- Determine : Determiner -> Thing -> Subject ;
    Pred : Subject -> Quality -> ElemSent ;
    Connect : Connector -> ElemSent -> ElemSent -> Line ;
    TFConnect : ElemSent -> ElemSent -> Line ;
    Juxtapose : ElemSent -> ElemSent -> Line ;

    Particularize, Generalize, NegParticularize, NegGeneralize : Thing -> Subject ;

    Count, Stranger, Look, Church, Castle, Picture, Eye, Village, Tower, Farmer, Road, Guest, Day, House, Table, Soldier : Thing ;

    Open, Silent, Strong, Good, Narrow, Near, New, Quiet, Far, Deep, Late, Dark, Free, Large, Old, Angry : Quality ;

    -- Particularizer, Generalizer, NegParticularizer, NegGeneralizer : Determiner ;
    And, Or, Therefore : Connector ;
} ;
