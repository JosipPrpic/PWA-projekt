-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2022 at 02:23 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pwa_projekt`
--

-- --------------------------------------------------------

--
-- Table structure for table `vijesti`
--

CREATE TABLE `vijesti` (
  `id` int(11) NOT NULL,
  `tag` varchar(32) NOT NULL,
  `naslov` text NOT NULL,
  `short_text` text NOT NULL,
  `text` text NOT NULL,
  `slika_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vijesti`
--

INSERT INTO `vijesti` (`id`, `tag`, `naslov`, `short_text`, `text`, `slika_link`) VALUES
(1, 'vijest', 'Japan u ocean spustio ogromnu turbinu, pokušava koristiti \"neograničenu\" energiju', 'DUBOKO ispod površine mora nalazi se izvor energije koji nije nalik bilo kojem drugom. Kako bi ga iskoristili, japanski su znanstvenici konstruirali ogromnu turbinu koja može izdržati najjače oceanske struje kako bi protok pretvorila u gotovo neograničenu opskrbu električnom energijom.', 'DUBOKO ispod površine mora nalazi se izvor energije koji nije nalik bilo kojem drugom. Kako bi ga iskoristili, japanski su znanstvenici konstruirali ogromnu turbinu koja može izdržati najjače oceanske struje kako bi protok pretvorila u gotovo neograničenu opskrbu električnom energijom.\n\nKompanija Ishikawajima-Harima Heavy Industries, poznata i kao IHI Corporation, proučava ovu tehnologiju već više od jednog desetljeća, a 2017. se udružila s Organizacijom za razvoj nove vrste energije i industrijske tehnologije (NEDO).\n\nStručnjaci su u veljači završili testiranje prototipa koje je trajalo više od tri godine. Prototip težak 330 tona nazvan je Kairyu, što bi se moglo prevesti kao – oceanska struja.\n\nKairyu se sastoji od 20 metara dugog trupa, okruženog parom cilindara slične veličine, od kojih svaki sadrži sustav za proizvodnju energije na kojima se nalaze propeleri dugi 11 metara. Kad se usidri na dnu oceana, turbina može potražiti najučinkovitiji položaj za stvaranje energije od tlaka oceanskih struja.\n', 'https://ip.index.hr/remote/indexnew.s3.index.hr/f3fa287d-8e68-4d31-a9f3-1048eb6b9af7.jpg?width=438&height=229&mode=crop&anchor=topcenter&scale=both'),
(2, 'vijest', 'Za kupanje u Zagrebu otvorene sve plaže na Jarunu i Bundeku', 'KUPALIŠNA sezona na jezerima Bundek i Jarun te na vanjskim bazenima Sportskog parka \"Mladost\" službeno je krenula 1. lipnja, a u subotu, 11. lipnja građanima svoja vrata otvara i vanjski bazen SRC-a \"Šalata\".', 'KUPALIŠNA sezona na jezerima Bundek i Jarun te na vanjskim bazenima Sportskog parka \"Mladost\" službeno je krenula 1. lipnja, a u subotu, 11. lipnja građanima svoja vrata otvara i vanjski bazen SRC-a \"Šalata\".\r\n\r\nSlužbeno radno vrijeme kupališta na Bundeku i Jarunu je od 10 do 20 sati jer u tom periodu na plažama gradskih kupališta dežuraju licencirani spasioci te je u istom periodu dostupna prva pomoć i dežurni liječnik.\r\n\r\nRadno vrijeme vanjskih bazena za građanstvo u sklopu Sportskog parka \"Mladost\" je radnim danom od 12 do 18 sati, a vikendom i blagdanom od 10 do 19 sati.\r\n\r\nNa Šalati je bazen za građanstvo otvoren radnim danom od 13:30 do 18 sati te vikendom i blagdanom od 11 do 19 sati.\r\n', 'https://ip.index.hr/remote/indexnew.s3.index.hr/e7143dcd-6dcc-4090-af2a-a94ab74b3de7.jpg?width=259&height=154&mode=crop&anchor=topcenter&scale=both'),
(3, 'vijest', 'HGK poziva hrvatske tvrtke da se uključe u rješavanje problema nedostatka čipova', 'HRVATSKE tvrtke do 8. srpnja mogu se javiti na poziv Ministarstva gospodarstva i održivog razvoja za iskaz interesa za projekte mikroelektronike, što je prilika da se uključe u rješavanje problema nedostatka čipova i smanjenja ovisnosti o uvozu iz Azije, poručili su danas iz HGK.\n', 'HRVATSKE tvrtke do 8. srpnja mogu se javiti na poziv Ministarstva gospodarstva i održivog razvoja za iskaz interesa za projekte mikroelektronike, što je prilika da se uključe u rješavanje problema nedostatka čipova i smanjenja ovisnosti o uvozu iz Azije, poručili su danas iz HGK.\r\n\r\nHrvatska gospodarska komora (HGK) i njezina Grupacija za mikroelektroniku i poluvodiče inicirali su, kako ističu iz HGK, uključivanje hrvatskih tvrtki u europski program IPCE (Važni projekti od zajedničkog europskog interesa), što je i ostvareno u koordinaciji sa Stalnim predstavništvom RH pri EU i Ministarstvom gospodarstva i održivog razvoja.\r\n\r\nHGK: Danas rijetko koji uređaj ne uključuje čipove\r\nPo ocjeni HGK, time i hrvatske tvrtke daju svoj doprinos u problemu nedostatka čipova i smanjenju ovisnosti o uvozu iz Azije, tj. ostvarenju Industrijske strategije EU.\r\n\r\nZa poziv za iskaz interesa za projekte mikroelektronike, otvoren do 8. srpnja, kažu da obuhvaća dizajn, razvoj i proizvodnju procesa, čipova, poluvodičkih podloga i srodnih tehnologija.\r\n\r\nPodsjećaju i da danas rijetko koji uređaj ne uključuje čipove, pa se primjerice u prosječnom automobilu nalazi 50 do 150 čipova, a kako je njihova proizvodnja zaustavljena zatvaranjem pogona zbog pandemije, počelo ih je nedostajati.\r\n\r\nIstodobno se, također zbog pandemije, u svijetu povećala potražnja za svim vrstama elektroničkih uređaja te su se zbog toga, ali i nakon ponovnog otvaranja pogona, mnoge industrije suočile s nestašicom čipova.\r\n\r\n\"Radi se o značajnim sredstvima\"\r\nMoguća rješenja za to su razvoj mikroelektronike nove generacije, ali i povratak i jačanje proizvodnje u Europi, tzv. re-shoring, navode iz HGK.', 'https://ip.index.hr/remote/indexnew.s3.index.hr/05d974af-1968-4497-8fd1-11ce10e8aa9a.jpg?width=438&height=229&mode=crop&anchor=topcenter&scale=both'),
(4, 'vijest', 'Svim navijačima Hajduka odbijene žalbe, ostaju u istražnom zatvoru', 'ŽUPANIJSKI sud u Velikoj Gorici odbio je žalbe svih 38 navijača Hajduka te oni ostaju iza rešetaka.\r\nSud je odluku o odbijanju žalbi objavio na internetu.', 'ŽUPANIJSKI sud u Velikoj Gorici odbio je žalbe svih 38 navijača Hajduka te oni ostaju iza rešetaka.\r\nSud je odluku o odbijanju žalbi objavio na internetu.\r\n\r\n\"U kaznenom postupku zbog kaznenog djela izazivanja nereda iz članka 324. stavka 2. KZ/11, odbijene su žalbe svih osumnjičenika. Stoga 38 osumnjičenika ostaju u istražnom zatvoru na temelju rješenja sudaca istrage ovoga suda. 4 osumnjičenika puštena su iz istražnog zatvora na prijedlog državnog odvjetnika\", piše sud.\r\n\r\nPodsjetimo, nakon nereda na autocesti prije točno 20 dana uhićene su 42 osobe. Prije nekoliko dana četiri navijača su puštena zbog nedostatka dokaza.', 'https://ip.index.hr/remote/indexnew.s3.index.hr/4969860f-4a7a-4169-9e04-fbafaf18d53e.jpg?width=438&height=229&mode=crop&anchor=topcenter&scale=both'),
(5, 'vijest', 'Ovo su promjene u prometu ZET-a zbog Pridea i katoličkog koncerta', 'POVORKA ponosa Zagreb Pride 2022 kreće nešto iza 16 sati, a trasa je užim centrom grada do Ribnjaka, gdje se oko 18 sati nastavlja druženje. Navečer se pak deseci tisuća ljudi očekuju na stadionu Maksimir, gdje se održava katolički koncert \"Progledaj srcem\".\r\n', 'POVORKA ponosa Zagreb Pride 2022 kreće nešto iza 16 sati, a trasa je užim centrom grada do Ribnjaka, gdje se oko 18 sati nastavlja druženje. Navečer se pak deseci tisuća ljudi očekuju na stadionu Maksimir, gdje se održava katolički koncert \"Progledaj srcem\". Sve to utjecat će na ZET-ov promet pa su iz Holdinga najavili izmjene u planu prometa u užem centru grada te oko Maksimira. \r\n\r\nU nastavku pročitajte što se sve mijenja u ZET-ovom prijevozu.\r\n\r\nIzmijenjeni plan prometovanja ZET-a\r\nZbog povorke ponosa, od 16.10 do 18 sati tramvaji će obilaziti uži centar. Tramvajski promet bit će obustavljen Savskom cestom (sjeverno od Vodnikove), Frankopanskom, Ilicom (od Ulice Republike Austrije do Trga bana Josipa Jelačića), Jurišićevom, Zrinjevcem, Ulicom Franje Račkog, Draškovićevom (od Ulice kneza Mislava do Vlaške), Vlaškom, Ribnjakom i Ksaverskom cestom te će tramvajske linije 4, 6, 11, 12, 13, 14 i 17 prometovati izmijenjenim trasama u oba smjera:\r\n\r\nLinije 6, 13 i 17 prometovat će preko Vodnikove i Glavnog kolodvora do svojih krajnjih odredišta.\r\n\r\nLinije 4 i 11 prometovat će izmijenjenom trasom: Vodnikova – Glavni kolodvor – Draškovićeva – Kneza Mislava – Trg žrtava fašizma – Šubićeva – Kvaternikov trg –  i dalje redovnom trasom do Dubrave, odnosno Dupca.\r\n\r\nLinija 12 će od Ljubljanice voziti Ulicom grada Vukovara, zatim Držićevom i Šubićevom do Dubrave\r\n\r\nLinija 14 umjesto do Mihaljevca, vozit će do Borongaja trasom: Zapruđe - Savska - Vodnikova – Glavni kolodvor - Draškovićeva – Ulica kneza Mislava – Trg žrtava fašizma – Zvonimirova - Borongaj.\r\n\r\nNa dijelu trase kojom će biti onemogućeno prometovanje tramvajske linije 14 voziti autobusi linija 102 i 233 na relaciji Mihaljevac - Kaptol.\r\n\r\nAutobusi linije 118 će od 15.30 do 16.40, zbog prolaska sudionika Povorke, prometovati skraćeno na relaciji Magazinska/B. Adžije - Voltino. Polasci sa stajališta Magazinska/B. Adžije ostvarivat će se pet minuta kasnije u odnosu na vremena koja su u voznom redu navedena kao polasci s Trga Mažuranića, dok vremena polazaka autobusa iz Voltinog ostaju nepromijenjena.\r\n\r\nNavečer, nakon završetka koncerta na Maksimiru očekuje se obustava tramvajskog prometa od Kvaternikovog trga do Dubrave te Zvonimirovom ulicom, od Trga žrtava fašizma do Borongaja. Autobusne linije 203 (Svetice - Vinec – Kaptol), 226 (Kaptol - Remete - Svetice) i 227 (Svetice - G.Bukovac - Gračansko Dolje) prometovat će skraćeno do rotora Bukovačka/Petrova, odnosno do stajališta Prilesje. Polasci sa stajališta Prilesje ostvarivat će se pet minuta kasnije u odnosu na vremena koja su u voznom redu navedena kao polasci sa Svetica.', 'https://ip.index.hr/remote/indexnew.s3.index.hr/fb9c56a1-2911-4bca-a1cc-d96f1d830243.jpg?width=438&height=229&mode=crop&anchor=topcenter&scale=both'),
(6, 'sport', 'OD 20:45 DANSKA - HRVATSKA', 'HRVATSKA reprezentacija od 20:45 na gostovanju kod Danske igra treće kolo prve skupine Lige nacija. U prva dva susreta osvojila je jedan bod (poraz od Austrije i remi s Francuskom), dok je Danska na maksimalnom učinku.', 'HRVATSKA reprezentacija od 20:45 na gostovanju kod Danske igra treće kolo prve skupine Lige nacija. U prva dva susreta osvojila je jedan bod (poraz od Austrije i remi s Francuskom), dok je Danska na maksimalnom učinku. Uzela je tri boda i u Francuskoj i u Austriji.\r\nMogući sastav Hrvatske\r\nLivaković - Vrsaljko, Erlić, Šutalo, Juranović - Brozović, Jakić - Ivanušec, Pašalić, Oršić - Kramarić\r\n\r\nTo je sastav u kojem će na stadion Parken istrčati hrvatska reprezentacija, tvrde Sportske novosti. Prvi put će za Hrvatsku od Eura tako nastupiti Šime Vrsaljko, dok će na lijevom boku zaigrati Josip Juranović. I dok se za Bornu Sosu znalo da nije spreman za nastup, čini se da je otpao i Borna Barišić. Martin Erlić zadovoljio je na debiju protiv Francuske, a stoperski tandem trebao bi činiti s novim debitantom, Dinamovim Josipom Šutalom.\r\n\r\nMateo Kovačić, Lovro Majer i Josip Brekalo ostat će na klupi nakon što su igrali od prve minute i protiv Austrije i protiv Francuske. Luka Modrić je između Francuske i Danske imao i put u Madrid na potpis ugovora pa će i on ostati na klupi. Prvi put u ovom ciklusu će povjerenje u prvih 11 dobit Kristijan Jakić, Luka Ivanušec i Mislav Oršić.\r\nMogući sastav Danske:\r\nSchmeichel - Andersen, Vestergaard, Nelsson - Kristensen, Hojbjerg, Delaney, Maehle - Eriksen - Cornelius, Braithwaite', 'https://ip.index.hr/remote/indexnew.s3.index.hr/ced25467-aa57-4ce7-921c-9de037512691.gif?width=488&height=268&mode=crop&anchor=topcenter&scale=both'),
(7, 'sport', 'Derbi Dinama i Hajduka na zagrebačkom Maksimiru', 'JOŠ nekoliko sati dijeli nas od derbija Dinama i Hajduka na Maksimiru kojim će se zaključiti ovosezonsko izdanje Prve HNL. U posljednje kolo ulazimo bez rezultatskog uloga jer je ono najvažnije već poznato. Dinamo je s četiri boda prednosti na vrhu već počeo slaviti novu titulu, a Hajduk je osigurao drugo mjesto. ', 'JOŠ nekoliko sati dijeli nas od derbija Dinama i Hajduka na Maksimiru kojim će se zaključiti ovosezonsko izdanje Prve HNL. U posljednje kolo ulazimo bez rezultatskog uloga jer je ono najvažnije već poznato. Dinamo je s četiri boda prednosti na vrhu već počeo slaviti novu titulu, a Hajduk je osigurao drugo mjesto. \r\n\r\nBijele u četvrtak čeka finale Kupa protiv Rijeke i čak je Valdas Dambrauskas, koji uvijek inzistira da se govori \"samo o idućoj utakmici\", priznao kako je fokus kluba na dvoboju u kojem može uzeti trofej. Dok će Hajduk vrlo vjerojatno rotirati, Dinamo očekujemo u najjačem sastavu kako bi momčad Ante Čačića sa stilom zaključila sezonu. \r\n\r\nDinamo pred dvije rasprodane tribine svojih navijača sigurno ne želi dopustiti da mu Hajduk pokvari slavlje tako da je objema ekipama cilj pozitivan rezultat. Hajduk će do njega doduše vjerojatno probati doći sa značajnije izrotiranim sastavom.\r\n\r\nU Zagreb nisu doputovali Nikola Kalinić i Gergo Lovrencsics, pa na njihovim mjestima očekujemo Mikanovića i svježe oporavljenog Mlakara. Najveća anomalija od standardne Hajdukove postave najizglednije će biti Marko Livaja. Najbolji strijelac HNL-a dvoboj bi mogao započeti na klupi kako bi maksimalno spreman dočekao finale Kupa.\r\n', 'https://ip.index.hr/remote/indexnew.s3.index.hr/781326e5-87f4-4c6c-87e3-6cc9fdb22bf9.jpg?width=765&height=421'),
(8, 'sport', 'KYLIAN MBAPPE ostaje u Paris Saint-Germainu.', 'KYLIAN MBAPPE ostaje u Paris Saint-Germainu. Potvrdili su to svi španjolski i francuski mediji, a i najpoznatiji novinar za transfere Fabrizio Romano.', 'KYLIAN MBAPPE ostaje u Paris Saint-Germainu. Potvrdili su to svi španjolski i francuski mediji, a i najpoznatiji novinar za transfere Fabrizio Romano. Mbappe je već nazvao Realovog predsjednika Florentina Pereza i rekao mu svoju odluku, javlja Romano.\r\n\r\nFrancuski novinar Santi Aouna na Twitteru je objavio kako je Real bio spreman Mbappeu ponuditi i broj 10 na dresu, odnosno oduzeti ga Luki Modriću, a dodijeliti ga Francuzu. Mbappe desetku nosi u reprezentaciji, ali ne i u klubu, gdje mu Neymar nije prepustio broj.\r\n\r\nMbappe će u Parizu sudjelovati i u odlukama trenera i sportskog direktora?\r\nParižani su napravili sve da 23-godišnjeg Mbappea zadrže u klubu. Dobit će oko 50 milijuna eura godišnje plaće, ugovor na dvije ili tri godine te oko 100 milijuna eura bonusa za potpis novog ugovora, tvrdi talijanski novinar Gianluca Di Marzio. Španjolski El Chiringuito izvijestio je kako će Mbappe sudjelovati u izboru trenera PSG-a, kao i u odlučivanju o transferima i odlukama sportskog direktora.\r\n\r\nMbappea je PSG doveo prije četiri godine kao 19-godišnjaka iz Monaca za 145 milijuna eura, a ovog ljeta ga je mogao izgubiti besplatno jer mu aktualni ugovor traje do 30. lipnja. Ukupno je za PSG zabio 168 golova uz 87 asistencija. \r\n', 'https://ip.index.hr/remote/indexnew.s3.index.hr/9d3c8fc1-48c4-450c-9f5a-f5ddcf132dac.jpg?width=854&height=443&mode=crop&anchor=topcenter&scale=both'),
(9, 'sport', 'Budućnost Ivana Perišića?', 'IVAN PERIŠIĆ ugovor s Interom ima samo do kraja sljedećeg mjeseca i već u srpnju može otići u drugi klub bez odštete. Pregovori hrvatskog reprezentativca i milanskog kluba oko novog ugovora traju mjesecima. Perišić je nakon finala kupa i javno prozvao upravu, ali dogovora još nema.\r\n', 'IVAN PERIŠIĆ ugovor s Interom ima samo do kraja sljedećeg mjeseca i već u srpnju može otići u drugi klub bez odštete. Pregovori hrvatskog reprezentativca i milanskog kluba oko novog ugovora traju mjesecima. Perišić je nakon finala kupa i javno prozvao upravu, ali dogovora još nema.\r\n\r\nInter 33-godišnjem ofenzivcu nudi dvogodišnji ugovor od četiri i pol milijuna eura po sezoni, a Perišić traži šest milijuna. Toliko mu je, navodno, spreman ponuditi i najveći Interov rival Juventus, a Perišića silno želi i londonski Chelsea.\r\n\r\nESPN javlja da se u borbu za Perišića uključio i Tottenham. Engleski klub prati situaciju i mogao bi ponovo spojiti Antonija Contea i Perišića. Conte, trener Tottenhama, surađivao je u Interu s Perišićem i prošle sezone su milanskom klubu zajedno donijeli prvi naslov prvaka nakon 2010. godine.', 'https://ip.index.hr/remote/indexnew.s3.index.hr/76b12e77-20ee-48c0-9a52-ce1bbacadcbe.jpg?width=765&height=402'),
(10, 'vijest', 'Norveška vraća Francuzima vojne helikoptere, traži povrat 523 milijuna USD i kamate', 'NORVEŠKA će vratiti vojne helikoptere NH90 koje je naručila od francuske tvrtke NH Industries jer su ili nepouzdani ili kasno isporučeni, izjavio je ministar obrane i zapovjednik vojske.', 'NORVEŠKA će vratiti vojne helikoptere NH90 koje je naručila od francuske tvrtke NH Industries jer su ili nepouzdani ili kasno isporučeni, izjavio je ministar obrane i zapovjednik vojske.\r\n\r\nVlada je također rekla da će tražiti povrat sredstava u visini 523 milijuna dolara plus kamate i druge troškove od NH Industries, koji je u vlasništvu Airbus Helicoptersa, talijanskog Leonarda i Fokker Aerostructuresa iz Nizozemske.\r\n\r\n\"Bez obzira na to koliko sati naši tehničari rade i koliko dijelova naručimo, to nikada neće osposobiti NH90 da ispune zahtjeve norveških oružanih snaga\", rekao je ministar obrane Bjoern Arild Gram na konferenciji za novinare.\r\n\r\nUgovor za 14 helikoptera potpisan je 2001. godine, ali Norveška ih je dobila samo osam, priopćilo je ministarstvo.\r\n\r\n\"Imamo helikopter koji ne funkcionira kako bi trebao\", rekao je general Eirik Kristoffersen, zapovjednik norveških oružanih snaga.', 'https://ip.index.hr/remote/indexnew.s3.index.hr/02ca221f-0167-42ad-b61d-2b7a40c6c698.jpg?width=765&height=505'),
(11, 'vijest', 'Veliki požari izbili na Braču i na Hvaru, s buktinjom se bore sve snage s otoka, stiže i kanader', 'Požari su izbili u subotu prije podne na Hvaru i na Braču, a vatru gase lokalne snage kojima u pomoć stižu i kanaderi. Požar na Braču izbio je odmah iznad Pučišća na Braču i iznad Pitava na Hvaru ', 'Veliki požari izbili su u subotu prije podneva iznad Pučišća na Braču i iznad Pitava na Hvaru. \r\nKako nam je rekao županijski vatrogasni zapovjednik Ivan Kovačević, na oba otoka gori borova šuma, a s vatrom se trenutno bore lokalne snage, a u pomoć na obje lokacije uskoro stižu i kanaderi. \r\n\r\nPožar iznad Pučišća izbio je oko 11 sati, a Dalmatinski portal piše da vatru gase sva bračka dobrovoljna vatrogasna društva. \r\n\r\n- Na gašenju požara trenutno je angažirano 57 vatrogasaca sa 17 vatrogasnih vozila, a zatražili smo i pomoć kanadera - rekao je Hini voditelj centra Jakov Zlatar. Po njegovim riječima trenutno nisu ugroženi stambeni objekti.\r\n\r\nZasad nema podataka kolika je opožarena površina jer se vatra i dalje širi.\r\n\r\nČitatelj 24 sata\r\nČitatelj s Hvara kaže i kako puše bura koja otežava gašenje požar koji je izbio iznad mjesta Pitve.\r\n\r\n24sata\r\nFoto: čitatelj 24sata\r\nUskoro će se znati i razmjeri požara i hoće li biti potrebne i dodatne vatrogasne snage s kopna. ', 'https://img.24sata.hr/3CmsLSak_Dr3Pq0LTzeRNvfZFpk=/1920x0/smart/media/images/2022-24/whatsapp-image-2022-06-18-at-12-18-44.jpeg'),
(12, 'vijest', 'VIDEO Oštećena vozila i zgrade na Trešnjevci: Policija istražuje tko je bacio eksploziv u Zagrebu', 'Policija je izvijestila kako je očevid u tijeku kako bi se utvrdilo tko je u Pregradskoj ulici aktivirao eksploziv', 'Snažna eksplozija šokirala je noćas, oko 2.50 sati, stanovnike Pregradske ulice na zagrebačkoj Trešnjevci, a u detonaciji je oštećeno nekoliko automobila i pročelja stambenih zgrada. Zagrebačka policija od ranog jutra obavlja očevid kako bi se utvrdilo kakav je eksploziv aktiviran te kako bi pronašli tragove koji će ih dovesti do počinitelja. U detonaciji je oštećeno nekoliko vozila i pročelja stambenih objekata. No nitko nije ozlijeđen u eksploziji, navodi policija. Očevid je u tijeku.  ', 'https://img.24sata.hr/eC_CxUk--RhaN2M1VvyxGSpVAQw=/1243x700/smart/media/images/2022-24/dizajn-bez-naslova-88.jpg'),
(13, 'vijest', 'Požar u Žrnovnici i dalje gori, do sada je progutao osam hektara', 'Požar je još aktivan, a vatrogasci su i noćas bili na terenu kako bi lokalizirali požar', 'U požaru u bivšoj raketnoj bazi u Žrnovnici, koji je buknuo u četvrtak navečer i još uvijek je aktivan, izgorjelo je osam hektara niskog raslinja i borovine, doznaje se u subotu ujutro iz Javne vatrogasne postrojbe (JVP) Split.\r\n\r\nPožar je buknuo u četvrtak oko 21.20 sati na otvorenom prostoru unutar raketne baze. Na intervenciju je tada izišlo DVD Žrnovnica s četiri vozila i osam vatrogasaca, DVD Split s jednim vozilom i tri vatrogasca i JVP Grada Splita s dva vozila i četiri vatrogasca. Dan poslije, u petak, u ranim jutarnjim satima uz zemaljske snage gašenju su se priključile i zračne snage, kanader i Fire Boss. Opožarena površina makije, raslinja i šume je oko 8 hektara.\r\n\r\nTijekom protekle noći na požaru su ostale snage DVD Žrnovnice, DVD Split i JVP Grada Splita s pet vozila i 15 vatrogasaca, kazali su u JVP Split.', 'https://img.24sata.hr/sdwT8sIYTWWxtX4qGIY9g8Mx5Hk=/1243x700/smart/media/images/2022-24/pxl-170622-94109646_88BKYRz.jpg'),
(14, 'vijest', 'Ičići: Nestrpljivi vozač namjerno pregazio invalida sa psom na pješačkom i teško ga ozlijedio', 'Opatijska policija utvrdila je kaznenu odgovornost 40-godišnjeg vozača. On je na obilježenom pješačkom prijelazu u Ičićima, upravljajući automobilom, namjerno udario 54-godišnjeg pješaka', 'Za svaku osudu je događaj u prometu koji je izdvojila PU primorsko-goranska, u kojem je preksinoć u Ičićima teško ozlijeđen pješak.\r\n\r\nNakon obavljenog kriminalističkog istraživanja strašnog događaja u prometu koji se zbio u srijedu u Ičićima, opatijska policija utvrdila je kaznenu odgovornost 40-godišnjeg vozača. On je na obilježenom pješačkom prijelazu u Ičićima, upravljajući automobilom, namjerno udario 54-godišnjeg pješaka. Riječ je o austrijskom državljaninu, osobi s invaliditetom koja se kreće uz pomoć psa, a koji je u ovom događaju zadobio teške ozljede.\r\n\r\nNaime, istraživanjem je utvrđeno kako je Austrijanac oko 22.10 sati prelazio pješački prijelaz sa psom-asistentom, a 40-godišnji vozač nije imao strpljenja pričekati da prijeđe kolnik već mu je počeo trubiti i približavati mu se vozilom.\r\n\r\nOd straha da ga ne ozlijedi, pješak je prema autu pružio ruku i s njom ga dotaknuo te udario po poklopcu motora kako bi ga zaustavio u prolasku.\r\n\r\nNo, vozača to nije spriječilo u nastavku vožnje, već ga je naprotiv, razljutilo, pa je na Austrijanca namjerno krenuo autom i udario ga. Zbog zadobivenih ozljeda, pješaku je pružena medicinska pomoć u KBC Rijeka gdje su mu dijagnosticirane teške ozljede.\r\n\r\nPo završetku kriminalističkog istraživanja, nesavjesni  vozač je kazneno prijavljen mjerodavnom državnom odvjetništvu pod sumnjom u počinjenje kaznenog djela dovođenje u opasnost života i imovine opće opasnom radnjom ili sredstvom.', 'https://img.24sata.hr/CDWS1j_fq_EC_J7iwI3jh8COTpc=/1243x700/smart/media/images/2022-04/pxl-300121-31636087.jpg'),
(15, 'sport', 'Red Bull i dalje moćan, Ferrari u problemu, a Hamilton frustriran', 'Kao da bolid postaje sve lošiji, a mi sve nezadovoljniji. Ovo je to što imamo za ovu godinu, moramo to istrpjeti te naporno raditi na gradnji boljeg bolida za sljedeću godinu, rekao je Britanac', 'Aktualni svjetski prvak u formuli 1 Nizozemac Max Verstappen (Red Bull) bio je najbrži na prva dva treninga za Veliku nagradu Kanade u Montrealu, dok je njegov najveći konkurent za naslov Monegažanin Charles Leclerc (Ferrari) doživio novi udarac, iako je na drugom treningu imao samo osam stotinki lošije vrijeme.\r\n\r\nNaime, u Ferrariju su bili prisiljeni zamijeniti elektroničku kontrolnu komponentu na Leclercovom bolidu, a kako su to već učinili treći put u sezoni, to za sobom automatski povlači kaznu za nedjeljnu utrku na kojoj će drugoplasirani u ukupnom redoslijedu vozača morati krenuti 10 mjesta niže od pozicije koju izbori u subotnjim kvalifikacijama. Time će mu biti umanjeni izgledi za pobjedu kojom bi barem malo smanjio zaostatak za Verstappenom, koji je sada 34 boda, a nakon prve tri utrke u sezoni Leclerc je imao čak 46 bodova prednosti pred aktualnim svjetskim prvakom.\r\n\r\nNo, što zbog toga što je Verstappen pobijedio u četiri od posljednjih pet utrka, a što zbog problema s motorom koji su Leclerca koštali odustajanja na dvije utrke kad je bio u vodećem položaju, situacija se potpuno promijenila. Verstappen je i na treninzima održanim u petak na stazi Gilles Villeneuve pokazao Red Bullovu nadmoć nad konkurentima. Na prvom treningu je od drugoplasiranog Španjolca Carlosa Sainza Jr. (Ferrari) bio brži za 25 stotinki, dok je Leclerca nadmašio za pola sekunde. Monegažanin mu se na drugom treningu približio na samo osam stotinki, ali Sainz Jr. je i dalje ostao više od 20 stotinki iza najbržeg Verstappenovog kruga. Iznenađujuće četvrto vrijeme drugog treninga postavio je Nijemac Sebastian Vettel (Aston Martin), a peti je bio Španjolac Fernando Alonso (Alpine).\r\n\r\nSedmerostruki svjetski prvak Britanac Lewis Hamilton (Mercedes), koji je sedam puta u karijeri osvajao Veliku nagradu Kanade, nakon osmog rezultata na prvom treningu, na drugom je bio tek 13. u svom nekonkurentnom bolidu, unatoč pokušajima da ga eksperimentiranjem s postavkama poboljšaju. - Kao da bolid postaje sve lošiji, a mi sve nezadovoljniji. Ovo je to što imamo za ovu godinu, moramo to istrpjeti te naporno raditi na gradnji boljeg bolida za sljedeću godinu - rekao je frustrirani Hamilton.\r\n\r\nSubotnje kvalifikacije su na rasporedu u 22 sata po srednjoeuropskom vremenu, a nedjeljna utrka će započeti u 20 sati.', 'https://img.24sata.hr/BEsmd3-pr5GKe_ajKdB4nIJ82E8=/622x0/smart/media/images/2022-24/2022-06-16t162939z-273279063-up1ei6g19tc69-rtrmadp-3-motor-f1-canada.jpg'),
(16, 'sport', 'Satoshi oduševio nakon slavlja: \'Čast je boriti se u Hrvatskoj, u Karlovcu, kao hrvatski borac!\'', 'Ishi već četiri godine nije Japanac jer, naime, Japan ne dopušta dvojna državljanstva. A on je želio hrvatsko. Pod svaku cijenu', 'Manje od minute bilo je potrebno Satoshiju Ishiiju da u prvom nastupu pred hrvatskom publikom dođe do pobjede! Na drugoj je strani stajao Charlie Milner, koji je bio tek lakši zalogaj za borca iz Cro Cop Teama. Impresionirao je Ishi odličnom formom i eksplozivnošću kojom je samljeo Milnera nakon čega je razgalio sve prisutne. - Čast je boriti se u Hrvatskoj, u Karlovcu, kao hrvatski borac. Hvala svim navijačima koji su me došli bodriti. Također, zahvaljujem čelnicima FNC-a na prilici - rekao je Satoshi. Da, Ishii već četiri godine nije Japanac jer, naime, Japan ne dopušta dvojna državljanstva. A on je htio hrvatsko. Pod svaku cijenu.\r\n\r\nPehar koji je osvojio poklonio je jednom od navijača... - Puno treniram ground\'n\'pound i isplatilo se. Što ću u budućnosti? Ne znam ni sam. Naravno da tražim sljedeće borbe, ali malo ću pričekati - rekao je legendarni Ishi.', 'https://img.24sata.hr/vQeuitw5kd-HGBQEPtt8RCMDn2o=/1243x700/smart/media/images/2022-24/pxl-180622-94123467-1.jpg'),
(17, 'sport', 'Svizac uletio na stazu Formule 1 za vrijeme treninga. Da, svizac...', 'Na prvom treningu uoči VN Kanade na stazi se pojavio neočekivani gost - svizac, koji je prošao između bolida Fernanda Alonsa i Carlosa Sainza pa je na koncu sve prošlo bez neželjenih posljedica', 'Nakon dvije godine otkazivanja, Formula 1 ponovno se vratila u Montreal gdje će se ove nedjelje održati VN Kanade. Vozači su već odradili i uvodna dva slobodna treninga na kojima je bio najbrži Red Bullov Max Verstappen, koji je i vodeći u ukupnom poretku sa 150 bodova. Kako god, na prvom se pojavio neočekivani gost - svizac, koji je prošao između bolida Fernanda Alonsa i Carlosa Sainza pa je na koncu sve prošlo bez neželjenih posljedica. Kako god, na prvom se pojavio neočekivani gost - svizac, koji je prošao između bolida Fernanda Alonsa i Carlosa Sainza pa je na koncu sve prošlo bez neželjenih posljedica.', 'https://img.24sata.hr/E-y-VVXtWDJ-HMryDUSGp4sAvg4=/1243x700/smart/media/images/2022-24/2022-06-17t195859z-1272530942-mt1usatoday18552277-rtrmadp-3-formula-one-2022-montreal-grand-prix.jpg'),
(41, '', '', '', '', ''),
(42, '', '', '', '', ''),
(43, '', '', '', '', ''),
(44, '', '', '', '', ''),
(45, '', '', '', '', ''),
(46, '', '', '', '', ''),
(47, '', '', '', '', ''),
(48, '', '', '', '', ''),
(49, '', '', '', '', ''),
(50, '', '', '', '', ''),
(51, '', '', '', '', ''),
(52, '', '', '', '', ''),
(53, '', '', '', '', ''),
(54, '', '', '', '', ''),
(55, '', '', '', '', ''),
(56, '', '', '', '', ''),
(57, '', '', '', '', ''),
(58, '', '', '', '', ''),
(59, '', '', '', '', ''),
(60, '', '', '', '', ''),
(61, '', '', '', '', ''),
(62, '', '', '', '', ''),
(63, '', '', '', '', ''),
(64, '', '', '', '', ''),
(65, '', '', '', '', ''),
(66, '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `vijesti`
--
ALTER TABLE `vijesti`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `vijesti`
--
ALTER TABLE `vijesti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
