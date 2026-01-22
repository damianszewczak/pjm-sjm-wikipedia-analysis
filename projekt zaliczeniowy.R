# --- ŁADOWANIE BIBLIOTEK ---
library(rvest)
library(dplyr)
library(stringr)
library(ggplot2)

# --- ETAP 1: DANE WEJŚCIOWE ---

dane_startowe <- data.frame(
  temat = c("PJM (Naturalny)", "SJM (Sztuczny)"),
  link = c(
    "https://pl.wikipedia.org/wiki/Polski_j%C4%99zyk_migowy",
    "https://pl.wikipedia.org/wiki/System_j%C4%99zykowo-migowy"
  ),
  stringsAsFactors = FALSE
)

# --- ETAP 2: FUNKCJA ANALIZUJĄCA HASŁO ---

analizuj_wikipedie <- function(url) {
  
  wynik <- tryCatch({
    
    # Pobranie strony
    strona <- read_html(url)
    
    # Pobranie tekstu z akapitów
    tekst <- strona %>%
      html_nodes("p") %>%
      html_text() %>%
      tolower() %>%
      str_replace_all("[^a-ząćęłńóśżź ]", " ")
    
    # Podział na słowa
    slowa <- unlist(str_split(tekst, "\\s+"))
    slowa <- slowa[slowa != ""]
    
    # Usunięcie bardzo krótkich słów
    slowa <- slowa[nchar(slowa) > 3]
    
    # Miary ilościowe
    liczba_slow <- length(slowa)
    liczba_roznych <- length(unique(slowa))
    
    # Najczęściej występujące słowa
    top_slowa <- sort(table(slowa), decreasing = TRUE)
    top_10 <- head(top_slowa, 10)
    
    return(list(
      liczba_slow = liczba_slow,
      liczba_roznych = liczba_roznych,
      top_10 = top_10
    ))
    
  }, error = function(e) {
    return(NULL)
  })
  
  return(wynik)
}

# --- ETAP 3: URUCHOMIENIE ANALIZY ---

wyniki <- lapply(dane_startowe$link, analizuj_wikipedie)

# --- ETAP 4: TABELA WYNIKÓW ---

dane_wyniki <- data.frame(
  Temat = dane_startowe$temat,
  Liczba_Slow = sapply(wyniki, function(x) x$liczba_slow),
  Rozne_Slowa = sapply(wyniki, function(x) x$liczba_roznych)
)

print(dane_wyniki)

# --- ETAP 5: WYKRES – LICZBA SŁÓW ---

ggplot(dane_wyniki, aes(x = Temat, y = Liczba_Slow, fill = Temat)) +
  geom_col(width = 0.6) +
  geom_text(aes(label = Liczba_Slow), vjust = -0.4, size = 5) +
  labs(
    title = "Porównanie objętości haseł Wikipedii",
    subtitle = "PJM i SJM – liczba słów w artykułach",
    x = "Temat",
    y = "Liczba słów"
  ) +
  theme_minimal() +
  theme(legend.position = "none")

# --- ETAP 6: WYKRES – RÓŻNORODNOŚĆ SŁOWNICTWA ---

ggplot(dane_wyniki, aes(x = Temat, y = Rozne_Slowa, fill = Temat)) +
  geom_col(width = 0.6) +
  geom_text(aes(label = Rozne_Slowa), vjust = -0.4, size = 5) +
  labs(
    title = "Różnorodność słownictwa",
    subtitle = "Liczba różnych słów w artykułach Wikipedii",
    x = "Temat",
    y = "Liczba różnych słów"
  ) +
  theme_minimal() +
  theme(legend.position = "none")

# --- ETAP 7: NAJCZĘSTSZE SŁOWA (DO INTERPRETACJI OPISOWEJ) ---

cat("\nNajczęstsze słowa – PJM:\n")
print(wyniki[[1]]$top_10)

cat("\nNajczęstsze słowa – SJM:\n")
print(wyniki[[2]]$top_10)
