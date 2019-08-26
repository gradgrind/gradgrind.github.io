# Lineares und Exponentielles Wachstum

## Lineares Wachstum
Bei linearem Wachstum bleibt die *absolute* Änderungsrate (Änderung pro Zeiteinheit) konstant, unabhängig vom Bestand, $f(n)=f(n-1)+k$.

 - Wasser fließt mit konstanter Zuflussrate in einen zylindrischen Behälter. In jeder Minute erhöht sich der Wasserspiegel um 5cm. Die Änderungsrate bleibt gleichmäßig – 5cm/min – egal wie viel Wasser schon im Behälter ist (bis der Behälter voll ist).

 - Ein Kredit wird mit 100€ im Monat zurückbezahlt. Jeden Monat werden die Schulden um 100€ reduziert. Die Änderungsrate ist unabhängig von den verbleibenden Schulden.

Diese zwei Fälle sind Beispiele für lineares Wachstum bzw. linearen Zerfall.
 
Für die Wasserhöhe gilt:

\begin{align}
h(1) &= h(0)+5 \nonumber\\
h(2) &= h(1)+5 \nonumber\\
 & ...  \nonumber\\
h(10) &= h(9)+5 \quad usw.\nonumber
\end{align}

Zum Beispiel:

| Zeit, min | Wasserhöhe, cm |
| ----------- | -------------------- |
| 0     | [$h(0)$ =] 20 |
| 1     | 20 + 5 = 25 |
| 2     | 25 + 5 = 30 |
| ... | |
| 7     | 55 |
| 8     | 55 + 5 = 60 |
| ... | |

Bei den Schulden verläuft es ähnlich:

\begin{align}
s(1) &= s(0)-100 \nonumber\\
s(2) &= s(1)-100 \quad usw.\nonumber
\end{align}

Der Graph eines solchen Prozesses ist eine Gerade, der Bestand bei linearem Wachstum kann also durch eine lineare Funktion angegeben werden:

$$B(t)=m·t + a$$

Dabei ist $a$ der Anfangswert (zum Zeitpunkt $t=0$) und $m$ die konstante Änderungsrate (Steigung des Graphen).

## Exponentielles Wachstum

Bei exponentiellem Wachstum bleibt die *relative* Änderungsrate konstant. Das heißt, in einer Zeiteinheit wächst der Bestand um einen bestimmten konstanten Faktor, $f(n)=f(n-1)·k$.

 In diesem Fall ist die *absolute* Änderungsrate proportional zum Bestand – je mehr schon da ist, desto schneller ist das Wachstum.
 
  - Ein Kapital von 10 000€ wird zehn Jahre lang mit gleich bleibendem Zinssatz (3%) angelegt.
  
  - Ein radioaktives Isotop hat eine Halbwertszeit von 40 Jahren.
 
Diese zwei Fälle sind Beispiele für exponentielles Wachstum bzw. exponentiellen Zerfall.

 Für die Zinsen gilt (3% relative Wachstumsrate $\:⇒\: Wachstumsfaktor = 1,03$):

\begin{align}
K(1) &= K(0) · 1{,}03 \nonumber\\
K(2) &= K(1) · 1{,}03 = K(0) · 1{,}03^2 \nonumber\\
 & ...  \nonumber\\
K(10) &= K(9) · 1{,}03 = K(0) · 1{,}03^{10} \nonumber
\end{align}

So ist das Kapital durch die Funktion $K(t) = 10\,000 · 1{,}03^t$, $t$ in Jahren, gegeben.

Für das Zerfallsbeispiel passt eine Zeiteinheit von 40 Jahren. Eine Wertetabelle könnte so aussehen:

| Zeit, Jahre | Masse, g |
| ----------- | -------------------- |
| 0     | [$m(0)$ =] 120 |
| 40    | 120 : 2 = 60 |
| 80    | 60 : 2 = 30 |
| ... | |

Aufgrund der Halbierung der Masse ist es naheliegend 0,5 als Basis zu nehmen. Aber damit der Verlauf von 40 Jahren (die Halbwertszeit) zu einer Erhöhung des Exponenten um 1 führt, müssen wir die Zeit durch 40 teilen. Dann bekommen wir die Funktion $m(t) = 120 · 0{,}5^\frac{t}{40}$.

Anhand der Potenzgesetze kann man die Basis ändern, z.B:

 - $m(t) = 120 · 2^{-\frac{t}{40}}$

 - $m(t) = 120 · (0,5^\frac{1}{40})^t \approx 120 · 0{,}9828^t$

Im Allgemeinen kann exponentielles Wachstum durch eine Exponentialfunktion angegeben werden:

$$B(t)=a · b^t$$

Dabei ist $a$ der Anfangswert (zum Zeitpunkt $t=0$) und $b$ der Wachstumsfaktor für eine Zeiteinheit.

Aus praktischen Gründen (z.B. wegen der Ableitung) werden Exponentialfunktionen oft in der Form $a · e^{k · t}$ (Wachstum) oder $a · e^{-k · t}$ (Zerfall), mit $k > 0$, angegeben.

## Wachstumsart untersuchen

Anhand einer Messreihe kann man untersuchen, ob lineares oder exponentielles Wachstum vorhanden ist. Es kann natürlich in Wirklichkeit eine völlig andere Entwicklung vorliegen, aber die Gesetzmäßigkeiten dieser zwei Wachstumsarten sind besonders einfach.

### Beispiel 1

Messdaten:

| Zeit, $t$ | Bestand, $B(t)$ |
| --------- | --------------- |
| 0     | 20,0 |
| 3     | 62,9 |
| 7     | 120,3 |
| 12    | 191,7 |

Bei linearem Wachstum ist die Änderungsrate (Bestandsänderung pro Zeiteinheit, also die Steigung des Graphen) überall gleich.

Um zu überprüfen, ob die Entwicklung des Bestandes linear ist, können wir die *durchschnittlichen Steigungen* in den angegebenen *Intervallen* – anhand der Differenzquotienten – berechnen:

| Intervall | durchschnittliche Steigung |
| --------- | --------------- |
| [0;3]     | $\frac{62{,}9-20{,}0}{3-0}=14{,}3$ |
| [3;7]     | $\frac{120{,}3-62{,}9}{7-3}=14{,}35$ |
| [7;12]    | $\frac{191{,}7-120{,}3}{12-7}=14{,}28$ |

Da die (durchschnittliche) Änderungsrate in allen Intervallen fast gleich ist, können wir annehmen, dass das Wachstum linear ist. Das Wachstum könnte dann näherungsweise durch die Funktion $B(t)=14,3 · t + 20$ beschrieben werden.

Wir können auch den erwarteten Bestand für einen anderen Zeitpunkt bestimmen, z.B. mit $t=30$ (vorausgesetzt das Wachstum setzt sich auf diese Weise fort):

$$B(30)=14,3 · 30 + 20=449,0$$

### Beispiel 2

Messdaten:

| Zeit, $t$ | Bestand, $B(t)$ |
| --------- | --------------- |
| 0     | 8,0 |
| 4     | 22,8 |
| 7     | 50,0 |
| 10    | 110,8 |

Auch hier können wir die durchschnittliche Änderungsrate in den angegebenen Intervallen überprüfen:

| Intervall | durchschnittliche Steigung |
| --------- | --------------- |
| [0;4]     | $\frac{22{,}8-8{,}0}{4-0}=3{,}7$ |
| [4;7]     | $\frac{50{,}0-22{,}8}{7-4}=9{,}1$ |
| [7;10]     | $\frac{110{,}8-50{,}0}{10-7}=20{,}3$ |

Hier nimmt die Steigung im Lauf der Zeit deutlich zu, es liegt also kein lineares Wachstum vor.

Um zu überprüfen, ob exponentielles Wachstum vorliegt, können wir den Wachstumsfaktor b anhand der Wachstumsformel  berechnen:

$$B(n)=B(m) · b^{n-m}$$

oder

$$B(n) = B(m) · e^{k · (n-m)}$$

Nach k umstellen:

$$k=\frac{1}{n-m} · \ln{\frac{B(n)}{B(m)}}$$

In den gegebenen intervallen:

| Intervall | Wachstumsfaktor |
| --------- | --------------- |
| [0;4]     | $\frac{1}{4} · \ln{\frac{22,8}{8}}=0{,}2618$ |
| [4;7]     | $\frac{1}{3} · \ln{\frac{50{,}0}{22{,}8}}=0{,}2618$ |
| [7;10]    | $\frac{1}{3} · \ln{\frac{110{,}8}{50{,}0}}=0{,}2652$ |	

Da der Wachstumsfaktor in allen Fällen fast gleich ist, können wir annehmen, dass das Wachstum exponentiell ist. Auch hier können wir anhand der Wachstumsformel den Bestand zum Zeitpunkt $t=30$ bestimmen. Da das Modell nur Annäherungswerte liefert, können wir allerdings auch die Parameter nur näherungsweise bestimmen:

$$B(30) = 8,0 · e^{0,262 · 30} \approx 21\,000 $$



