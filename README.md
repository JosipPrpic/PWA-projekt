# PWA-projekt
Repozitorij za pohranu svih resursa za izradu projekta iz kolegija Programiranje Web aplikacija

-----------------------------------------------------------------------------------------------
**1. Import baze podataka**

Priložena je glavna (i jedina) tablica "vijesti.sql". Za ispravan rad projekta potrebno je
u phpmyadmin sučelju kreirati bazu podataka sa imenom "pwa_projekt" te unutar novokreirane baze
importati tablicu vijesti.sql

**_Tablica se nalazi unutar direktorija "baza_podataka" u rootu repozitorija!_**

-----------------------------------------------------------------------------------------------
**2. Općenite informacije o projektu**

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
**3. Korisnički podatci za admin prijavu**

```
username: admin
password: adminpass
```
-----------------------------------------------------------------------------------------------
**4. Mogući bug-ovi i rješenja**

**_4.1 Vijesti se ne prikazuju na početnoj/vijesti/sport stranici:_**

Najčešći bug koji mi se događao tijekom izrade projekta je da odjednom sve vijesti nestanu sa
početne, vijesti i sport stranica. To se dogodi ako konekcija sa bazom "pukne". Najjednostavnije
rješenje je brisanje tablice vijesti.sql te ponovni import iste, ukoliko standarno "ugasi-upali"
ne pomogne. Ako se problem i dalje nastavi tada bi trebalo izbrisati cijelu bazu te je ponovno
kreirati i importati tablicu.

**_4.2 Administratorska prijava ne radi, iako je dobar username i password:_**

Provjerite ima li u root direktoriju projekta direktorij koji se zove _users_, te ima li unutar
njega file "_admin.xml_". Ako direktorij i/ili file ne postoji, kreirajte navedeni direktorij 
_users_ u rootu i unutar njega novi XML file "_admin.xml_". U admin.xml zaljepite sljedeći kod:

```
<?xml version="1.0"?>
<user><password>25e4ee4e9229397b6b17776bfceaf8e7</password><email>admin@corp.com</email></user>
```

**_4.3 Novounesene vijesti kroz administratorski panel se ne pojavljuju u bazi, a nema errora:_**

Ovdje je ponovno moguće da konekcija prema bazi ne radi. Provjerite da li je upaljen MySQL modul
u korisničkom panelu XAMPP-a. Ponekad mi se znalo dogoditi da se MySQL modul ničim izazvan ugasi.
Ako se problem i dalje nastavi događati, probajte isto rješenje kao u stavci 4.1.


