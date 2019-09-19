# Exponentielles Wachstum, exponentieller Zerfall

1. Gegeben sind die Punkte $P(1 \mid 2)$ und $Q(2 \mid 7)$.

    Geben Sie unter Angabe der Rechenschritte eine Exponentialfunktion der Form $y = a · b^x$ an, deren Graph durch beide Punkte verläuft.

    Geben Sie diese Funktion auch in der Form $y = a · e^{kx}$ an.

2. Zwei Wachstumsprozesse A und B werden durch die folgenden Funktionsgleichungen beschrieben:

	 - A: $y = 3 · 4^{2x}$

     - B: $y = a · b^x$, mit  $a > 0$ und $b > 1$

    $x$ sei dabei die Zeit in Minuten und $y$ der Bestand zum Zeitpunkt $x$.

    a) Schreiben Sie die Gleichung A in der Form $y = p · q^x$. Geben Sie die Bedeutung der beiden Parameter $p$ und $q$ für den Wachstumsprozess an.

    b) Bestimmen Sie den Zeitpunkt, zu dem der Bestand im Prozess A den Wert 768 hat.

    c) Berechnen Sie (ohne Rechner) die Zeit, in der sich der Anfangsbestand von Prozess A verdoppelt hat.

    d) Bei Prozess B soll das prozentuale Wachstum pro Minute $3\,\%$ betragen. Nach 2 Minuten ist der Bestand dann $y = 10$.  
    Bestimmen Sie die Werte der Parameter $a$ und $b$.  
    Schreiben Sie die Gleichung auch in der Form $y = a · e^{kx}$.

3. Um die Funktion einer Bauchspeicheldrüse zu untersuchen, wird ein bestimmter Farbstoff injiziert und gemessen, wie er ausgeschieden wird. Man weiß, dass eine gesunde Bauchspeicheldrüse pro Minute etwa $4\,\%$ der jeweils vorhandenen Farbstoffmenge ausscheidet.

    a) Einem Patienten werden $0{,}3\,g$ des Farbstoffs gespritzt. Nach 20 Minuten sind $0{,}1\,g$ ausgeschieden.  
    Entscheiden Sie begründet, ob die Bauchspeicheldrüse normal arbeitet.

    b) Gehen Sie jetzt davon aus, dass die untersuchte Bauchspeicheldrüse $2{,}0\,\%$ des vorhandenen Farbstoffs pro Minute ausscheidet.  
    Erstellen Sie eine geeignete Funktion, die das Ausscheiden modelliert. Geben Sie diese Funktion (auch) in der Form $f(x) = a · e^{-k · x}$ an.  
    Berechnen Sie anhand des Modells, wie viel Farbstoff diese Bauchspeicheldrüse in den ersten 10 Minuten ausscheidet.


<!--\newpage-->

## Lösungen

1. Punkte einsetzen $\quad\rightarrow\quad$ Gleichungssystem:

    I: $\quad 2 = a · b^1 \quad\rightarrow\quad a = 2 · b^{-1}$

    II: $\quad 7 = a · b^2$

    I in II einsetzen: $7 = 2 · b^{-1} · b^2 = 2 b$

    $\quad\rightarrow b = \frac72$

    $b$ in I einsetzen: $a = \frac47$

    $y = \frac47 · 3{,}5^x$

    $\quad\rightarrow y = \frac47 · e^{\ln(3{,}5) · x}
 \approx \frac47 · e^{1,253 x}$


2.  a) $y = 3 · 16^x$. $p$ (= 3) ist der Anfangsbestand, $q$ (= 16) ist der Wachstumsfaktor pro Zeiteinheit (Minute).

    b) Zeit $x = 2$.

    c) 1 min: 16-fach $\rightarrow$ 0,5 min: 4-fach  $\rightarrow$ 0,25 min (= 15 s): 2-fach

    d) $y = a · 1{,}03^x$ $\rightarrow$ $10 = a · 1,03^2$

    $\quad\rightarrow y \approx 9{,}426 · 1{,}03^x = 9{,}426 · e^{\ln 1{,}03 · x}$

    $\quad\rightarrow y \approx 9,426 · e^{0,02956 x}$


3.  a) Nach 20 Minuten gibt es noch 0,3 – 0,1 = 0,2 g.

	Exponentieller Zerfall: $(1 - p)^{20} = \frac{0{,}2}{0{,}3}$

    $\quad\rightarrow p = 0{,}020069 \dots$, also ca. $2{,}01\,\%$, eine Unterfunktion der Bauchspeicheldrüse.

    Das Ergebnis ist die **durchschnittliche** Änderungsrate (die relative Änderung, die *in jeder Minute* stattfindet). Diese weicht hier nur geringfügig von der **momentanen** Änderungsrate ab:

	Mit $f(x) = a · e^{-k · x}$ gilt $f'(x) = -k · f(x)$.

	$f(0) = 0{,}3\quad\rightarrow a =0{,}3$

    $f(20) = 0{,}2\quad\rightarrow k = 0{,}020273 \dots$, also ca. $2{,}03\,\%$.

    b) $f(x) = 0{,}3 · (1 - 0{,}02)^x = 0{,}3 · 0{,}98^x$

    $\quad\left[\rightarrow f(x) = 0{,}3 · e^{\ln (0{,}98) · x}
 \approx 0{,}3 · e^{-0{,}02020 x}\right]$

    $\quad f(10) \approx 0{,}2451$

	Ausgeschieden wurden also in den ersten 10 Minuten $0{,}3 – 0{,}2451 = 0{,}0549\,g$.


- - -
*letzte Änderung*: 19.09.2019
