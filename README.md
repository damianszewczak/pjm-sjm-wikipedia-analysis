# Porównanie haseł Wikipedii: PJM vs SJM

Projekt zaliczeniowy polegający na ilościowej analizie treści haseł polskojęzycznej Wikipedii dotyczących **Polskiego Języka Migowego (PJM)** oraz **Systemu Językowo-Migowego (SJM)**.

---

## 🎯 Cel projektu

Celem projektu jest porównanie zakresu opisu dwóch systemów komunikacji używanych w Polsce poprzez:

- analizę objętości tekstu (liczba słów),
- analizę różnorodności słownictwa (liczba słów unikalnych),
- identyfikację najczęściej występujących pojęć.

Analiza ma charakter ilościowy i eksploracyjny.

---

## 🗂 Dane

Źródłem danych są dwa artykuły polskojęzycznej Wikipedii:

- *Polski język migowy*
- *System językowo-migowy*

Do analizy wykorzystano wyłącznie treść akapitów (`<p>`).  
Nie uwzględniano przypisów, tabel ani elementów graficznych.

---

## ⚙️ Metodologia

Projekt wykonano w języku **R** z wykorzystaniem techniki web scrapingu.

Etapy analizy:

1. automatyczne pobranie treści artykułów,
2. podstawowe czyszczenie tekstu (małe litery, usunięcie znaków specjalnych),
3. podział tekstu na słowa i filtracja bardzo krótkich form,
4. obliczenie liczby wszystkich słów oraz liczby słów unikalnych,
5. wizualizacja wyników na wykresach słupkowych,
6. identyfikacja najczęściej występujących słów.

---

## 📈 Wyniki

Artykuł dotyczący PJM zawiera **865 słów**, z czego **596 to słowa unikalne**.  
Artykuł dotyczący SJM zawiera **558 słów**, w tym **404 słowa unikalne**.

Hasło poświęcone PJM jest zarówno bardziej obszerne, jak i bardziej zróżnicowane pod względem użytego słownictwa.

Najczęściej występujące słowa:
- PJM: *język, migowy, głuchych*
- SJM: *system, językowo, znaki*

---

## 🛠 Wykorzystane narzędzia

- język **R**
- pakiety: `rvest`, `dplyr`, `stringr`, `ggplot2`

---

## 🤖 Wykorzystanie narzędzi AI

W trakcie realizacji projektu wykorzystano **ChatGPT i Gemini** do konsultacji kodu oraz wsparcia w redakcji opisu projektu.


