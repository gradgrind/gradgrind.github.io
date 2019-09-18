# Radioaktiver Zerfall

1. In der Medizin wird radioaktives Jod-123 zur Untersuchung der Schilddrüse eingesetzt. Kurze Zeit nach der Verabreichung dieser Substanz an den Patienten wird die von der Substanz ausgehende Strahlung gemessen, wodurch Rückschlüsse auf den Zustand der Schilddrüse möglich sind. Durch radioaktiven Zerfall verringert sich die Substanzmasse.

    Die im Körper des Patienten noch vorhandene Masse $m$ des verabreichten Jod-123 lässt sich durch den Term  mit $m(t) = m_0 · e^{-kt}$ mit $k > 0$ beschreiben. Dabei gibt $m_0$ die zum Zeitpunkt $t = 0$ verabreichte Jodmasse an; $t$ ist die seit Verabreichung vergangene Zeit in Stunden.

    a. Nach einer Zeit von 13,2 Stunden ist nur noch die Hälfte der verabreichten Jodmasse vorhanden. Bestimmen Sie hieraus den Wert des Parameters $k$.
    
	[ Zur Kontrolle: $k \approx 0{,}0525$ ]

    b. Wie viel Prozent der verabreichten Jodmasse sind vier Stunden nach Verabreichung im Körper des Patienten noch vorhanden? Wie lange dauert es, bis 90 % der verabreichten Jodmasse zerfallen sind?

2. Ein radioaktiver Stoff S entsteht erst als Zerfallsprodukt einer anderen Substanz. Für die Masse $m$ von S gilt $m(t) = 100 e^{at} (1 - e^{-2t})$ (in mg, $t$ in Stunden).

    a. Welche Menge ist von dem Stoff S am Beobachtungsbeginn ($t = 0$) vorhanden?

    b. Bestimmen Sie $a$, wenn zwei Stunden nach Beobachtungsbeginn 59,54 mg von S vorhanden sind.

    c. Zu welchem Zeitpunkt wird die größte Masse der Substanz S gemessen:

      - (i) mit $a=-0{,}25$;

      - (ii) mit $a$ als Parameter?

<!--\newpage-->

## Lösungen

1.  a. $e^{-13{,}2 k} = \frac12$

    $-13{,}2 k = \ln \frac12 \rightarrow k = 0{,}052511 \dots$

    b. $e^{-0{,}0525 · 4} = -0{,}81058 \dots$

    Nach vier Stunden sind noch ca. 81,1 % vorhanden.

    $e^{-0{,}0525 · t} = 0{,}1 \rightarrow t = 43,858 \dots$
    Es dauert ca. 43,9 Stunden bis 90 % zerfallen sind.

2.  a. $m(0) = 0$ mg

    b. $t = 2$: $\quad100 e^{2a} (1 - e^{-4}) = 59{,}54$

    $\quad \rightarrow \quad a = \frac12 \ln \frac{0{,}5954}{1-e^{-4}} = -0{,}25001 \dots$

    c.

      - (i) Mit GTR: Hochpunkt: $H(1{,}0986 \dots \mid 67{,}540 \dots)$

        Die größte Masse (ca. 67,5 mg) wird nach ca. 1,10 Stunden gemessen.

      - (ii) $m(t) = 100 (e^{at} - e^{(a-2)t})$

        $m'(t) = 100 e^{at} (a - a e^{-2t} + 2 e^{-2t})$

        Notwendige Bedingung, $m'(t) = 0$:

        $a + e^{-2t} (2 - a) = 0$

        $\rightarrow t = -\frac12 · \ln \frac{a}{a-2} = \frac12 · \ln \frac{a-2}{a}$

- - -
*letzte Änderung*: 18.09.2019
