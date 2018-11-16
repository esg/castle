# Castle

In 1959 [Theo Lutz][lutz] wrote an algorithm for generating stochastic poetry,
using a small vocabulary taken from Kafka's _the Castle_. The algorithm was
implemented on a [Z22][z22] computer at the computer centre at the University
of Stuttgart. Lutz has described the algorithm and its implementation in
the article [Stochastische Texte][st_de] ([english translation][st_en]).
This is a reimplementation of Lutz' program in Grammatical Framework.

## Installation and usage

The simplest way to use this implementation is to import the grammar into
the GF shell.

    > i CastleGer.gf
    linking ... OK
    Languages: CastleGer
    396 msec
    Castle> gr -probs=Castle.probs
    Castle> gr -probs=Castle.probs  | l
    ein Bild ist neu oder ein Gast ist alt .

One can also build the executable, using cabal

    $ cabal configure
    $ cabal build
	$ cabal install

The program can then be run, taking a language as an argument.

    $ castle Ger
    EIN AUGE IST ALT SO GILT KEIN BLICK IST STARK.
    EIN BAUER IST NAH UND NICHT JEDER GRAF IST STARK.
    JEDER KNECHT IST GUT ODER NICHT JEDES HAUS IST FREI.
    ...

The program generates a new line every two seconds, which for an
authentic experience is all in upper case.



## Other implementations

This is not the first modern-day reimplementation of Lutz' text generator.
[Johannes Auer][auer] has written a [PHP implementation][auer_imp], where the
users can choose their own vocabulary. [Nick Montfort][montfort] has also
written an [implementation][montfort_imp] of an English translation of the
program.


[lutz]: https://de.wikipedia.org/wiki/Theo_Lutz
[z22]: https://de.wikipedia.org/wiki/Z22
[st_de]: https://www.netzliteratur.net/lutz_schule.htm
[st_en]: http://www.stuttgarter-schule.de/lutz_schule_en.htm
[auer]: https://auer.netzliteratur.net/
[auer_imp]: https://auer.netzliteratur.net/0_lutz/lutz_original.html
[montfort]: http://nickm.com/
[montfort_imp]: http://nickm.com/memslam/stochastic_texts.html
