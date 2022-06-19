# PWA-projekt
Repozitorij za pohranu svih resursa za izradu projekta iz kolegija Programiranje Web aplikacija

-----------------------------------------------------------------------------------------------
**Import baze podataka**

Priložena je glavna (i jedina) tablica "vijesti.sql". Za ispravan rad projekta potrebno je
u phpmyadmin sučelju kreirati bazu podataka sa imenom "pwa_projekt" te unutar novokreirane baze
importati tablicu vijesti.sql

-----------------------------------------------------------------------------------------------
**Općenite informacije o projektu**

Projekt se sastoji od rekreiranog news portala Frankfurter Allgemeine, prema slikama preuzetim
sa LMS-a kolegija.

Struktura portala je sljedeća:

- index.php stranica sa pregledom i vijesti i sporta
- vijesti.php stranica sa sa svim vijestima osim sporta (politika itd..)
- sport.php stranica sa samo vijestima iz sporta
- admin.php stranica kroz koju se dodaje novi članak u bazu podataka; do nje se dolazi samo ako 
  se uspješno prođe administratorska prijava
- login.php stranica za login administratora (osobe koja objavljuje članke)

-----------------------------------------------------------------------------------------------
**Korisnički podatci za admin prijavu**

- username: admin
- password: adminpass

