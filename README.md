# Porównanie haseł Wikipedii: PJM i SJM

Repozytorium zawiera projekt zaliczeniowy poświęcony ilościowej analizie treści dwóch haseł polskojęzycznej Wikipedii: Polskiego Języka Migowego (PJM) oraz Systemu Językowo-Migowego (SJM). Projekt został wykonany w języku R i wykorzystuje techniki web scrapingu oraz podstawowej analizy tekstu.

---

## 🎯 Cel projektu

Celem projektu jest porównanie zakresu opisu PJM i SJM w Wikipedii z wykorzystaniem prostych miar ilościowych. Analiza ma odpowiedzieć na pytanie, czy i w jakim stopniu artykuły różnią się pod względem objętości oraz zróżnicowania użytego słownictwa.

---

## 🗂 Dane

Dane do analizy pochodzą z dwóch artykułów polskojęzycznej Wikipedii:
- „Polski język migowy”
- „System językowo-migowy”

W analizie wykorzystano wyłącznie treść zawartą w akapitach artykułów (`<p>`). Nie uwzględniano przypisów, tabel ani elementów graficznych.

---

## ⚙️ Metodologia

Projekt został zrealizowany w języku **R**. Dane pozyskano automatycznie z wykorzystaniem biblioteki `rvest`.

Etapy analizy obejmowały:
- pobranie treści artykułów,
- podstawowe czyszczenie tekstu (zamiana na małe litery, usunięcie znaków specjalnych),
- podział tekstu na słowa oraz usunięcie bardzo krótkich form,
- obliczenie liczby wszystkich słów,
- obliczenie liczby słów unikalnych (różnorodność słownictwa),
- identyfikację najczęściej występujących słów,
- wizualizację wyników na wykresach słupkowych.

---

## 📈 Wyniki

Analiza wykazała, że artykuł dotyczący PJM zawiera:
- 865 słów,
- 596 słów unikalnych.

Artykuł dotyczący SJM zawiera:
- 558 słów,
- 404 słowa unikalne.

Oznacza to, że hasło poświęcone PJM jest zarówno bardziej obszerne, jak i bardziej zróżnicowane pod względem użytego słownictwa.

Najczęściej występujące słowa:
- PJM: *język, migowy, głuchych*
- SJM: *system, językowo, znaki*

---

## 🛠 Wykorzystane narzędzia

- język **R**
- pakiety: `rvest`, `dplyr`, `stringr`, `ggplot2`

---

## 🤖 Wykorzystanie narzędzi AI

W trakcie realizacji projektu wykorzystano narzędzie **ChatGPT i Gemini** w celu konsultacji kodu oraz wsparcia w redakcji opisu projektu.


