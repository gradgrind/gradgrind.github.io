# Ableitungsregeln

Für viele Funktionen gibt es Ableitungsregeln (die findet man auch in einer Formelsammlung), die wesentliche Frage ist jedoch, welche brauche ich für einen bestimmten Funktionsterm und in welcher Reihenfolge müsste ich sie anwenden. Hier werden die wichtigsten Regeln vorgestellt und Beispiele für deren Anwendung angegeben.


## Die Grundregeln
Diese sind die Regeln die schon von der Einführung in die Analysis bekannt sind.

### Potenzregel

$$f(x) = x^r \quad \to\quad f'(x) = r·x^{r-1}\,;\: r \in \mathbb{R}, r \neq 0$$

Beispiel: $f(x) = x^5 \quad \to\quad f'(x) = 5x^4$

Es gibt auch einige besondere Funktionen, für die wir die Ableitungsfunktion kennen sollen, vor allem:

| $f(x)$   | $f'(x)$    |
| -------- | ---------- |
| $e^x$    | $e^x$      |
| $\ln x$  | $\frac 1x$ |
| $\sin x$ | $\cos x$   |
| $\cos x$ | $-\sin x$  |

Über die Potenz- und Wurzelgesetze können auch weitere Funktionen abgeleitet werden, z.B.:

 - $f(x) = \frac{1}{x^2} = x^{-2} \quad \to\quad f'(x) = -2x^{-3} = \frac{-2}{x^3}$

 - $f(x) = \sqrt{x} = x^{\frac 12} \quad \to\quad f'(x) = {\frac 12}x^{-\frac 12} = \frac{1}{2\sqrt {x}}$

Die zwei folgenden Regeln erlauben einfache Erweiterungen.

### Faktorregel

$$f(x) = r · u(x) \quad \to\quad f'(x) = r·u'(x)\,;\: r \in \mathbb{R}$$

Beispiel: $f(x) = 3x^4 \quad \to\quad f'(x) = 3·4x^3 = 12x^3$

### Summenregel

$$f(x) = u(x)+v(x) \quad \to\quad f'(x) = u'(x)+v'(x)$$

Beispiel: $f(x) = x^3 - 2x \quad \to\quad f'(x) = 3x^2 - 2$


## Komplexere Regeln

Diese Regeln erlauben das Ableiten komplexerer Funktionszusammensetzungen, insbesondere (aber nicht nur) bei Exponentialfunktionen.

### Kettenregel

$$f(x) = v(u(x)) \quad \to\quad f'(x) = v'(u(x)) · u'(x)$$

Diese Regel wird unten ausführlicher besprochen.

### Produktregel

Wenn $f(x)$ das Produkt zweier anderer Funktionen von $x$ ist:

$$f(x) = u(x) · v(x) \quad \to\quad f'(x) = u'(x)·v(x) + u(x)·v'(x)$$

Beispiel: $f(x)=2·x^3·e^{4x}$

\begin{align}
u(x)&=2x^3 \quad \to\quad u'(x) = 6x^2 \nonumber\\
v(x)&=e^{4x}\quad \to\quad v'(x) = 4e^{4x} \nonumber\\
f'(x)&=6x^2 · e^{4x} + 2x^3 · 4e^{4x} \nonumber\\
&=(6x^2 + 8x^3)e^{4x} \nonumber\\
&=2x^2(3 + 4x)e^{4x} \nonumber
\end{align}

### Quotientenregel

[*für das Abitur in Niedersachsen nicht erforderlich*]

$$f(x) = \frac{u(x)}{v(x)} \quad \to\quad f'(x) = \frac{u'(x)·v(x) - u(x)·v'(x)}{(v(x))^2}$$

## Die Kettenregel, ein Erläuterungsversuch

Diese Regel wird in den Formelsammlungen auf einer Art (siehe oben) dargestellt, die meines Erachtens nicht unbedingt auf Anhieb verständlich ist. Beschreibungen sprechen von äußeren und inneren
Funktionen, deren Zusammensetzung nicht immer offensichtlich ist.

Im Grunde genommen wird die Kettenregel angewendet, wenn die abzuleitende Funktion eine *Verkettung* zweier Funktionen, die wir jede für sich ableiten können, z.B. zuerst $u(x)=-0{,}1x^2$ und dann $v(x)=e^x$. Das bedeutet, wir setzen unseren $x$-Wert in die erste (die *innere*) Funktion und das Ergebnis dann in die zweite (die *äußere*). Die zusammengesetzte Funktion wäre dann

$$f(x) = e^{-0{,}1x^2}$$

Die Ableitung von $f$ bilden wir dann anhand der Ableitungen von $u$ und $v$ und der Kettenregel. Da der Eingabewert für die Funktion $v$ nicht $x$ sondern das Ergebnis von $u(x)$ ist, verwende ich für die Funktion $v$ die Variable $u$:

\begin{align}
u(x)&=-0{,}1x^2 \quad \to\quad u'(x)=-0{,}2x \nonumber\\
v(u)&=e^u \quad \to\quad v'(u)=e^u \nonumber\\
f'(x)&=v'(u) · u'(x) \nonumber\\
&=e^u · (-0{,}2x) \nonumber\\
&=e^{-0{,}1x^2} · (-0{,}2x) \nonumber\\
&=-0{,}2x · e^{-0{,}1x^2} \nonumber
\end{align}

Aufgrund der einfachen Ableitung der Funktion $e^x$ lässt sich eine Regel für die Ableitung verketterter Funktionen aufstellen, wenn $e^x$ die äußere Funktion ist:

$$f(x) = e^{u(x)} \quad \to\quad f'(x) = u'(x) ·e^{u(x)}$$

Der Exponent (die innere Funktion) bleibt bei der Ableitung unverändert, aber die Ableitung des Exponenten wird mit der Ausgangsfunktion multipliziert.

**Weitere Beispiele**, auch mit anderen äußeren Funktionen:

**$f(x) = (2x-3)^5$**

 - Äußere Funktion $v(u) = u^5$
 - Innere Funktion $u(x) = 2x-3$
 - $f'(x) = 5u^4 · 2 \qquad = 10(2x-3)^4$

**$f(x) = 3e^{1-x^2}$**

 - Äußere Funktion $v(u) = 3e^u$
 - Innere Funktion $u(x) = 1-x^2$
 - $f'(x) = 3e^u · (-2x) \qquad = -6x · e^{1-x^2}$

**$f(x) = \cos (2x-3)$**

 - Äußere Funktion $v(u) = \cos (u)$
 - Innere Funktion $u(x) = 2x-3$
 - $f'(x) = -\sin (u) · 2 \qquad = -2\sin (2x-3)$
