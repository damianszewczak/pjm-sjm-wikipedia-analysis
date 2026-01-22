Porównanie haseł Wikipedii dotyczących PJM i SJM
Cel projektu:
Celem projektu jest ilościowe porównanie treści dwóch haseł polskojęzycznej Wikipedii poświęconych Polskiemu Językowi Migowemu (PJM) oraz Systemowi Językowo-Migowemu (SJM). Analiza ma na celu sprawdzenie różnic w objętości tekstu oraz w stopniu zróżnicowania użytego słownictwa.

Dane
Dane zostały pozyskane z dwóch artykułów Wikipedii:
„Polski język migowy”,
„System językowo-migowy”.

Do analizy wykorzystano wyłącznie tekst zawarty w akapitach artykułów (<p>). Pominięto przypisy, tabele oraz elementy graficzne.

Metodologia

Projekt wykonano w języku R z użyciem techniki web scrapingu. Treść artykułów została pobrana automatycznie, a następnie przetworzona w celu uzyskania prostych miar ilościowych.

W analizie:

pobrano tekst akapitów z każdego artykułu,

dokonano podstawowego czyszczenia tekstu (zamiana na małe litery, usunięcie znaków specjalnych),

podzielono tekst na słowa i usunięto bardzo krótkie formy,

obliczono liczbę wszystkich słów oraz liczbę słów unikalnych,

zidentyfikowano najczęściej występujące słowa w każdym artykule,

przedstawiono wyniki w formie tabeli oraz wykresów słupkowych.

Wyniki

Analiza wykazała, że artykuł dotyczący PJM zawiera 865 słów, z czego 596 to słowa unikalne. Artykuł poświęcony SJM jest krótszy i obejmuje 558 słów, w tym 404 słowa unikalne.

Oznacza to, że hasło dotyczące PJM jest nie tylko bardziej obszerne, ale również charakteryzuje się większą różnorodnością słownictwa. Różnica ta widoczna jest zarówno w całkowitej liczbie słów, jak i w liczbie użytych terminów.

Analiza najczęściej występujących słów pokazuje, że w obu artykułach dominują pojęcia bezpośrednio związane z językiem migowym. W artykule o PJM często pojawiają się m.in. słowa „język”, „migowy”, „głuchych”, natomiast w artykule o SJM częściej występują terminy takie jak „system”, „językowo”, „znaków”. Wyniki te odzwierciedlają różnice terminologiczne pomiędzy opisywanymi zagadnieniami.

Ograniczenia

Analiza ma charakter uproszczony i ogranicza się do:

jednego źródła danych (Wikipedia),

prostych miar ilościowych (liczba słów, liczba słów unikalnych),

analizy częstości słów bez interpretacji ich znaczenia w kontekście.

Projekt ma charakter eksploracyjny i może stanowić punkt wyjścia do dalszych badań.

Wykorzystane narzędzia

język R

pakiety: rvest, dplyr, stringr, ggplot2

Wykorzystanie narzędzi opartych na AI

W trakcie realizacji projektu wykorzystano narzędzie ChatGPT do konsultacji kodu oraz wsparcia w redakcji opisu projektu.
