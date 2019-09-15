# Funktionsuntersuchung

## • Aufgabe lesen, genau welche Schritte sind erforderlich?

## • Symmetrie

Normalerweise werden nur folgende Arten untersucht:

1. **achsensymmetrisch zur y-Achse**: $f(-x) = f(x)$

    Bei ganzrationalen Funktionen hat die Variable hat nur gerade Exponenten, z.B. $f(x) = -2x^4 + x^2 - 3$.

2. **punktsymmetrisch zum Ursprung**: $f(-x) = -f(x)$

    Bei ganzrationalen Funktionen hat die Variable hat nur ungerade Exponenten, z.B. $f(x) = x^3 -4 x$.

3. **weder achsensymmetrisch zur y-Achse noch punktsymmetrisch zum Ursprung**

    Beispiele: $f(x) = -x^3 + 2x + 1$, $f(x) = x^4 - x^2 + x$.

Es gibt natürlich andere Symmetriearten, die gelegentlich relevant sind, z.B. eine Funktion 3. Grades ist immer punktsymmetrisch zum Wendepunkt.

## • Nullstellen, $f(x) = 0$

Der Ansatz hängt von der Form des Funktionsterms ab:

 - Durch Betrachtung der Faktoren, z.B.:
    - $f(x) = 2x(x-1)^2$ → $x_1=0$; $x_2=x_3=1$

    - $f(x) = -3(x-2)(x+1)(3x+4)$ → $x_1=2$; $x_2=-1$; $x_3=-\frac43$

 - Durch Ausklammern, z.B.:
    - $f(x) = -0{,}5x^3 + 2x^2 + x = x(-0{,}5x^2 + 2x + 1)$

    - $f(x) = 3x^4 - 6x^2 = 3x^2(x^2 - 6)$

 - Mit der pq-Formel: $x^2+px+q=0$ → $x_{1;2} = -\frac{p}{2} \pm \sqrt{\left(\frac{p}{2}\right)^2 - q}$
    -   $f(x) = 2x^2 - 3x - 1$ → $x^2 - \frac32 x - \frac12 = 0$

        $x_{1;2} = \frac34\pm \sqrt{\left(\frac34\right)^2 + \frac12}$ 

 - Durch Umstellung (nach $x$ auflösen), z.B.:
    - $f(x) = 3x + 1$

    - $f(x) = 2x^2 – 1$


## • Extremstellen, Extrempunkte

Eine Funktion *n*. Grades hat **maximal** *n-1* Extrempunkte.

1. Notwendige Bedingung, $f'(x)=0$ (Tangentensteigung = 0):

    a. $f'(x)$ bestimmen.

    b. $f'(x) = 0$ lösen (siehe Nullstellen, hier werden die Nullstellen der Ableitung/Steigung bestimmt).

    c. mögliche Extremstellen angeben (Ergebnisse aus b.).

2. Hinreichende Bedingung, Vorzeichenwechsel der Steigung [$f'(x)$]. Für jede mögliche Extremstelle:

    a. Steigung [$f'(x)$] links und rechts von jeder möglichen Extremstelle bestimmen.

    b. Angeben ob Hochpunkt (+ → –), Tiefpunkt (– → +) oder Sattelpunkt (+ → + oder – → –). Ein Sattelpunkt ist ein Wendepunkt, nicht ein Extrempunkt!

    Manchmal ist die alternative hinreichende Bedingung $f''(x) \ne 0$ praktischer, aber im Falle $f''(x) = 0$ ist das Ergebnis nur für den Nachweis eines Sattelpunktes bei Funktionen 3. Grades gültig.

3. $y$-Koordinate bestimmen – wenn die Extrempunkte zu bestimmen sind (bei „Extremstelle“ wird nur die $x$-Koordinate erwartet). Für jede Extremstelle:

    a. $y = f(x)$.

    b. Punkt angeben, z.B. $H(2 \mid 3{,}45)$.

## • Wendestellen, Wendepunkte

Eine Funktion *n*. Grades hat **maximal** *n-2* Wendepunkte. Das bedeutet, nur bei Funktionen 3. (oder höheren) Grades kann es einen Wendepunkt geben. Bei Funktionen 3. Grades gibt es (immer) genau einen Wendepunkt.

1. Notwendige Bedingung, $f ''(x) = 0$ (Krümmung = 0):

    a. $f''(x)$ bestimmen.

    b. $f''(x) = 0$ lösen (siehe Nullstellen, hier werden die Nullstellen der 2. Ableitung bestimmt).

    c. Mögliche Wendestellen angeben (Ergebnisse aus b.).
    
2. Hinreichende Bedingung, Vorzeichenwechsel der Krümmung [f''(x)]
           
	$f''(x)$ für Stellen links und rechts von jeder möglichen Wendestelle bestimmen:

	- (+ → –) oder (– → +) $\Rightarrow$ Wendestelle

	- (+ → +) oder (– → –) $\Rightarrow$ keine Wendestelle

    Manchmal ist die alternative hinreichende Bedingung $f'''(x) \ne 0$ praktischer, aber im Falle $f'''(x) = 0$ ist das Ergebnis nicht schlüssig.

3. $y$-Koordinate bestimmen – wenn die Wendepunkte zu bestimmen sind (bei „Wendestelle“ wird nur die $x$-Koordinate erwartet). Für jede Wendestelle:

    a. $y = f(x)$.

    b. Punkt angeben, z.B. $W(4 \mid -1{,}112)$.

## • Graphen zeichnen (Bleistift!)

1. Wertetabelle im geeigneten Intervall anfertigen.

2. Extrempunkte und Nullstellen (z.B. mit GTR) bestimmen.

3. Achsen zeichnen und beschriften (Zahlen, Einheiten)

4. Punkte eintragen:

    a. die Punkte aus der Wertetabelle,

    b. die Null- und Extremstellen,

    c. ggf. weitere Punkte errechnen, um eine glatte Kurve zeichnen zu können.

5. Punkte verbinden – glatt/rund

6. Verlauf kontrollieren (wenn es nicht glatt/rund verläuft, versuche den Fehler zu finden und beheben).

7. Kurve beschriften – Funktionsname, ggf. Funktionsterm.

### Was ist an einer Skizze anders?

 - Hier ist die zeichnerische Genauigkeit nicht so wichtig, es geht mehr um eine Darstellung der Haupteigenschaften der Kurve. 

 - Eine Wertetabelle ist nicht nötig, die Nullstellen und Extrempunkte liefern in der Regel eine ausreichende Grundlage für die Skizze.

 -  Auch die Achsen müssen normalerweise nicht besonders genau sein. Eine aussagekräftige Beschriftung wird allerdings auch bei einer Skizze erwartet.

## • Tangente (an einer gegebenen Stelle, x ist also bekannt)

1. Steigung mit der 1. Ableitung bestimmen, $m = f'(x)$.

2. Steigungswinkel mit $\tan (α) = m$ [→ $α = \tan^{-1} (m)$] bestimmen.

3. Geradengleichung: $y = m · x + b$

    a. Steigung mit der 1. Ableitung bestimmen, $m = f'(x)$.

    b. $y$-Koordinate mit der Ausgangsfunktion bestimmen, $y = f(x)$.

    c. Die Werte für $x$, $y$ und $m$ in die Geradengleichung einsetzen, um $b$ zu bestimmen.

    d. Tangentengleichung angeben, z.B. $y = -0{,}5x + 2$

## • Verhalten im Unendlichen

 - ganzrationalen Funktionen.

    Betrachten des Glieds mit der höchsten Potenz ergibt z.B. bei der Funktion $f(x) = -2x^3 + 3x^2$:

    Für $x \rightarrow \infty$ folgt $f(x) \rightarrow -\infty$
und für $x \rightarrow -\infty$ folgt $f(x) \rightarrow +\infty$.

 - e-Funktionen.

    Zu berücksichtigen hier sind die Eigenschaften der Funktion $f(x) = e^x$, insbesondere:

    - Für $x \rightarrow \infty$ folgt $f(x) \rightarrow \infty$.

    - Für $x \rightarrow -\infty$ folgt $f(x) \rightarrow 0$.

    - Die Wirkung einer Exponentialfunktion ist in dieser Hinsicht stärker als jede Potenzfunktion.

 - Bei anderen Funktionsarten muss man die besonderen Eigenschaften der Bestandteile berücksichtigen.

- - -
*letzte Änderung*: 13.09.2019