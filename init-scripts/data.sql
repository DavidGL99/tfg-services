CREATE TABLE categoria (
	categoria varchar NOT NULL,
	CONSTRAINT categoria_pk PRIMARY KEY (categoria)
);

INSERT INTO categoria (categoria) VALUES
	 ('portatiles'),
	 ('televisores'),
	 ('smartphones'),
	 ('consolas'),
	 ('ordenadores'),
	 ('ebooks');

CREATE SEQUENCE producto_id_seq;
CREATE TABLE producto (
	id integer NOT NULL DEFAULT nextval('producto_id_seq'),
	categoria varchar(255) NULL,
	"name" varchar(255) NULL,
	price varchar(255) NULL,
	url varchar(255) NULL,
	CONSTRAINT producto_pkey PRIMARY KEY (id)
);

ALTER TABLE producto ADD CONSTRAINT producto_fk FOREIGN KEY (categoria) REFERENCES categoria(categoria);
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('portatiles','Portátil - ASUS VivoBook F1605PA-MB090W, 16" WUXGA, Intel® Core™ i7-11370H, 16GB RAM, 512GB SSD, Iris® Xe Graphics, W11H','899','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_102806874'),
	 ('portatiles','Portátil - HP 14s-dq5001ns, 14" Full HD, Intel® Core™ i5-1235U, 8GB RAM, 512GB SSD, Iris® Xᵉ, W11 H','649','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_102839724'),
	 ('portatiles','Portátil - HP 15S-FQ2150NS, 15.6 " FHD, Intel® Core™ i3-1115G4, 8GB RAM, 256GB SSD, UHD Graphics, Sin sistema operativo, Plata','449','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_95078111'),
	 ('portatiles','Portátil - ASUS VivoBook Pro 15 OLED K3500PC-L1317, 15.6" Full HD, Intel® Core™ i5-11300H, 16GB RAM, 512 GB SSD, RTX™  3050, Sin sistema operativo','849','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_97559020'),
	 ('portatiles','Portátil gaming - Acer Predator PT316-51s-74LT, 16" WUXGA, Intel® Core™ i7-12700H, 16GB RAM, 512GB SSD, GeForce RTX™ 3050Ti, Sin sistema operativo','999','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_103497611'),
	 ('portatiles','APPLE MacBook Air (2020), 13.3" Retina, Chip M1 de Apple, 8 GB, 256 GB SSD, MacOS, Teclado Magic Keyboard Touch ID, Gris espacial','1095','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_83551463'),
	 ('portatiles','APPLE MacBook Air (2020), 13.3" Retina, Chip M1 de Apple, 8 GB, 256 GB SSD, MacOS, Teclado Magic Keyboard Touch ID, Oro','1099','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_87089977'),
	 ('portatiles','Portátil  - F515EA-EJ3060W ASUS, 15,6 ", Full-HD, Intel® Core™ i7, 16 GB, 512 GB, Intel Iris Xe Graphics, Windows 11 Home Gris','745','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_94347605'),
	 ('portatiles','APPLE MacBook Air (2020), 13.3" Retina, Chip M1 de Apple, 8 GB, 256 GB SSD, MacOS, Teclado Magic Keyboard Touch ID, Plata','1099','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_87203671'),
	 ('portatiles','Convertible 2 en 1 - ASUS Vivobook TP1400KA-EC040WS, 14" Full HD, Intel® Celeron® N4500, 4GB RAM, 128GB eMMC, UHD Graphics, W11H','439','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_93616099');
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('portatiles','Convertible 2 en 1 - Lenovo IdeaPad Flex 5 14ALC7, 14" WUXGA, AMD Ryzen™ 5 5500U, 16GB RAM, 512GB SSD, Radeon™ Graphics, Windows 11 Home','829','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_103265631'),
	 ('portatiles','APPLE MacBook Air (2022), 13,6" Retina, Chip M2 de Apple, GPU 8 Núcleos, 8 GB, 256 GB SSD, macOS, Teclado Magic Keyboard Touch ID, Negro','1369','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_94617159'),
	 ('televisores','TV OLED 42" - LG OLED42C24LA, OLED 4K, Procesador α9 Gen5 AI Processor 4K, Smart TV, DVB-T2 (H.265), Negro','1199','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_100933160'),
	 ('televisores','TV DLED 43" - OK OTV 43AU-5022C, UHD 4K, Netflix, Prime Video, YouTube, Google Play, DVB-T2, Negro','239','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_99896254'),
	 ('televisores','TV LED 43" - Hisense 43A6BG, 4K UHD, Smart TV, Control por voz, HDR 10, HLG, Dolby Vision y Audio, TUV, Negro','315','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_103268393'),
	 ('televisores','TV LED 43" - LG 43UQ75006LF, UHD 4K, Procesador Inteligente α5 Gen5 AI Processor 4K, Smart TV, DVB-T2 (H.265), Negro','375','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_100946767'),
	 ('televisores','TV LED 43" - LG 43UQ80006LB, UHD 4K, Procesador Inteligente α5 Gen5 AI Processor 4K, Smart TV, DVB-T2 (H.265), Negro','429','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_101216027'),
	 ('televisores','TV LED 43" - Panasonic TX-43LX650E, HDR 4K, High contrast, Smart TV, DVB-T2 (H.265), Negro','429','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_99671224'),
	 ('televisores','TV LED 43" - LG 43NANO766QA, UHD 4K, Procesador Inteligente α5 Gen5 AI Processor 4K, Smart TV, DVB-T2 (H.265), Azul Oscuro Ceniza','555','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_100944343'),
	 ('televisores','TV LED 43" - LG 43UQ76906LE, UHD 4K, Procesador Inteligente α5 Gen5 AI Processor 4K, Smart TV, DVB-T2 (H.265), Blanco','449','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_100946230');
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('televisores','TV LED 43" - Sony 43X73K, 4K HDR, Smart TV (AndroidTV) con YouTube, Netflix, HBO, Disney…, Bravia Engine, Dolby Atmos, Chromecast, Asistente de Google','566','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_100861564'),
	 ('televisores','TV LED 43" - LG 43UQ91006LA, UHD 4K, Procesador Inteligente α5 Gen5 AI Processor 4K, Smart TV, DVB-T2 (H.265), Azul Oscura Ceniza','529','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_100947281'),
	 ('televisores','TV LED 43" - Samsung UE43AU7175UXXC, UHD 4K, Crystal UHD, Smart TV, HDR10+, Tizen, Dolby Digital Plus, Titan Gray','350','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_99381415'),
	 ('televisores','TV LED 43" - Xiaomi TV P1E, UHD 4K, Smart TV, HDR10, Google Assistant, Dolby Audio™, DTS-HD®, Negro','322','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_97531422'),
	 ('smartphones','Móvil - Samsung Galaxy S22 5G, Black, 256 GB, 8 GB RAM, 6.1" FHD+, Exynos 2200, 3700 mAh, Android 12','799','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_91197897'),
	 ('smartphones','APPLE iPhone 13, Blanco estrella, 128 GB, 5G, 6.1" OLED Super Retina XDR, Chip A15 Bionic, iOS','849','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_87283632'),
	 ('smartphones','Móvil - Xiaomi Redmi Note 11S, Gris Grafito, 128 GB, 6 GB RAM, 6.43" Full HD+, Helio G96, 5000 mAh, Android','240.9','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_90870501'),
	 ('smartphones','Móvil - Samsung Galaxy A13, Negro, 128 GB, 4 GB RAM, 6.6" Full HD+, MediaTek Octa-Core, 5000 mAh, Android 12','199','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_95198287'),
	 ('smartphones','Móvil - Xiaomi Redmi Note 10 Pro, Gris Onix, 256 GB, 8 GB RAM, 6.67 " Full HD+, Snapdragon 732G, 5020 mAh, Android','309','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_98898054'),
	 ('smartphones','Móvil - Xiaomi Redmi Note 11 Pro 5G, Gris Grafito, 128GB, 8GB, 6.67" FHD+, Snapdragon 695, 5000 mAh, Android','359','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_92119990');
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('smartphones','APPLE iPhone 13, Medianoche, 128 GB, 5G, 6.1" OLED Super Retina XDR, Chip A15 Bionic, iOS','859','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_91289781'),
	 ('smartphones','Móvil - Samsung Galaxy A34, Black, 256 GB, 8 GB RAM, 6.6 " FHD+, Mediatek Dimensity 1080 Octa-Core, 5000 mAh, Android 13','449','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_103611587'),
	 ('smartphones','Móvil - Samsung Galaxy A54 5G, White, 256 GB, 8 GB RAM, 6.4" Full HD+, Exynos 1380, 5000 mAh, Android','549','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_103610998'),
	 ('smartphones','Móvil - Samsung Galaxy A54 5G, Light Purple, 256 GB, 8 GB RAM, 6.4" Full HD+, Exynos 1380, 5000 mAh, Android','549','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_103611000'),
	 ('smartphones','Móvil - Samsung Galaxy A54 5G, Light Green, 256 GB, 8 GB RAM, 6.4" Full HD+, Exynos 1380, 5000 mAh, Android','549','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_103612808'),
	 ('smartphones','Móvil - realme 10, Negro, 128 GB, 8 GB RAM, 6.4 " Full HD+, MediaTek Helio G99  Octa Core, 5000 mAh, Android 12 Snow Cone','279','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_102071095'),
	 ('consolas','Consola - Sony PlayStation 5 Standard, 825 GB, 4K, 1 mando, Chasis C, Blanco','549.99','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_102608400'),
	 ('consolas','Consola - Sony PlayStation 5 Standard (2 Mandos DualSense™ incluidos), 825 GB, 4K HD, Negro y Blanco','609','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_102611624'),
	 ('consolas','Consola - Sony PS5 Digital Edition C Chassis, 825 GB, 4K, Blanco y Negro','449.99','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_102608355'),
	 ('consolas','Consola - Sony PS5 Digital, 825 GB, 4K UHD, Blanco + Juego God of War Ragnarok (código descarga)','523.99','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_100810151');
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('consolas','Consola - Nintendo Switch con mandos Joy-Con Rojos, Super Mario Odyssey en código descargable y hoja de pegatinas, Ed. Limitada, 32 GB, Negro','329','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_103330284'),
	 ('consolas','Consola - Microsoft Xbox Series X + Juego Forza Horizon 5 Premium Eldition, 1 TB SSD, Negro','548','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_101913427'),
	 ('consolas','Consola - Sony PS5 Stand, 825 GB, 4K UHD Blu ray, Blanco + Juego God Of War: Ragnarok (código descarga)','620','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_100810149'),
	 ('consolas','Consola - Nintendo Switch OLED, 7", Joy-Con, 64 GB, Blanco','349','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_85591077'),
	 ('consolas','Consola - Sony PS4 Slim, 500 GB, Negro + Call Of Duty Modern Warfare II (código descarga)','327','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_102202510'),
	 ('consolas','Consola - Sony PS5 Stand C, 825GB, 4K, Blanco + Juego God Of War: Ragnarok (código descarga) + Juego The Last Of Us: Parte 1 + Tarjeta 20€ PS Store','699','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_100410925'),
	 ('consolas','Consola - Microsoft Xbox Series S, 512 GB SSD, Blanco','280','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_89726540'),
	 ('consolas','Consola - Microsoft Xbox Series S 512 GB Gilded Hunter Bundle + Fornite, Rocket  League, Fall Guys, Blanco','280','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_100289560'),
	 ('ordenadores','PC sobremesa - HP M01-F2050ns, Intel® Core™ i5-12400 , 16GB RAM, 512GB SSD, UHD 730, W11 Home, Negro','729','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_99401778'),
	 ('ordenadores','All in One - HP 27-cb0006ns, 27" FHD, AMD Ryzen™ 3 5300U, 8GB RAM, 512GB SSD, AMD Radeon™, W11H','679','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_91802431');
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('ordenadores','All in one - HP  24-cb0024ns, 23.8" Full HD, AMD Ryzen™ 5 5500U, 16GB RAM, 512GB SSD, AMD Radeon™, W11 Home, Blanco','799','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_96186389'),
	 ('ordenadores','PC sobremesa - HP M01-F2003ns Mini Torre, Intel® Core™ i3-10105, 8GB RAM, 512GB SSD, UHD, Sin sistema operativo, Negro','479','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_98945686'),
	 ('ordenadores','All in one - HP 24-CB1007NS, 23.8" Full HD, Intel® Core™ i5-1235U, 16GB RAM, 512GB SSD, Iris® Xᵉ, W11 H, Blanco','899','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_99077695'),
	 ('ordenadores','PC sobremesa - Acer XC-1760, Intel® Core™ i5-12400, 8GB RAM, 512GB SSD, Intel® UHD Graphics 730, Windows 11 Home, Negro','599','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_99019342'),
	 ('ordenadores','PC sobremesa - Lenovo IdeaCentre 5 14ACN6, AMD Ryzen™ 5 5600G, 8GB RAM, 512GB SSD, Radeon™ Graphics, Windows 11 Home','579','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_96379965'),
	 ('ordenadores','All in one - Acer C24-1700, 23.8" Full HD, Intel® Core™ i3-1215U, 8 GB RAM, 512 GB SSD,  , Iris® X e Graphics, Windows 11 Home, Negro','649','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_99431414'),
	 ('ordenadores','All in one - Lenovo IdeaCentre AIO 3 24ITL6, 23.8" Full HD, Intel® Core™ i3-1115G4, 8 GB RAM, 512 GB SSD, UHD Graphics, Sin sistema operativo','529','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_102213549'),
	 ('ordenadores','PC sobremesa - Lenovo IdeaCentre 5 14IAB7, Intel® Core™ i5-12400, 16GB RAM, 512GB SSD, UHD Graphics 730, Sin sistema operativo','529','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_98358265'),
	 ('ordenadores','All in one - Lenovo IdeaCentre AIO 3 24ALC6, 23.8" Full HD, AMD Ryzen™ 5 5500U, 16GB RAM, 512GB SSD, Sin sistema operativo','629','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_95407108'),
	 ('ordenadores','PC sobremesa - ASUS U500MA-75700G007W, Ryzen™ 7 5700G, 16GB RAM, 512GB SSD, Radeon Graphics, Windows 11 Home, Negro','699','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_99429135');
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('ebooks','eReader - Amazon Kindle Paperwhite 2021, 6.8", 300 ppp, 8GB, Wi-Fi, Impermeable, Con publicidad, Negro','139','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_89103746'),
	 ('ebooks','eReader - Kobo Nia, 6", 8 GB, Para eBook, 212ppp, ComfortLight, Negro','109.99','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_83456350'),
	 ('ebooks','eReader - Amazon Kindle, Para eBook, 6", Doble de almacenamiento, 16 GB, 300 ppp, E-Ink, Negro','109','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_98854425'),
	 ('ebooks','eReader - Kobo Libra 2, 7’’ HD, eBook y AudioBook, 32 GB, Resistente al agua, Negro','199','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_87780246'),
	 ('ebooks','eReader - Kobo Clara 2E, Para eBook, 6 ", 16 GB, 300 ppp, 1448 x 1072, E-Ink, Azul Océano Profundo','150','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_97795335'),
	 ('ebooks','eReader - Amazon Kindle, Para eBook, 6", Doble de almacenamiento, 16 GB, 300 ppp, E-Ink, Azul vaquero','109','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_98854431'),
	 ('ebooks','eReader - Kobo Libra 2, 7’’ HD, eBook y AudioBook, 32 GB, Resistente al agua, Blanco','199','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_87780252'),
	 ('ebooks','E-book  - PB970-M-WWW POCKETBOOK, 9,7 ", 8 GB, 1200 x 825, E Ink Carta, Gris','223','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_98925384'),
	 ('ebooks','E-book  - PB632-K-WW POCKETBOOK, 6 ", 16 GB, 1072 x 1448, E Ink Carta Resolución 1072 × 1448, Negro','166.85','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_98936152'),
	 ('ebooks','E-book  - EBO-635L DENVER, 6 ", 4 GB, 1024 x 758, LED, Negro','99.05','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_98981070');
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('ebooks','Terminal de recopilación de datos - resistente  - CT60-L0N-ASC210E HONEYWELL, 4,7 ", 32 GB, HD (1280x720), LCD, Negro','2262.8','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_98981147'),
	 ('ebooks','Dickens Light 2 Libro Electrónico Pantalla 6" Retroiluminada Con Teclas Frontales 8Gb  - SPC Dickens Light 2 Libro Electrónico Pantalla 6" Retroiluminada Con Teclas Frontales 8Gb SPC, 6 ", 8 GB, 1024x758 píxeles, E-Ink, Negro','103.99','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_89262316'),
	 ('smartphones','Móvil - Samsung Galaxy S22 5G, Black, 256 GB, 8 GB RAM, 6.1" FHD+, Exynos 2200, 3700 mAh, Android 12','799','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_91197897'),
	 ('smartphones','APPLE iPhone 13, Blanco estrella, 128 GB, 5G, 6.1" OLED Super Retina XDR, Chip A15 Bionic, iOS','849','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_87283632'),
	 ('smartphones','Móvil - Xiaomi Redmi Note 11S, Gris Grafito, 128 GB, 6 GB RAM, 6.43" Full HD+, Helio G96, 5000 mAh, Android','240.9','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_90870501'),
	 ('smartphones','Móvil - Samsung Galaxy A13, Negro, 128 GB, 4 GB RAM, 6.6" Full HD+, MediaTek Octa-Core, 5000 mAh, Android 12','199','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_95198287'),
	 ('smartphones','Móvil - Xiaomi Redmi Note 10 Pro, Gris Onix, 256 GB, 8 GB RAM, 6.67 " Full HD+, Snapdragon 732G, 5020 mAh, Android','309','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_98898054'),
	 ('smartphones','Móvil - Xiaomi Redmi Note 11 Pro 5G, Gris Grafito, 128GB, 8GB, 6.67" FHD+, Snapdragon 695, 5000 mAh, Android','359','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_92119990'),
	 ('smartphones','APPLE iPhone 13, Medianoche, 128 GB, 5G, 6.1" OLED Super Retina XDR, Chip A15 Bionic, iOS','859','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_91289781'),
	 ('smartphones','Móvil - Samsung Galaxy A34, Black, 256 GB, 8 GB RAM, 6.6 " FHD+, Mediatek Dimensity 1080 Octa-Core, 5000 mAh, Android 13','449','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_103611587');
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('smartphones','Móvil - Samsung Galaxy A54 5G, White, 256 GB, 8 GB RAM, 6.4" Full HD+, Exynos 1380, 5000 mAh, Android','549','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_103610998'),
	 ('smartphones','Móvil - Samsung Galaxy A54 5G, Light Purple, 256 GB, 8 GB RAM, 6.4" Full HD+, Exynos 1380, 5000 mAh, Android','549','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_103611000'),
	 ('smartphones','Móvil - Samsung Galaxy A54 5G, Light Green, 256 GB, 8 GB RAM, 6.4" Full HD+, Exynos 1380, 5000 mAh, Android','549','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_103612808'),
	 ('smartphones','Móvil - realme 10, Negro, 128 GB, 8 GB RAM, 6.4 " Full HD+, MediaTek Helio G99  Octa Core, 5000 mAh, Android 12 Snow Cone','279','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_102071095'),
	 ('smartphones','Móvil - Samsung Galaxy A54 5G, Black, 256 GB, 8 GB RAM, 6.4" Full HD+, Exynos 1380, 5000 mAh, Android','549','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_103613100'),
	 ('smartphones','Móvil - Xiaomi Redmi Note 11, Azul ocaso, 128 GB, 4 GB RAM, 6.43" Full HD+, Snapdragon 680, 5000 mAh, Android 11','200.9','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_90608924'),
	 ('smartphones','APPLE iPhone 14 Pro Max, Púrpura, 256 GB, 5G, 6.7" Pantalla Super Retina XDR, Chip A16 Bionic, iOS','1509','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_97312029'),
	 ('smartphones','Móvil - Xiaomi Redmi Note 11 Pro 5G, Azul Atlántico, 128GB, 8GB, 6.67" FHD+, Snapdragon 695, 5000 mAh, Android','359','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_92119973'),
	 ('smartphones','Móvil - Samsung Galaxy S23 Ultra 5G, Botanic Green, 512GB, 12GB RAM, 6.8" QHD+, Qualcomm Snapdragon 8, Gen 2 Octa-Core, 5000mAh, Android 13','1589','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_101676722'),
	 ('smartphones','APPLE iPhone 11, Negro, 128 GB, 6.1" Liquid Retina HD, Chip A13 Bionic, iOS','573','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_96276715');
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('smartphones','APPLE iPhone 13, Rosa, 128 GB, 5G, 6.1" OLED Super Retina XDR, Chip A15 Bionic, iOS','859','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_87283638'),
	 ('smartphones','Móvil - Xiaomi Redmi 9C, Negro, 128 GB, 4 GB RAM, 6.53" HD+, MediaTek Helio G35, 5000 mAh, Android','140.9','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_93868213'),
	 ('smartphones','Móvil - OPPO A96, Starry Black, 128 GB, 8 GB RAM, 6.59" FHD+, Qualcomm Snapdragon™ 680, 5000 mAh, Android 11','279','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_93175536'),
	 ('smartphones','Móvil - Xiaomi Redmi Note 11, Gris grafito, 128 GB, 4 GB RAM, 6.43" Full HD+, Snapdragon 680, 5000mAh, Android 11','200.9','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_90592224'),
	 ('smartphones','Móvil - Xiaomi Redmi Note 11S, Azul Ocaso, 128 GB, 6 GB RAM, 6.43" Full HD+, Helio G96, 5000 mAh, Android','230.9','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_90870491'),
	 ('smartphones','APPLE iPhone 13, Azul, 128 GB, 5G, 6.1" OLED Super Retina XDR, Chip A15 Bionic, iOS','849','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_87283647'),
	 ('smartphones','APPLE iPhone 11, Blanco, 128 GB, 6.1" Liquid Retina HD, Chip A13 Bionic, iOS','573','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_96276719'),
	 ('smartphones','Móvil - Samsung Galaxy A14, Plata, 128 GB, 4 GB RAM, 6.6" FHD+, Mediatek Helio G85, 5000 mAh, Android','229','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_103610077'),
	 ('smartphones','Móvil - Samsung Galaxy S23 Ultra 5G, Phantom Black, 512GB, 12GB RAM, 6.8" QHD+, Qualcomm Snapdragon 8, Gen 2 Octa-Core, 5000mAh, Android 13','1589','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_101676425'),
	 ('smartphones','Móvil - OnePlus 11 5G, 256 GB + 16 GB RAM, 6.7", 3D OLED, Snapdragon® 8 Gen 2 Mobile Platform, 5000 mAh, Android, Titan Black','899','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_102024497');
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('smartphones','Móvil - Xiaomi Redmi Note 12 Pro 5G, Negro, 128 GB, 8 GB RAM, 6.67" AMOLED FHD+ 120Hz, MediaTek Dimensity 1080 2,6 Ghz, 5000 mAh, Android','399','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_103176413'),
	 ('smartphones','APPLE iPhone 11, Negro, 64 GB, 6.1" Liquid Retina HD, Chip A13 Bionic, iOS','529','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_96277825'),
	 ('smartphones','Móvil - Samsung Galaxy A53 5G, Black, 256 GB, 8 GB RAM, 6.5" FHD+, Exynos 1280, 5000 mAh, Android 12','489','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_92324093'),
	 ('smartphones','APPLE iPhone 14, Amarillo, 128 GB, 5G, 6.1" OLED Super Retina XDR, Chip A15 Bionic, iOS','959','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_103180675'),
	 ('smartphones','Móvil - Samsung Galaxy A53 5G, Black, 128 GB, 6 GB RAM, 6.5" FHD+, Exynos 1280, 5000 mAh, Android 12','429','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_92324038'),
	 ('smartphones','Móvil - Xiaomi Redmi Note 10 Pro, Azul Glaciar, 256 GB, 8 GB RAM, 6.67 " Full HD+, Snapdragon 732G, 5020 mAh, Android','309','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_98898029'),
	 ('smartphones','Móvil - Xiaomi Redmi Note 12 Pro 5G, Blanco, 128 GB, 8 GB RAM, 6.67" AMOLED FHD+ 120Hz, MediaTek Dimensity 1080 2,6 Ghz, 5000 mAh, Android','399','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_103176410'),
	 ('smartphones','Móvil - Xiaomi 13 Lite, Negro, 256 GB, 8 GB RAM, 6.55" FHD+ AMOLED 120 Hz, Snapdragon® 7 Gen 1, 4500 mAh, Android 13 - MIUI 14','549.9','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_102289469'),
	 ('smartphones','Smartphone  - Smartphone ZTE Blade A31 Lite 5 1GB+32GB Azul ZTE, Azul, 32 GB, 1 GB, 5 ", 480 x 960 p, SC9832E 2000 mAhmAh','69.07','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_88620979'),
	 ('smartphones','Móvil - Samsung Galaxy S23 Ultra 5G, Cotton White, 512GB, 12GB RAM, 6.8" QHD+, Qualcomm Snapdragon 8, Gen 2 Octa-Core, 5000mAh, Android 13','1589','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_101676715');
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('smartphones','Móvil - realme GT Neo 3T 5G, Negro, 128 GB, 8 GB RAM, 6.62 " FHD+, Snapdragon 870, 5000 mAh, Android 12','419','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_94746282'),
	 ('smartphones','Móvil - Samsung Galaxy S23 5G, Phantom Black, 256GB, 8GB RAM, 6.1" FHD+, Qualcomm Snapdragon, 3900mAh, Android 13','959','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_101676591'),
	 ('smartphones','Móvil - Xiaomi Redmi Note 12 Pro + 5G, Negro, 256 GB, 8 GB RAM, 6.67" AMOLED FHD+ 120Hz, MediaTek Dimensity 1080 2,6 Ghz, 5000 mAh, Android','499','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_103448688'),
	 ('smartphones','Móvil - OnePlus Nord CE 2 Lite 5G, Negro, 128 GB + 6 GB RAM, 6.59" LCD, SnapdragonTM 695 5G, 5000 mAh, Android 12','229','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_102024541'),
	 ('smartphones','Móvil - OnePlus Nord CE 2 Lite 5G, Azul, 128 GB + 6 GB RAM, 6.59" LCD, SnapdragonTM 695 5G, 5000 mAh, Android 12','229','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_102024488'),
	 ('smartphones','Móvil - Samsung Galaxy A13, Azul Claro, 32 GB, 3 GB RAM, 6.6" Full HD+, MediaTek Octa-Core, 5000 mAh, Android 12','169','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_95198206'),
	 ('smartphones','Móvil - Xiaomi Redmi 9C, Verde, 128 GB, 4 GB RAM, 6.53" HD+, MediaTek Helio G35, 5000 mAh, Android','140.9','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_93905012'),
	 ('smartphones','Móvil - Xiaomi Redmi 9A, Aurora Green, 32 GB, 2 GB RAM, 6.53 " HD+, MediaTek Helio G25, 5000 mAh, Android','99','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_95148311'),
	 ('smartphones','Móvil - Xiaomi Redmi Note 12 Pro + 5G, Azul, 256 GB, 8 GB RAM, 6.67" AMOLED FHD+ 120Hz, MediaTek Dimensity 1080 2,6 Ghz, 5000 mAh, Android','499','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_103448689'),
	 ('smartphones','APPLE iPhone 13, Verde, 128 GB, 5G, 6.1" OLED Super Retina XDR, Chip A15 Bionic, iOS','859','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_92170877');
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('portatiles','Portátil - ASUS VivoBook F1605PA-MB090W, 16" WUXGA, Intel® Core™ i7-11370H, 16GB RAM, 512GB SSD, Iris® Xe Graphics, W11H','899','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_102806874'),
	 ('portatiles','Portátil - HP 14s-dq5001ns, 14" Full HD, Intel® Core™ i5-1235U, 8GB RAM, 512GB SSD, Iris® Xᵉ, W11 H','649','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_102839724'),
	 ('portatiles','Portátil - HP 15S-FQ2150NS, 15.6 " FHD, Intel® Core™ i3-1115G4, 8GB RAM, 256GB SSD, UHD Graphics, Sin sistema operativo, Plata','449','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_95078111'),
	 ('portatiles','Portátil - ASUS VivoBook Pro 15 OLED K3500PC-L1317, 15.6" Full HD, Intel® Core™ i5-11300H, 16GB RAM, 512 GB SSD, RTX™  3050, Sin sistema operativo','849','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_97559020'),
	 ('portatiles','Portátil gaming - Acer Predator PT316-51s-74LT, 16" WUXGA, Intel® Core™ i7-12700H, 16GB RAM, 512GB SSD, GeForce RTX™ 3050Ti, Sin sistema operativo','999','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_103497611'),
	 ('portatiles','APPLE MacBook Air (2020), 13.3" Retina, Chip M1 de Apple, 8 GB, 256 GB SSD, MacOS, Teclado Magic Keyboard Touch ID, Gris espacial','1095','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_83551463'),
	 ('portatiles','APPLE MacBook Air (2020), 13.3" Retina, Chip M1 de Apple, 8 GB, 256 GB SSD, MacOS, Teclado Magic Keyboard Touch ID, Oro','1099','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_87089977'),
	 ('portatiles','Portátil  - F515EA-EJ3060W ASUS, 15,6 ", Full-HD, Intel® Core™ i7, 16 GB, 512 GB, Intel Iris Xe Graphics, Windows 11 Home Gris','745','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_94347605'),
	 ('portatiles','APPLE MacBook Air (2020), 13.3" Retina, Chip M1 de Apple, 8 GB, 256 GB SSD, MacOS, Teclado Magic Keyboard Touch ID, Plata','1099','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_87203671'),
	 ('portatiles','Convertible 2 en 1 - ASUS Vivobook TP1400KA-EC040WS, 14" Full HD, Intel® Celeron® N4500, 4GB RAM, 128GB eMMC, UHD Graphics, W11H','439','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_93616099');
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('portatiles','APPLE MacBook Air (2022), 13,6" Retina, Chip M2 de Apple, GPU 8 Núcleos, 8 GB, 256 GB SSD, macOS, Teclado Magic Keyboard Touch ID, Negro','1369','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_94617159'),
	 ('portatiles','Portátil - ASUS E410MA-EK1945, 14" Full HD, Intel® Celeron® N4020, 4GB RAM, 256 GB SSD, Intel® UHD, Sin sistema operativo','329','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_100505481'),
	 ('portatiles','Portátil gaming - HP OMEN 16-c0031ns, 16.1" Full HD, AMD Ryzen™ 7 5800H, 16GB RAM, 512GB SSD, RTX™ 3050 Ti, Sin sistema operativo','1149','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_91802460'),
	 ('portatiles','Portátil - ASUS F1402ZA-EK375W, 14" Full HD, Intel® Core™ i5-1235U, 16GB RAM, 512GB SSD, Iris® Xe Graphics, Windows 11 Home','649','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_101142767'),
	 ('portatiles','Portátil  - 82C3001WSP LENOVO, 15,6 ", Full-HD, Celeron, 8 GB, 256 GB, Intel UHD Graphics integrada, Windows 10 Home Gris','332.91','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_99068544'),
	 ('portatiles','Portátil gaming - ASUS ROG Strix G15 G G513RC-HF094, 15.6" Full HD, AMD Ryzen™ 7 6800H, 16GB RAM, 512GB SSD, RTX™ 3050, Sin sistema operativo','989','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_102806884'),
	 ('portatiles','Portátil - Lenovo IdeaPad 3 15ALC6, 15.6" Full HD, AMD Ryzen™ 5 5500U, 8GB RAM, 512GB SSD, Radeon™ Graphics, Windows 11 Home','549','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_98752970'),
	 ('portatiles','Convertible 2 en 1 - Lenovo IdeaPad Flex 5 14ALC7, 14" WUXGA, AMD Ryzen™ 5 5500U, 16GB RAM, 512GB SSD, Radeon™ Graphics, Windows 11 Home','829','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_103265631'),
	 ('portatiles','Portátil - ASUS F1400EA-EK1838W, 14" Full HD, Intel® Core™ i5-1135G7, 8GB RAM, 512GB SSD, Iris® Xe Graphics, Windows 11 Home','599','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_98967244'),
	 ('portatiles','Portátil  - VivoBook F1500EA-EJ3068W ASUS, 15,6 ", Full-HD, Intel® Core™ i7-1165G7, 16 GB, 512 GB, Intel® Iris Xe Graphics, Windows 11 home Negro Indie','735','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_97609731');
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('portatiles','Portátil - ASUS F1500EA-BQ2362, 15.6" Full HD, Intel® Core™ i3-1115G4 , 8GB RAM, 256 GB SSD, UHD Graphics, Sin sistema operativo','369','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_98879954'),
	 ('portatiles','Portátil - ASUS VivoBook 15 OLED F1505ZA-L1194, 15.6" Full HD, Intel® Core™ i7-1255U, 16GB RAM, 512GB SSD, Iris® Xe Graphics, Sin sistema operativo','849','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_102575981'),
	 ('televisores','TV QLED 43" - TCL 43C635, UHD 4K, Smart TV, Control por voz, Wifi,Dolby Atmos, Negro','349','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_101200350'),
	 ('portatiles','Portátil - ASUS Chromebook CX1500CNA-EJ0100, 15.6" Full HD, Intel® Celeron® N3350, 8GB RAM, 64GB eMMC, Intel® HD Graphics 500, Chrome OS','383','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_97441066'),
	 ('portatiles','Portátil  - PT06F-14N40128G11P PRIMUX, 14,1 ", Full-HD, Intel® Celeron™ N4000 Dual Core hasta 2,6GHz, 4 GB, 128 GB, Integrado: HD Intel® 600, Windows 11 Home Gris','199','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_98475597'),
	 ('portatiles','Portátil - HP 15s-fq5004ns, 15.6" Full HD, Intel® Core™ i5-1235U, 8GB RAM, 512GB SSD, Intel® Iris® Xᵉ, W11 H','699','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_98751551'),
	 ('portatiles','Portátil - Acer Aspire 5 A515-56-53H8, 15.6" FHD, Intel® Core™ i5-1135G7, 8GB RAM, 512GB SSD, Iris® Xe, W11H','579','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_92089361'),
	 ('portatiles','Portátil gaming - HP Victus 15-FB0021NS, 15.6" Full HD, AMD Ryzen™ 5 5600H, 16GB RAM, 512GB SSD, GTX 1650, W11 H','899','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_102839743'),
	 ('portatiles','Portátil gaming - Acer Chromebook CBG516-1H-72EW, 16" WQXGA, Intel® Core™ i7-1260P, 16GB RAM, 256GB SSD, Iris® Xe, Chrome OS','1099','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_103214012'),
	 ('portatiles','Portátil - HP Chromebook 11 X360 MK G3, 11.6" HD, MediaTek MT8183, 4GB RAM, 32GB eMMC, Chrome OS','239','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_98751703');
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('portatiles','Portátil - HP Laptop 15s-eq2069ns, 15.6 " Full HD, AMD Ryzen™ 5 5500U, 8GB RAM, 512GB SSD, AMD Radeon™, W11 H','529','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_93565972'),
	 ('portatiles','Portátil - ASUS VivoBook 15 OLED F1505ZA-L1195, 15.6" Full HD, Intel® Core™ i7-1255U, 8GB RAM, 512 GB SSD, Iris Xe Graphics, Sin sistema operativo','949','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_103018303'),
	 ('portatiles','Portátil - Lenovo IdeaPad 3 15ITL6, 15.6" Full HD, Intel® Core™ i5-1155G7, 8GB RAM, 512GB SSD,  Iris® Xe Graphics, Windows 11 Home','568','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_98944475'),
	 ('portatiles','Portátil - Lenovo IdeaPad 3 15ITL6, 15.6" Full HD, Intel® Core™ i7-1165G7, 8GB RAM, 512GB SSD, Iris® Xe Graphics, Windows 11 Home','799','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_95265115'),
	 ('portatiles','Portátil gaming - HP Victus 16-E0036NS, 16.1" FHD, AMD Ryzen™ 7 5800H, 32GB RAM, 1TB SSD, RTX™3060, Sin sistema operativo, Plata Mica','1299','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_96429262'),
	 ('portatiles','Portátil - ASUS Vivobook OLED M1503QA-L1187, 15.6" Full-HD, AMD Ryzen™ 5 5600H, 16GB RAM, 512GB SSD, Radeon Graphics, Sin sistema operativo','599','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_101508690'),
	 ('portatiles','Portátil - ASUS Chromebook CX1500CNA-EJ0101 N3350, 15.6" Full HD, Intel® Celeron® N3350, 8GB RAM, 32GB eMMC, Intel® HD Graphics 500, Chrome OS','379','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_93489378'),
	 ('portatiles','Portátil gaming - Acer Nitro 5 AN515-57, 15.6" FHD, Intel® Core™ i7-11800H, 16GB RAM, 512GB SSD, NVIDIA® GeForce RTX™ 3070, Sin sistema operativo','1099','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_95079189'),
	 ('portatiles','Portátil gaming - HP Victus 15-fb0001ns, 15.6" Full HD, AMD Ryzen™ 5 5600H, 8GB RAM, 512GB SSD, GTX 1650, Sin sistema operativo, Plata Mica','799','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_99194467'),
	 ('portatiles','APPLE MacBook Pro (2022), 13,3" Pantalla Retina, Chip M2 de Apple, 8 GB, 256 GB, macOS Monterey, Cámara FaceTime HD a 720p, Plata','1430','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_94649720');
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('portatiles','Portátil gaming - Acer Nitro 5 AN515-58, 15.6" Full HD, Intel® Core™ i5-12500H, 16GB RAM, 512GB SSD, GeForce RTX™ 3050, Windows 11 Home','899','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_98272400'),
	 ('portatiles','Portátil - Acer Chromebook CB315-4H, 15.6" Full HD, Intel® Celeron® N4500, 8GB RAM, 128GB eMMC, Intel® UHD Graphics, Chrome OS','399','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_99019407'),
	 ('portatiles','Portátil gaming - Acer AN515-58,15.6" Full HD, Intel® Core™ i5-12500H, 16GB RAM, 1TB SSD, NVIDIA® GeForce RTX™ 3060, W11H, Mochila + Ratón gaming','999','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_101545185'),
	 ('portatiles','Portátil  - VivoBook F1400EA-EK1543W ASUS, 14 ", Full-HD, Intel® Core™ i3-1115G4, 8 GB, 256 GB, Intel® UHD Graphics, Windows 11 Home S Negro Indie','499','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_99071245'),
	 ('portatiles','Portátil  - VivoBook F1500EA-EJ2535W ASUS, 15,6 ", Full-HD, Intel® Core™ i3-1115G4, 8 GB, 512 GB, Intel® UHD Graphics, Windows 11 home Negro Indie','579','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_97609731'),
	 ('portatiles','Portátil gaming - HP Victus 15-FA0001NS, 15.6", Full HD, Intel® Core™ i5-12500H, 16GB RAM, 512 SSD, GTX 1650, Sin sistema operativo, Azul','799','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_98751660'),
	 ('portatiles','Portátil gaming - HP Victus 15-fa0010ns, 15.6" Full HD, Intel® Core™ i5-12500H, 16GB RAM, 512GB SSD, RTX™ 3050, Sin sistema operativo, Plata mica','999','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_98783708'),
	 ('portatiles','Portátil - ASUS ZenBook OLED 14X OLED UM5401QA-L717, 14" WQXGA+, AMD Ryzen™ 7 5800H, 16GB RAM, 512GB SSD, Radeon™ Graphics, Sin sistema operativo','899','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_98884120'),
	 ('portatiles','APPLE MacBook Pro (2022), 13,3" Pantalla Retina, Chip M2 de Apple, 8 GB, 256 GB, macOS Monterey, Cámara FaceTime HD a 720p, Gris espacial','1385','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_94649678'),
	 ('portatiles','Portátil  - 15S-EQ1163NS HP, 15,6 ", AMD Athlon 3020E, 8 GB, 256 GB, AMD Radeon Graphics, Windows 11 Home Blanco','333.97','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_99171402');
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('portatiles','Portátil - HP 15s-eq1133ns, 15.6" HD, AMD 3020e, 4GB RAM, 256GB SSD, AMD Radeon™, Sin sistema operativo, Negro','349','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_98360090'),
	 ('portatiles','Convertible 2 en 1 - Lenovo IdeaPad Flex 5 14ALC05, 14" Full HD, AMD Ryzen™ 7 5700U, 16GB RAM, 512GB SSD, Radeon™ Graphics, Windows 11 Home S','809','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_98304848'),
	 ('portatiles','Portátil - ASUS VivoBook M1703QA-AU009W, 17.3" Full HD, Ryzen™ 5 5600H, 16GB RAM, 512GB SSD, Radeon™ Graphics, Windows 11 Home','799','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_98883985'),
	 ('portatiles','Portátil gaming - Acer Nitro AN517-55-78S2, 17.3" Full-HD, Intel® Core™ i7-12700H, 16GB RAM, 512GB SSD, GeForce RTX™ 3050Ti, Windows 11 Home, Negro','1549','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_103498212'),
	 ('portatiles','Portátil gaming - Acer Nitro AN515-46-R80A, 15.6" Full HD, AMD Ryzen™ 5 6600H, 16GB RAM, 512GB SSD, GeForce RTX™ 3050Ti, Sin sistema operativo, Negro','899','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_103495331'),
	 ('portatiles','Portátil gaming - Acer Predator PH315-55-78NT, 15.6" Full HD, Intel® Core™ i7-12700H, 32GB RAM, 512GB SSD, GeForce RTX™ 3070, Windows 11 Home, Negro','2299','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_103503871'),
	 ('portatiles','Portátil gaming - MSI Thin GF63 12VE-009XES, 15.6" Full HD, Intel® Core™ i5-12450H, 16GB RAM, 512GB SSD, GeForce RTX™ 4050, Sin sistema operativo','1169','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_103506540'),
	 ('portatiles','Convertible 2 en 1 - Acer Spin SP314-55N, 14" Full HD, Intel® Core™ i5-1235U, 8GB RAM, 512GB SSD, UMA, Windows 11 Home, Plata','799','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_98370604'),
	 ('portatiles','Portátil - MSI Modern 15 B12M-024XES, 15.6" Full HD, Intel® Core™ i7-1255U, 16GB RAM, 512GB SSD, Iris® Xe Graphics, Sin sistema operativo','899','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_98706697'),
	 ('portatiles','Portátil - Lenovo IdeaPad 3 15ALC6, 15.6" Full HD, AMD Ryzen™ 5 5500U, 16GB RAM, 512GB SSD, AMD Radeon™ Graphics, Windows 11 Home','629','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_93641811');
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('portatiles','Convertible 2 en 1 - Lenovo IdeaPad Flex 5 14ITL05, 14" Full HD, Intel® Core™ i5-1135G7, 16GB RAM, 512GB SSD, Iris® Xe Graphics, Windows 11 Home','849','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_95342445'),
	 ('portatiles','Portátil - HP 15s-fq3004ns, 15.6" Full HD, Intel® Celeron® N4500, 8GB RAM, 256GB SSD, UHD, Sin sistema operativo, Plata','389','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_100286970'),
	 ('portatiles','Portátil gaming - Lenovo IdeaPad Gaming 3 15ACH6, 15,6" Full HD, AMD Ryzen™ 5 5600H, 16GB, 512GB SSD, GeForce GTX 1650, Sin sistema operativo','699','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_100857516'),
	 ('portatiles','Portátil gaming - Acer Predator Helios 300 PH315-55 I7, 15.6" FHD, Intel® Core™ i7-12700H, 16GB, 512GB SSD, GeForce RTX™ 3060, Sin sistema operativo','1789','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_95212261'),
	 ('portatiles','Portátil gaming - Acer Nitro 5 AN515-58-730H, 15.6" FHD, Intel® Core™ i7-12700H, 16GB RAM, 1TB SSD, RTX3060, Sin sistema operativo','1199','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_101364567'),
	 ('portatiles','Portátil gaming - Lenovo IdeaPad Gaming 3 15ACH6, 15.6" Full HD, AMD Ryzen 7 5800H, 16GB RAM, 512GB SSD, GeForce RTX™ 3050, Sin sistema operativo','899','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_98491030'),
	 ('portatiles','Portátil - HP 15s-eq1135ns, 15.60" Full HD, AMD Athlon™ Silver 3050U, 8GB RAM, 256GB SSD, Radeon Graphics, Sin sistema operativo, Blanco','399','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_103035516'),
	 ('portatiles','Portátil - HP 15S-FQ2149NS, 15.6" Full HD, Intel® Core™ i3-1115G4, 8GB RAM, 256GB SSD, Intel® UHD, W11 S, Plata','539','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_90729046'),
	 ('portatiles','Portátil gaming - ASUS ROG G513RC-HN088W, 15.6" Full HD, AMD Ryzen™ 7 6800H, 16GB RAM, 512GB SSD, GeForce RTX™ 3050, Windows 11 Home','1199','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_101761141'),
	 ('portatiles','Convertible 2 en 1 - Microsoft Surface Pro 9, 13" 2K QHD+, Intel® Evo™ Core™ i5-1235U, 8 GB RAM, 256 GB SSD, W11 Home, Platinum','1299','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_99566264');
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('portatiles','Portátil gaming - Lenovo Legion 5 Pro 16IAH7H, 16" WQXGA, Intel® Core™ i7-12700H, 32GB RAM, 1TB SSD, GeForce RTX™ 3070, Windows® 11 Home, Gris','2349','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_102425744'),
	 ('portatiles','Portátil gaming - Lenovo Legion 5 15ITH6H, 15.6" Full HD, Intel® Core™ i5-11400H, 16GB RAM, 512GB SSD, GeForce RTX™ 3060, Windows 11 Home','1149','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_102292451'),
	 ('portatiles','Portátil - Acer Aspire 5 A515-56-76HW, 15.6" FHD, Intel® Core™ i7-1165G7, 8 GB RAM, 512 GB SSD, Iris® Xe, W11','699','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_93383496'),
	 ('televisores','TV OLED 42" - LG OLED42C24LA, OLED 4K, Procesador α9 Gen5 AI Processor 4K, Smart TV, DVB-T2 (H.265), Negro','1199','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_100933160'),
	 ('televisores','TV DLED 43" - OK OTV 43AU-5022C, UHD 4K, Netflix, Prime Video, YouTube, Google Play, DVB-T2, Negro','239','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_99896254'),
	 ('televisores','TV LED 43" - Hisense 43A6BG, 4K UHD, Smart TV, Control por voz, HDR 10, HLG, Dolby Vision y Audio, TUV, Negro','315','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_103268393'),
	 ('televisores','TV LED 43" - LG 43UQ75006LF, UHD 4K, Procesador Inteligente α5 Gen5 AI Processor 4K, Smart TV, DVB-T2 (H.265), Negro','375','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_100946767'),
	 ('televisores','TV LED 43" - LG 43UQ80006LB, UHD 4K, Procesador Inteligente α5 Gen5 AI Processor 4K, Smart TV, DVB-T2 (H.265), Negro','429','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_101216027'),
	 ('televisores','TV LED 43" - Panasonic TX-43LX650E, HDR 4K, High contrast, Smart TV, DVB-T2 (H.265), Negro','429','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_99671224'),
	 ('televisores','TV LED 43" - LG 43NANO766QA, UHD 4K, Procesador Inteligente α5 Gen5 AI Processor 4K, Smart TV, DVB-T2 (H.265), Azul Oscuro Ceniza','555','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_100944343');
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('televisores','TV LED 43" - LG 43UQ76906LE, UHD 4K, Procesador Inteligente α5 Gen5 AI Processor 4K, Smart TV, DVB-T2 (H.265), Blanco','449','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_100946230'),
	 ('televisores','TV LED 43" - Sony 43X73K, 4K HDR, Smart TV (AndroidTV) con YouTube, Netflix, HBO, Disney…, Bravia Engine, Dolby Atmos, Chromecast, Asistente de Google','566','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_100861564'),
	 ('televisores','TV LED 43" - LG 43UQ91006LA, UHD 4K, Procesador Inteligente α5 Gen5 AI Processor 4K, Smart TV, DVB-T2 (H.265), Azul Oscura Ceniza','529','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_100947281'),
	 ('televisores','TV LED 43" - Samsung UE43AU7175UXXC, UHD 4K, Crystal UHD, Smart TV, HDR10+, Tizen, Dolby Digital Plus, Titan Gray','350','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_99381415'),
	 ('televisores','TV LED 43" - Xiaomi TV P1E, UHD 4K, Smart TV, HDR10, Google Assistant, Dolby Audio™, DTS-HD®, Negro','322','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_97531422'),
	 ('televisores','TV LED 40" - TCL S6200, Full-HD, Quad Core, Smart TV, DVB-T2, Andorid TV, Dolby audio, Negro','229','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_98489506'),
	 ('televisores','TV LED 40''''  - INTV-40MA1300 INFINITON, Full-HD, Smart TV, DVB-T2 (H.265)Sí, Negro','240.8','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_93003401'),
	 ('televisores','TV QLED 43" - Samsung QE43Q60BAUXXC, QLED 4K, Procesador QLED 4K Lite, Smart TV, Negro','519','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_92123460'),
	 ('televisores','TV LED 43" - Samsung UE43BU8500KXXC, UHD 4K, Procesador Crystal 4K, Smart TV, Negro','499','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_100841898'),
	 ('televisores','TV LED 40"  - 40A4BG HISENSE, Full-HD, Quad Core/NT72671D, DVB-T2 (H.265)Sí, Negro','282','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_98495725');
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('televisores','TV LED 40" - OK OTV 40F-5022V, Full-HD, DVB-T2 (H.265), Media Player, Negro','189','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_98405257'),
	 ('televisores','TV QLED 43" - Hisense 43A7GQ, HDR UHD 4K, Smart TV, HDMI, Dolby Atmos, Dolby Vision, HDR10+, Gris oscuro','382','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_103268319'),
	 ('televisores','TV LED 43" - Haier K7 Series H43K702UG, Smart TV (Android TV 11), HDR 4K, Direct LED, Dolby Audio, Smart remote control, Dbx-tv®, Negro','349','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_103161176'),
	 ('televisores','TV LED 43" - Samsung UE43BU8000KXXC, UHD 4K, Procesador Crystal 4K, Smart TV, Negro','496','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_92337409'),
	 ('televisores','TV LED 43"  - 43P631 TCL, UHD 4K, DVB-T2 (H.265)Sí, Negro','274.8','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_99851637'),
	 ('televisores','TV LED 40"  - LED-402GOO GRUNKEL, Full-HD, Smart TV, DVB-T2 (H.265)Sí, Negro','229.9','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_98620021'),
	 ('televisores','TV LED 43"  - 43UA2063DGL TOSHIBA, UHD 4K, Quad Core, DVB-T2 (H.265)Sí, Negro','295.9','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_92470279'),
	 ('televisores','TV OLED 42" - LG OLED42LX3Q6LA FLEX, UHD 4K, α9 Gen5 AI Processor 4K, Smart TV, DVB-T2 (H.265), Negro + Instalación gratuita LG','2899','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_100031076'),
	 ('televisores','TV LED 40"  - INTV-40N520 INFINITON, Full-HD, DVB-T2 (H.265)Sí, Negro','187.92','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_99183126'),
	 ('televisores','TV LED 43" - TCL 43P635, LCD, 4K HDR TV, Google TV, Control por voz, Wifi, Dolby Audio, HDR10, Negro','329','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_101200638');
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('televisores','TV LED 43" - Xiaomi Mi TV P1, UHD 4K, Smart TV, HDR10+, Control por voz, Dolby Audio™ y DTS-HD, Negro','399','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_84028611'),
	 ('televisores','TV LED 43"  - UE43AU7172U SAMSUNG, UHD 4K, Procesor Crystal 4K, DVB-T2 (H.265)Sí, Gris','385.95','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_98513413'),
	 ('televisores','TV OLED 42" - Sony Master Series BRAVIA XR 42A90K, 4K HDR 120, HDMI 2.1 Perfecto para PS5, Smart TV (Google TV), Dolby Vision, Dolby Atmos','1506','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_100861585'),
	 ('televisores','TV LED 43"  - QE43Q60A SAMSUNG, UHD 4K, Quantum Processor 4K lite, DVB-T2 (H.265)Sí, Negro','480.58','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_98515179'),
	 ('televisores','TV LED 40"  - LED40-SC510K SCHNEIDER, Full-HD, DVB-T2 (H.265)Sí, Negro','236.2','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_98513618'),
	 ('televisores','TV QLED 43"  - QE43Q64BAUXXC SAMSUNG, UHD 4K, Procesador Quantum 4K Lite, DVB-T2 (H.265)Sí, Negro','731.1','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_98614114'),
	 ('televisores','Televisión  - Televisión Stream System 40" DLED Full HD BMS40F1 STREAM SYSTEM, Full-HD, DVB-T2 (H.265)Sí, Negro','225.75','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_88266730'),
	 ('televisores','TV LED 43"  - 43UP75006LF LG, UHD 4K, Negro','357.48','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_99068935'),
	 ('televisores','TV OLED 42" - LG Posé 42LX1Q6LA, UHD 4K, α9 Gen5 AI 4K, Smart TV, DVB-T2 (H.265), Textil Beige','1549','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_98403520'),
	 ('televisores','TV LED 43" - Sony 43X81K, 4K HDR, Smart TV (Google TV), Procesador X1, Dolby Vision, Dolby Atmos, Asistentes de voz (Assistente de Google, Alexa)','692','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_100861565');
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('televisores','TV Neo QLED 43" - Samsung TQ43QN90CATXXC, Neo QLED 4K, Neural Quantum Processor 4K, Smart TV, DVB-T2 (H.265), Carbón Silver','1699','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_102765987'),
	 ('televisores','TV LED 43" - Sony 43X85K, 4K para Gaming/Netflix/Youtube, Smart TV (Google TV), HDMI 2.1,  Dolby Vision, Atmos, Asistentes de voz, Triluminos Pro','850','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_100861567'),
	 ('televisores','TV NanoCell 43"  - 43NANO786QA LG, UHD 4K, Procesador Inteligente α5 Gen5 AI Processor 4K, DVB-T2 (H.265)Sí, Gris','493.56','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_98614857'),
	 ('televisores','TV LED 43"  - 43PUS7406 PHILIPS, UHD 4K, Negro','345.6','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_94381688'),
	 ('televisores','TV LED 43"  - 43PUS8007/12 PHILIPS, UHD 4K, Pixel Precise Ultra HD, DVB-T2 (H.265)Sí, Negro','430.92','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_99849449'),
	 ('televisores','TV LED 39"  - 39 GFF 6900B UZW000 GRUNDIG, Full-HD, Negro','307.5','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_94386440'),
	 ('televisores','TV LED 43"  - 43UP75003LF LG, UHD 4K, DVB-T2 (H.265)Sí, Negro','363.99','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_98615217'),
	 ('televisores','TV LED 42''''  - LED-42020T2 GRUNKEL, Full-HD, DVB-T2 (H.265)Sí, Negro','219.9','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_99473640'),
	 ('televisores','TV LED 43"  - 43UQ75003LF LG, UHD 4K, DVB-T2 (H.265)Sí, Negro','363.99','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_98622673'),
	 ('televisores','TV LED 43"  - 43UA3D63DG TOSHIBA, UHD 4K, Quad Core, DVB-T2 (H.265)Sí, Negro','289','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_98620901');
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('televisores','TV LED 43"  - 43UP77006LB LG, UHD 4K, Negro','450.29','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_94387155'),
	 ('televisores','TV LED 43"  - 43UQ70006LB LG, UHD 4K, Procesador Inteligente a5 Gen5 AI Processor 4K, DVB-T2 (H.265)Sí, Negro','419.04','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_98613837'),
	 ('televisores','TV LED 43"  - UE43AU7105KXXC SAMSUNG, UHD 4K, Titan Gray','416.95','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_94621800'),
	 ('televisores','TV LED 40"  - 40S5203 TCL, HD+, Negro','233.95','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_99921979'),
	 ('televisores','TV LED 40"  - LE4060T2 ENGEL, Full-HD, DVB-T2 (H.265)Sí, Negro','276.3','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_93428842'),
	 ('televisores','Televisor  - Hitachi 39HE2200 Televisor Smart TV 39'''' HD HDR HITACHI, HD, DVB-T2 (H.265)Sí, Negro','281.88','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_88349434'),
	 ('televisores','TV LED 43"  - LE4390ATV ENGEL, UHD 4K, DVB-T2 (H.265)Sí, Negro','303.48','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_98619808'),
	 ('televisores','TV LED 43"  - QE43LS03BAUXXC SAMSUNG, UHD 4K, Quantum Processor 4K, DVB-T2 (H.265)Sí, Negro','708.48','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_98830424'),
	 ('televisores','TV QLED 43" - Samsung The Serif QE43LS01BAUXXC, UHD 4K,  Procesador QLED 4K, Smart TV, HDR+, Blanco','781','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_95828257'),
	 ('televisores','TV LED 43"  - Mi LED TV 4S XIAOMI, UHD 4K, Quad Core (hasta 1.5GHz), DVB-T2 (H.265)Sí, Negro','432','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_94387253');
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('televisores','TV LED 43"  - 43PUS8887/12 PHILIPS, UHD 4K, Philips P5, DVB-T2 (H.265)Sí, Gris','654.48','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_99849804'),
	 ('televisores','TV QLED 43"  - 43C639 TCL, UHD 4K, Plata','523.78','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_98614166'),
	 ('televisores','TV QLED 43" - Samsung The Serif QE43LS01BBUXXC, UHD 4K, Procesador QLED 4K, Smart TV, Azul','812','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_93094596'),
	 ('televisores','Smart TV  - Android 43 EVVO, UHD 4K, Smart TV, DVB-T2 (H.265)Sí, Negro','289.9','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_87634498'),
	 ('televisores','TV LCD 43"  - QE43Q60BAUXXH SAMSUNG, UHD 4K, Quantum Processor Lite 4K, DVB-T2 (H.265)Sí, Negro','503.99','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_98612346'),
	 ('televisores','Televisor  - Engel 42LE4290ATV Televisor Smart TV 32'''' Full HD ENGEL, Full-HD, DVB-T2 (H.265)Sí, Negro','286','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_88349324'),
	 ('televisores','TV LED 43"  - 43P615 TCL, 43 ", UHD 4K, 5 ms, 2xHDMI, 1x USB, x1 ethrnet, Negro','314.28','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_88335670'),
	 ('televisores','TV LED 43"  - KD43X85J SONY, UHD 4K, Negro','799.2','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_94381003'),
	 ('televisores','TV LED 40" - INFINITON, Full-HD, Smart TV, DVB-T2, Negro','238.68','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_99197121'),
	 ('televisores','TV LED 43"  - 43PUS8807/12 PHILIPS, UHD 4K, Philips P5, DVB-T2 (H.265)Sí, Plata','984.56','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_98622782');
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('televisores','TV LED 43"  - L43M7-FVEU XIAOMI, UHD 4K, Negro','419','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_98615316'),
	 ('televisores','TV LED 43"  - 43PUS8507/12 PHILIPS, UHD 4K, Philips P5, DVB-T2 (H.265)Sí, Plata','541.94','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_99849725'),
	 ('televisores','TV QLED 43"  - 43E7HQ HISENSE, UHD 4K, DVB-T2 (H.265)Sí, Negro','571.31','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_98614061'),
	 ('televisores','TV LED 43"  - 43GFU7900W GRUNDIG, UHD 4K, DVB-T2 (H.265)Sí, Blanco','316.95','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_98622953'),
	 ('televisores','TV LED 43"  - UE43TU7025 SAMSUNG, UHD 4K, Procesador Crystal UHD, DVB-T2 (H.265)Sí, Negro','430.71','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_88335808'),
	 ('televisores','TV LED 43"  - 43NANO766QA LG, UHD 4K, DVB-T2 (H.265)Sí, Gris','499','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_98620788'),
	 ('televisores','TV LED 40"  - TX-40JX800EZ PANASONIC, UHD 4K, Negro','832.85','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_98624384'),
	 ('televisores','TV NanoCell 43"  - 43NANO763QA LG, UHD 4K, DVB-T2 (H.265)Sí, Negro','560.54','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_98620080'),
	 ('televisores','TV LED 43"  - 43PUS8057/12 PHILIPS, UHD 4K, Quad Core - Pixel Precise Ultra HD, DVB-T2 (H.265)Sí, Plata','587.99','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_98613748'),
	 ('televisores','TV LED 43"  - UE43AU8005K SAMSUNG, UHD 4K, Negro','495.1','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_94387112');
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('televisores','TV LED 43"  - K43DLG12US TD SYSTEMS, UHD 4K, Arm Cortex A55x4, DVB-T2 (H.265)Sí, Negro','425.74','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_92691778'),
	 ('televisores','TV LED 40"  - LE4063E ENGEL, Full-HD, DVB-T2 (H.265)Sí, Negro','206.4','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_98623257'),
	 ('televisores','TV LED 39.5"  - NVR-8072-40FH2S-SMAB NEVIR, HD-ready, Blanco','236.52','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_98513629'),
	 ('televisores','TV LED 43"  - 43HAK5350 HITACHI, UHD 4K, QUAD CORE, DVB-T2 (H.265)Sí, Negro','319.68','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_98513625'),
	 ('televisores','TV LED 40"  - NI-40FA5001N NILAIT, Full-HD, DVB-T2 (H.265)Sí, Negro','245.99','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_98619534'),
	 ('televisores','TV LED 43"  - 43UP76706LB LG, UHD 4K, Procesador de Imagen 4k Quad Core, DVB-T2 (H.265)Sí, Negro','591.96','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_88467903'),
	 ('consolas','Consola - Sony PlayStation 5 Standard, 825 GB, 4K, 1 mando, Chasis C, Blanco','549.99','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_102608400'),
	 ('consolas','Consola - Sony PlayStation 5 Standard (2 Mandos DualSense™ incluidos), 825 GB, 4K HD, Negro y Blanco','609','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_102611624'),
	 ('consolas','Consola - Sony PS5 Digital Edition C Chassis, 825 GB, 4K, Blanco y Negro','449.99','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_102608355'),
	 ('consolas','Consola - Sony PS5 Digital, 825 GB, 4K UHD, Blanco + Juego God of War Ragnarok (código descarga)','523.99','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_100810151');
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('consolas','Consola - Microsoft Xbox Series X + Juego Forza Horizon 5 Premium Eldition, 1 TB SSD, Negro','548','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_101913427'),
	 ('consolas','Consola - Sony PS5 Stand, 825 GB, 4K UHD Blu ray, Blanco + Juego God Of War: Ragnarok (código descarga)','620','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_100810149'),
	 ('consolas','Consola - Nintendo Switch OLED, 7", Joy-Con, 64 GB, Blanco','349','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_85591077'),
	 ('consolas','Consola - Sony PS4 Slim, 500 GB, Negro + Call Of Duty Modern Warfare II (código descarga)','327','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_102202510'),
	 ('consolas','Consola - Sony PS5 Stand C, 825GB, 4K, Blanco + Juego God Of War: Ragnarok (código descarga) + Juego The Last Of Us: Parte 1 + Tarjeta 20€ PS Store','699','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_100410925'),
	 ('consolas','Consola - Microsoft Xbox Series S, 512 GB SSD, Blanco','280','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_89726540'),
	 ('consolas','Consola - Microsoft Xbox Series S 512 GB Gilded Hunter Bundle + Fornite, Rocket  League, Fall Guys, Blanco','280','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_100289560'),
	 ('consolas','Consola - Nintendo Switch con mandos Joy-Con Rojos, Super Mario Odyssey en código descargable y hoja de pegatinas, Ed. Limitada, 32 GB, Negro','329','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_103330284'),
	 ('consolas','Consola - Sony PlayStation 5 Standard, 825 GB, 4K, 1 mando, Chasis C, Blanco','549.99','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_102608400'),
	 ('consolas','Consola - Sony PlayStation 5 Standard (2 Mandos DualSense™ incluidos), 825 GB, 4K HD, Negro y Blanco','609','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_102611624');
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('consolas','Consola - Sony PS5 Digital Edition C Chassis, 825 GB, 4K, Blanco y Negro','449.99','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_102608355'),
	 ('consolas','Consola - Sony PS5 Digital, 825 GB, 4K UHD, Blanco + Juego God of War Ragnarok (código descarga)','523.99','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_100810151'),
	 ('consolas','Consola - Microsoft Xbox Series X + Juego Forza Horizon 5 Premium Eldition, 1 TB SSD, Negro','548','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_101913427'),
	 ('consolas','Consola - Sony PS5 Stand, 825 GB, 4K UHD Blu ray, Blanco + Juego God Of War: Ragnarok (código descarga)','620','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_100810149'),
	 ('consolas','Consola - Nintendo Switch OLED, 7", Joy-Con, 64 GB, Blanco','349','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_85591077'),
	 ('consolas','Consola - Sony PS4 Slim, 500 GB, Negro + Call Of Duty Modern Warfare II (código descarga)','327','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_102202510'),
	 ('consolas','Consola - Sony PS5 Stand C, 825GB, 4K, Blanco + Juego God Of War: Ragnarok (código descarga) + Juego The Last Of Us: Parte 1 + Tarjeta 20€ PS Store','699','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_100410925'),
	 ('consolas','Consola - Microsoft Xbox Series S, 512 GB SSD, Blanco','280','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_89726540'),
	 ('consolas','Consola - Microsoft Xbox Series S 512 GB Gilded Hunter Bundle + Fornite, Rocket  League, Fall Guys, Blanco','280','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_100289560'),
	 ('consolas','Consola - Nintendo Switch con mandos Joy-Con Rojos, Super Mario Odyssey en código descargable y hoja de pegatinas, Ed. Limitada, 32 GB, Negro','329','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_103330284');
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('ordenadores','PC sobremesa - HP M01-F2050ns, Intel® Core™ i5-12400 , 16GB RAM, 512GB SSD, UHD 730, W11 Home, Negro','729','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_99401778'),
	 ('ordenadores','All in One - HP 27-cb0006ns, 27" FHD, AMD Ryzen™ 3 5300U, 8GB RAM, 512GB SSD, AMD Radeon™, W11H','679','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_91802431'),
	 ('ordenadores','All in one - HP  24-cb0024ns, 23.8" Full HD, AMD Ryzen™ 5 5500U, 16GB RAM, 512GB SSD, AMD Radeon™, W11 Home, Blanco','799','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_96186389'),
	 ('ordenadores','PC sobremesa - HP M01-F2003ns Mini Torre, Intel® Core™ i3-10105, 8GB RAM, 512GB SSD, UHD, Sin sistema operativo, Negro','479','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_98945686'),
	 ('ordenadores','All in one - HP 24-CB1007NS, 23.8" Full HD, Intel® Core™ i5-1235U, 16GB RAM, 512GB SSD, Iris® Xᵉ, W11 H, Blanco','899','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_99077695'),
	 ('ordenadores','PC sobremesa - Acer XC-1760, Intel® Core™ i5-12400, 8GB RAM, 512GB SSD, Intel® UHD Graphics 730, Windows 11 Home, Negro','599','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_99019342'),
	 ('ordenadores','PC sobremesa - Lenovo IdeaCentre 5 14ACN6, AMD Ryzen™ 5 5600G, 8GB RAM, 512GB SSD, Radeon™ Graphics, Windows 11 Home','579','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_96379965'),
	 ('ordenadores','All in one - Acer C24-1700, 23.8" Full HD, Intel® Core™ i3-1215U, 8 GB RAM, 512 GB SSD,  , Iris® X e Graphics, Windows 11 Home, Negro','649','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_99431414'),
	 ('ordenadores','All in one - Lenovo IdeaCentre AIO 3 24ITL6, 23.8" Full HD, Intel® Core™ i3-1115G4, 8 GB RAM, 512 GB SSD, UHD Graphics, Sin sistema operativo','529','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_102213549'),
	 ('ordenadores','PC sobremesa - Lenovo IdeaCentre 5 14IAB7, Intel® Core™ i5-12400, 16GB RAM, 512GB SSD, UHD Graphics 730, Sin sistema operativo','529','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_98358265');
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('ordenadores','All in one - Lenovo IdeaCentre AIO 3 24ALC6, 23.8" Full HD, AMD Ryzen™ 5 5500U, 16GB RAM, 512GB SSD, Sin sistema operativo','629','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_95407108'),
	 ('ordenadores','PC sobremesa - ASUS U500MA-75700G007W, Ryzen™ 7 5700G, 16GB RAM, 512GB SSD, Radeon Graphics, Windows 11 Home, Negro','699','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_99429135'),
	 ('ordenadores','All in one - Lenovo IdeaCentre AIO 3 27ITL6, 27" Full HD, Intel® Core™ i7-1165G7, 16 GB RAM, 512 GB SSD, Iris® Xe Graphics, Sin sistema operativo','899','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_102213557'),
	 ('ordenadores','All in one - ASUS M3700WYAK-WA061W, 27" Full HD, AMD Ryzen™ 5 5625U, 16GB RAM, 512GB SSD, Radeon™ Graphics,  Windows 11 Home','899','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_99129496'),
	 ('ordenadores','PC gaming - HP TG01-2066NS, AMD Ryzen™ 5 5600G, 16GB, 512GB SDD y 1TB HDD, GeForce RTX™ 3060, Sin sistema operativo, Negro','999','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_91942252'),
	 ('ordenadores','PC Sobremesa  - 6D551EA HP, J4025, 8 GB, 256 GB, Intel® UHD, Windows 11 Home, Negro','361.51','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_93326404'),
	 ('ordenadores','PC gaming - HP Victus 15L TG02-0049ns, Intel® Core™ i5-12400F, 16GB RAM, 512GB SSD + 1TB HDD, RTX™ 3060, Sin sistema operativo, Plata','1149','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_95565254'),
	 ('ordenadores','PC sobremesa - HP M01-F2005NS, Intel® Core™ i3-10105, 8GB RAM, 512GB SSD, Intel® UHD 630, W11, Negro','569','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_92420684'),
	 ('ordenadores','PC sobremesa - Lenovo IdeaCentre 5 14IAB7, Intel® Core™ i5-12400, 16GB RAM, 512GB SSD, UHD Graphics 730, Windows 11 Home','699','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_98402482'),
	 ('ordenadores','PC sobremesa  - EE81935 ZONE EVIL, Intel Core i5-10400 10ª Generación, 8 GB, 480 GB, Intel® UHD, FreeDOS, Negro','358.4','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_99893336');
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('ordenadores','PC sobremesa  - OR1639214 DIFFERO, Intel Core i3 de 10ma Generación, 8 GB, 240 GB, X, FreeDOS, Negro','316.27','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_99128402'),
	 ('ordenadores','PC sobremesa - Lenovo IdeaCentre 5 14ACN6, AMD Ryzen™ 5 5600G, 16GB RAM, 512GB SSD, AMD Radeon™ Graphics, Sin sistema operativo','549','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_94108993'),
	 ('ordenadores','PC-Desktop  - SoHo56 EPICAL-Q , Intel Core i5 10400, 8 GB, 480 GB, Intel UHD 630, Sin sistema operativo, Negro','469.9','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_94307901'),
	 ('ordenadores','PC Gaming  - Pack Bronze Plus NITROPC, AMD Ryzen 5 4650G (6 núcleos, 12 hilos | de 3,70 GHz hasta 4,2 GHz), 16 GB, 480 GB, 1 TB, AMD Radeon RX Vega 6, Windows 11 Home, Negro','978.71','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_99922126'),
	 ('ordenadores','PC sobremesa - Acer Aspire XC-840, Intel® Celeron® N4505, 8GB RAM, 256GB SSD, UHD Graphics, Windows Home 11','399','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_93587670'),
	 ('ordenadores','PC gaming - HP Victus TG02-0014NS, AMD Ryzen™ 5 5600G, 8GB RAM, 512GB SSD, GeForce® GTX 1650, Sin sistema operativo, Plata','699','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_95267389'),
	 ('ordenadores','PC gaming - MSI MAG Infinite S3 11SI-214XES, Intel® Core™ i7-11700F, 16GB RAM, 1TB SSD, GTX1660 SUPER, Sin sistema operativo','999','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_93587490'),
	 ('ordenadores','PC gaming - Acer Nitro N50-640, Intel® Core™ i5-12400F, 16GB RAM, 512GB SSD+ 1TB HDD, GeForce® GTX 1660 SUPER™, Sin sistema operativo','859','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_94178400'),
	 ('ordenadores','PC Sobremesa  - S2690G ACER, i7-12700, 16 GB, 512 GB, Intel UHD Graphics 770, Windows 11 Pro, Negro','966','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_99702604'),
	 ('ordenadores','PC-Desktop  - SoHo32 EPICAL-Q , Intel Core i3 10100, 8 GB, 480 GB, Intel UHD 630, Sin sistema operativo, Negro','439','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_94307901');
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('ordenadores','PC sobremesa - ASUS S500MC-511400068W, Intel® Core™ i5-11400, 16GB RAM, 512GB SSD, Intel®UHD Graphics 730, Windows 11 Home, Negro','599','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_97441080'),
	 ('ordenadores','All in one - Lenovo IdeaCentre AIO 3 27ITL6, 27" Full HD, Intel® Core™ i7-1165G7, 16GB RAM, 512GB SSD, Iris® Xe Graphics, W11H, Blanco','999','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_103489254'),
	 ('ordenadores','PC Gaming  - Avanzado Silver NITROPC, Intel Core i5-11400 (6 núcleos, 12 hilos | de 2,60GHz hasta 4,40 GHz (turbo)), 16 GB, 240 GB, 1 TB, NVIDIA GeForce GTX 1650 4GB GDDR6, Windows 11 Home, Blanco','1013.19','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_99228768'),
	 ('ordenadores','All in one - HP 24-cb1005ns, 23.8" Full HD, Intel® Core™ i3-1215U, 8GB RAM, 512GB SSD, W11 H, Blanco','749','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_99688896'),
	 ('ordenadores','All in one - Lenovo IdeaCentre AIO 3 24ITL6, 23.8" Full HD, Intel® Core™ i5-1135G7, 8GB RAM, 512GB SSD, Windows 11 Home','629','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_95295838'),
	 ('ordenadores','PC sobremesa - HP Pavilion TP01-1025ns, Intel® Core™ i5-10400, 16GB RAM, 512GB SSD, Intel® UHD 630, W11 H, Plata','729','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_90195520'),
	 ('ordenadores','PC gaming - HP Victus 15L TG02-0015NS, AMD Ryzen™ 5 5600G, 16GB RAM, 512GB SSD, GeForce® GTX 1650, Sin sistema operativo, Plata','749','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_95207742'),
	 ('ordenadores','PC gaming - MSI MPG Infinite X2 13FTD-015ES, Intel® Core™ i7-13700KF, 32GB RAM, 1TB SSD, MSI GeForce® RTX 3070, Windows 11 Home, Negro','2208','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_100483268'),
	 ('ordenadores','PC gaming - Acer Nitro N50-640, Intel® Core™ i5-12400F, 8GB RAM, 1TB SSD, GeForce® GTX 1650, W11H','949','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_91712302'),
	 ('ordenadores','All in one - Acer Aspire C24-420, 23.8" Full HD, AMD Athlon™ Gold 3150U, 8GB RAM, 256GB SSD, AMD Radeon™ Graphics, Sin sistema operativo, Negro','449','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_100290380');
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('ordenadores','PC Gaming  - Avanzado Gold Plus NITROPC, AMD Ryzen 5 5500 (6 núcleos, 12 hilos | de 3,60 GHz hasta 4,20 GHz (turbo)), 16 GB, 480 GB, 2 TB, NVIDIA GeForce GTX 1660 SUPER 6GB GDDR6, Windows 11 Home, Negro','1301.86','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_99922127'),
	 ('ordenadores','PC Gaming  - Avanzado Nitro NITROPC, Intel Core i5-12400 (6 núcleos, 12 hilos | de 2,50GHz hasta 4,60 GHz (turbo)), 16 GB, 512 GB, 1 TB, NVIDIA GeForce RTX 3050 8GB GDDR6, Windows 11 Home, Blanco','1489.16','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_94856363'),
	 ('ordenadores','PC gaming - Acer N50-640, Intel® Core™ i5-12400F, 16GB RAM, 1TB SSD, NVIDIA® GeForce® RTX™ 3050, Windows 11 Home, Negro','1099','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_99019337'),
	 ('ordenadores','APPLE iMac (2021), 24" Retina 4.5K, Chip M1 de Apple, 8 GB RAM, 256 GB SSD, macOS Big Sur, Teclado Magic Keyboard, Plata','1570','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_83504856'),
	 ('ordenadores','PC Gaming  - Avanzado Bronze NITROPC, AMD Ryzen 5 4650G (6 núcleos, 12 hilos | de 3,70 GHz hasta 4,2 GHz), 16 GB, 240 GB, 1 TB, AMD Radeon RX Vega 6, Windows 11 Home, Blanco','750.57','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_99440394'),
	 ('ordenadores','PC gaming - HP Victus TG02-0145ns, Intel® Core™ i5-12400F, 16GB RAM, 512GB SSD, RTX™ 3050, Windows 11 Home, Plata','999','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_99670678'),
	 ('ordenadores','Ordenador de sobremesa  - MN3-G166T-I593HW-M-R28-E MILLENIUM, Procesador Intel Core i5 9300H, 16 GB, 500 GB, Nvidia geForce GTX 166O Ti 6GB, Windows 10 Home, Negro','2305','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_89896735'),
	 ('ordenadores','All in one - Acer Aspire C24-1650 DQ.BFSEB.00H, 23.8" FHD, Intel® Core™ i5-1135G7, 16GB RAM, 512GB SSD, Iris® Xe, Sin sistema operativo','799','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_93093891'),
	 ('ordenadores','PC gaming - Acer Aspire TC-1760, Intel® Core™ i5-12400F, 16GB RAM, 512GB SSD, NVIDIA® GeForce® GTX 1650,Sin sistema operativo, Negro','699','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_100283479'),
	 ('ordenadores','PC gaming - Lenovo Legion T5 26IAB7, Intel® Core™ i7-12700F, 16GB RAM, 512GB SSD, GeForce RTX™ 3060 Ti, Sin sistema operativo','1379','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_98363748');
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('ordenadores','PC gaming - Lenovo IdeaCentre Gaming 5 17IAB7, Intel® Core™ i7-12700F, 16GB RAM, 512GB SSD, GeForce GTX 1660 SUPER, Sin Sistema Operativo','1079','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_99398538'),
	 ('ordenadores','PC gaming - Lenovo IdeaCentre Gaming 5 17IAB7, Intel® Core™ i5-12400F, 16GB RAM, 512GB SSD, GeForce RTX™ 3050, Windows 11 Home','1199','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_102292426'),
	 ('ordenadores','PC gaming - MSI MAG META 5 5EDQ, AMD Ryzen 7 5800X, 16GB, 1TB SSD + 2TB HDD, Radeon™ RX 6600 XT, Sin sistema operativo, Black','1499','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_97300278'),
	 ('ordenadores','All in one - Acer Aspire C24-1650 DQ.BFSEB.00G, 23.8" FHD, Intel® Core™ i5-1135G7, 8GB RAM, 512GB SSD, Iris® Xe, Sin sistema operativo','599','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_93093875'),
	 ('ordenadores','PC gaming - MSI MAG Codex X5 12TE-1007IB, Intel® Core™ i7-12700KF, 32GB RAM, 2TB SSD, RTX3070 Ti VENTUS 3X 8G OC, W11','2599','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_94619500'),
	 ('ordenadores','All in one - Acer C24-420, 23.8" Full HD, AMD Ryzen™3 3250U, 8GB RAM, 256GB SSD, AMD Radeon™ Graphics, Sin sistema operativo, Negro','529','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_100125243'),
	 ('ordenadores','PC gaming - MSI MEG Trident X 12VTE-045IB, Intel®Core™ i7-12700KF, 32GB, 2TB SSD, GeForce® RTX 3080, W11 Home','2649','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_96102948'),
	 ('ordenadores','All in one - Acer C24-420, 23.8" Full HD, AMD Ryzen™ 3 3250U, 16GB RAM, 512GB SSD, AMD Radeon™ Graphics, Sin sistema operativo, Negro','589','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_100415203'),
	 ('ordenadores','All in one - Acer Aspire C24-1700, 23.8" Full HD, Intel® Core™ i5-1235U, 16GB RAM, 512GB SSD, Iris® Xe Graphics, Sin sistema operativo, Black','749','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_96925192'),
	 ('ordenadores','All in one - Acer Aspire C24-1700, 23.8" Full HD, Intel® Core™ i5-1235U, 8GB RAM, 512GB SSD, Iris® Xe Graphics, Sin sistema operativo, Black','729','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_96925290');
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('ordenadores','All in one - HP 24-df1027ns, 23.8 " Full HD, Intel® Core™ i5-1135G7, 8GB RAM, 512GB SSD, Iris® Xe Graphics, Windows 11 Home, Blanco','799','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_93487639'),
	 ('ordenadores','PC gaming - Acer Aspire TC-1760 DG.E31EB.005, Intel® Core™ i5-12400F, 8GB RAM, 512GB SSD, GTX 1650, Sin sistema operativo','649','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_93412216'),
	 ('ordenadores','PC gaming - MSI MAG Codex X5 12TE-1008IB, Intel® Core™ i7-12700KF, 32GB RAM, 1TB SSD, GeForce® RTX 3070 Ti, W11 Home','2349','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_96102937'),
	 ('ordenadores','All in one - Acer Aspire C24-1700, 23.8" Full HD, Intel® Core™ i3 1215U, 8GB RAM, 512GB SSD, Iris® Xe Graphics, Sin sistema operativo, Black','619','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_96925288'),
	 ('ordenadores','All in One PC  - Pavilion 27-ca0019ns HP, 68,6 ", Full-HD, AMD Ryzen 7-5700U, 16 GB, 1000 GB, NVIDIA GeForce RTX 3050, Windows 11, Blanco','1205.2','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_101864765'),
	 ('ordenadores','PC Sobremesa  - GoldTech Arizone, Intel Core i5 11400 6 Cores x 2,6 GHz up to 4.4Ghz Turbo, 32 GB, 2 TB, Gráficos UHD Intel® 730 4K, Windows 11 Pro, Blanco / Negro','1199','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_101876631'),
	 ('ordenadores','PC Sobremesa  - Elite Arizone, Intel Core i7 11700 8 Cores up to 4.9Ghz Turbo, 32 GB, 2 TB, Gráficos UHD Intel® 730 4K, Windows 11 Pro, Blanco / Negro','1299','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_101876631'),
	 ('ordenadores','PC Gaming  - Ryzen 9 5900X PC RACING, Ryzen 9 5900X, 32 GB, 1 TB, 1 TB, GeForce RTX 3060  12GB GDDR6, WINDOWS 11 HOME, NEGRO','1880.36','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_102429382'),
	 ('ordenadores','PC Gaming  - Ryzen 5 5600G PC RACING, Ryzen 5 5600G, 16 GB, 1 TB, Nvidia GeForce RTX 3050 8 GB NVIDIA GDDR6, WINDOWS 11 HOME, NEGRO','1098.99','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_102429382'),
	 ('ordenadores','PC gaming - MSI MAG Codex X5 12TE-1273ES, Intel® Core™ i7-12700KF, 32GB RAM, 2TB SSD, GeForce® RTX 3080, W11 Home','2649','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_96103096');
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('ordenadores','PC Gaming  - Avanzado Nitro Plus NITROPC, Intel Core i5-12400 (6 núcleos, 12 hilos | de 2,50GHz hasta 4,60 GHz (turbo)), 16 GB, 1 TB, 2 TB, NVIDIA GeForce RTX 3050 8GB GDDR6, Windows 11 Home, Negro','1627.16','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_101141828'),
	 ('ordenadores','PC Gaming  - Extremo Bronze NITROPC, AMD Ryzen 5 5700X (8 núcleos, 16 hilos | de 3,40 GHz hasta 4,60 GHz (turbo)), 16 GB, 512 GB, 1 TB, NVIDIA GeForce RTX 3050 8GB GDDR6, Windows 11 Home, Negro','1647.09','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_95002071'),
	 ('ordenadores','PC Gaming  - Extremo Bronze Plus NITROPC, AMD Ryzen 5 5700X (8 núcleos, 16 hilos | de 3,40 GHz hasta 4,60 GHz (turbo)), 16 GB, 512 GB, 2 TB, NVIDIA GeForce RTX 3050 8GB GDDR6, Windows 11 Home, Negro','1771.09','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_95002066'),
	 ('ordenadores','PC Gaming  - Avanzado Gold NITROPC, AMD Ryzen 5 5500 (6 núcleos, 12 hilos | de 3,60 GHz hasta 4,20 GHz (turbo)), 16 GB, 480 GB, 1 TB, NVIDIA GeForce GTX 1660 SUPER 6GB GDDR6, Windows 11 Home, Blanco','1139.07','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_94856363'),
	 ('ordenadores','PC Gaming  - Avanzado Silver Plus NITROPC, Intel Core i5-11400 (6 núcleos, 12 hilos | de 2,60GHz hasta 4,40 GHz (turbo)), 16 GB, 480 GB, 1 TB, NVIDIA GeForce GTX 1650 4GB GDDR6, Windows 11 Home, Negro','1115.96','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_99800447'),
	 ('ordenadores','PC gaming - Acer Predator Orion 3000 PO3-640, Intel® Core™ i7-12700F, 16GB RAM, 1TB SSD, RTX3060, W11','1499','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_96591440'),
	 ('ordenadores','PC gaming - Lenovo IdeaCentre Gaming 5 17IAB7, Intel® Core™ i5-12400F, 16GB RAM, 1TB SSD, GeForce® RTX 3060, Windows 11 Home, Raven Black','1249','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_98518560'),
	 ('ordenadores','PC Sobremesa - HP S01-aF0040ns Mini Torre, AMD Athlon™ 3050U, 8GB RAM, 256GB SSD, Gráficos AMD Radeon™, W11 Home, Negro','399','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_90666764'),
	 ('ordenadores','All in one - Acer Aspire C24-1650 DQ.BFTEB.00F, 23.8" FHD, Intel® Core™ i3-1115G4, 8GB RAM, 512GB SSD, UHD, Sin sistema operativo','499','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_93093863'),
	 ('ordenadores','PC sobremesa - Lenovo IdeaCentre 5 14IAB7, Intel® Core™ i5-12400, 8GB RAM, 512GB SSD, UHD Graphics 730, Sin sistema operativo','549','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_98358243');
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('ordenadores','PC sobremesa  - DMRP2 DELL, i7-12700, 16 GB, 1 TB, Intel B660, Windows 10 Pro, Negro','1028.1','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_98862256'),
	 ('ordenadores','PC Sobremesa  - Rematch MEGAMANIA, Intel® Core™ i7-11700 8 Cores up to hasta 4,90 GHz Turbo, 64 GB, 1 TB, Gráficos UHD Intel® 750 4K, Windows 11 Pro, Negro','1269','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_103717576'),
	 ('ordenadores','PC Sobremesa  - Baltic MEGAMANIA, Intel Core i9-10900 de 8 núcleos  frecuencia turbo de 5.2 Ghz, 32 GB, 1 TB, Gráficos UHD Intel® 650 4K, Windows 11 Pro, Negro','1699','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_102891754'),
	 ('ordenadores','PC gaming - Lenovo IdeaCentre Gaming 5 17IAB7, Intel® Core™ i5-12400F, 16GB RAM, 512GB SSD, GeForce GTX 1650 SUPER, Sin sistema operativo','732','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_98490997'),
	 ('ebooks','eReader - Amazon Kindle Paperwhite 2021, 6.8", 300 ppp, 8GB, Wi-Fi, Impermeable, Con publicidad, Negro','139','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_89103746'),
	 ('ebooks','eReader - Kobo Nia, 6", 8 GB, Para eBook, 212ppp, ComfortLight, Negro','109.99','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_83456350'),
	 ('ebooks','eReader - Amazon Kindle, Para eBook, 6", Doble de almacenamiento, 16 GB, 300 ppp, E-Ink, Negro','109','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_98854425'),
	 ('ebooks','eReader - Kobo Libra 2, 7’’ HD, eBook y AudioBook, 32 GB, Resistente al agua, Negro','199','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_87780246'),
	 ('ebooks','eReader - Kobo Clara 2E, Para eBook, 6 ", 16 GB, 300 ppp, 1448 x 1072, E-Ink, Azul Océano Profundo','150','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_97795335'),
	 ('ebooks','eReader - Amazon Kindle, Para eBook, 6", Doble de almacenamiento, 16 GB, 300 ppp, E-Ink, Azul vaquero','109','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_98854431');
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('ebooks','eReader - Kobo Libra 2, 7’’ HD, eBook y AudioBook, 32 GB, Resistente al agua, Blanco','199','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_87780252'),
	 ('ebooks','E-book  - PB970-M-WWW POCKETBOOK, 9,7 ", 8 GB, 1200 x 825, E Ink Carta, Gris','223','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_98925384'),
	 ('ebooks','E-book  - PB632-K-WW POCKETBOOK, 6 ", 16 GB, 1072 x 1448, E Ink Carta Resolución 1072 × 1448, Negro','166.85','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_98936152'),
	 ('ebooks','E-book  - EBO-635L DENVER, 6 ", 4 GB, 1024 x 758, LED, Negro','99.05','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_98981070'),
	 ('ebooks','Terminal de recopilación de datos - resistente  - CT60-L0N-ASC210E HONEYWELL, 4,7 ", 32 GB, HD (1280x720), LCD, Negro','2262.8','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_98981147'),
	 ('ebooks','Dickens Light 2 Libro Electrónico Pantalla 6" Retroiluminada Con Teclas Frontales 8Gb  - SPC Dickens Light 2 Libro Electrónico Pantalla 6" Retroiluminada Con Teclas Frontales 8Gb SPC, 6 ", 8 GB, 1024x758 píxeles, E-Ink, Negro','103.99','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_89262316'),
	 ('ebooks','eReader  - Clara HD KOBO, 6 ", 8 GB, 1440 x 1072, Negro','214.27','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_95687244'),
	 ('ebooks','E-book  - PB617-D-WW POCKETBOOK, 6 ", 8 GB, 212 ppp, E Ink Carta'', Blanco','115.4','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_98981077'),
	 ('ebooks','E-book  - PB628-P POCKETBOOK, 6 ", 8 GB, 1024x758px, Tinta electrónica, Rojo','131','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_96928144'),
	 ('ebooks','eReader - SPC Dickens Light Pro, 6" 1024x758, 8 GB, 1500 mAh, Escala de grises, Negro + Funda','119','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_88746852');
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('ebooks','eReader  - PB741-N-WW POCKETBOOK, 7,8 ", 16 GB, 1404 x 1872, Plata','304.8','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_95687155'),
	 ('ebooks','E-book  - PB617-P-WW POCKETBOOK, 6 ", 8 GB, 212 ppp, E Ink Carta™, Negro','109','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_98981183'),
	 ('ebooks','eReader - Kobo Sage, Para eBook, 8P, HD, 32GB, Bluetooth,Comfort Light PRO, Negro','299','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_87780276'),
	 ('ebooks','Libro electrónico  - EB26-046 WOXTER, 6 ", 4 GB, 1024x758, Negro','95.57','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_94050385'),
	 ('ebooks','E-book  - PB700-U-16-WW Era POCKETBOOK, 7 ", 16 GB, 1264 × 1680px, E Ink Carta™ 1200, Negro','202.03','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_97563741'),
	 ('ebooks','eReader  - Touch Lux 5 6'''' 8GB Negro POCKETBOOK, 6 ", 8 GB, 758 x 1024, Negro','131','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_95687257'),
	 ('ebooks','Funda eReader - SILVER HT, EBOOK 6", Universal, Wave, Rojo','12.99','https://assets.mmsrg.com/isr/166325/c1/-/pixelboxx-mss-82232836'),
	 ('ebooks','eReader - Amazon Kindle Scribe, Para eBook, 10.2", 16 GB, 300 ppp, Wifi, Lápiz básico, Gris tungsteno','369','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_98854386'),
	 ('ebooks','eReader - Kobo Elipsa, 10.3" 1872 x 1404, 32 GB, Para eBook, e-Ink Carta, Negro + Funda + Stylus Pen','399','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_84525787'),
	 ('ebooks','E-book  - PB633-N-VVO POCKETBOOK, 6 ", 16 GB, HD, Tinta electrónica, Plata','174.25','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_96928163');
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('ebooks','Funda Ebook  - WPUC616-SBK POCKETBOOK, 6 ", 0 GB, 1024x758px, Negro','12.58','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_92681583'),
	 ('ebooks','Ebook  - Denver EBO-625 Lector de Libros electrónicos de 6 " Panel A-Grade Carta. DENVER, Negro, 6 ", 1 GB, Qualcom, Android','140.93','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_88911220'),
	 ('ebooks','eReader  - Touch HD 3 POCKETBOOK, 6 ", 16 GB, 1072 x 1448, Gris','168','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_92610251'),
	 ('ebooks','eReader  - M2L4EK AMAZON, 6,8 ", 32 GB, 300 ppp, Negro','233.65','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_94956761'),
	 ('ebooks','eReader  - PB633-N-WW POCKETBOOK, 6 ", 16 GB, 1072 x 1448, Plata','262.42','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_94050404'),
	 ('ebooks','E-book  - PB740-2-J-WW POCKETBOOK, 7,8 ", 16 GB, 1872 x 1404 (300 ppi), Litio-polímero, Gris','235.56','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_98925395'),
	 ('ebooks','E-Book  - PB700-L-64-WW POCKETBOOK, 7,00 ", 64 GB, 1264 x 1680 Pixeles, Negro','254.8','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_100606572'),
	 ('ebooks','Ebook infantil - KLACK KBOOK','39.95','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_102283125'),
	 ('ebooks','20 x 22 x 3 cm; 390 gramos  - 4016621128319 TOLINO, 8 ", 8 GB, 1440 píxeles, Negro','361.21','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_98981058'),
	 ('ebooks','E-book  - 53-019409 AMAZON, 7 ", 32 GB, (300 ppi), Litio-polímero, Oro','320.97','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_98981076');
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('ebooks','Eink  - Meebook P78 PRO AZMXDVP, 7,8 ", 32 GB, 1404*1872 Píxeles, Eink, Gris','421.06','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_98981083'),
	 ('ebooks','Funda eReader - Maillon Technologique Map MTEBOOK6MAP, Para eBook de 6", Tipo libro, Universal, Marrón','12.99','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_94298795'),
	 ('ebooks','Funda eReader - Rakuten Kobo Nia SleepCover, Cuero artificial, Modo Suspención Automático, Negro','19.99','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_76086728'),
	 ('ebooks','Funda - Amazon B08VZ6YMVV, Para Kindle Paperwhite de 11.ª generación (modelo de 2021),  Tipo libro, Piel, Negro','29.99','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_94619796'),
	 ('ebooks','Funda eReader - Silver HT Egypt Map, Para Kindle 6" (2019), Tipo libro, Mapa de Egipto','13.99','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_69818701'),
	 ('ebooks','Funda eReader - Kobo Sleepcover, Para eReader Kobo Clara 2E, Negro','29.99','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_98184386'),
	 ('ebooks','Funda eReader - Kobo Sleepcover, Para eReader Kobo Libra 2, Negro','39.99','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_98184394'),
	 ('ebooks','Funda - Amazon B08VZCBWN8, Para Kindle Paperwhite de 11.ª generación (modelo de 2021), Tipo libro, Tela, Negro','24.99','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_94619801'),
	 ('ebooks','Funda eReader - Kobo Sleepcover, Para eReader Kobo Libra 2, Lavanda','30.99','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_98184379'),
	 ('ebooks','Funda eReader - Kobo Sleepcover, Para eReader Kobo Libra 2, Rojo Amapola','39.99','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_98184375');
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('ebooks','Funda eReader - Kobo Sleepcover Clara HD, Negro','29.99','https://assets.mmsrg.com/isr/166325/c1/-/pixelboxx-mss-79139499'),
	 ('ebooks','Funda eReader - Maillon Technologique Travel MTEBOOK6TRAVEL, Para eBook de 6", Tipo libro, Universal, Multicolor','12.99','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_94298789'),
	 ('ebooks','Funda eReader - Silver HT 111937140199, 6", para libro electrónico','13.99','https://assets.mmsrg.com/isr/166325/c1/-/pixelboxx-mss-78695394'),
	 ('ebooks','Funda - Amazon B08VYX257R, Para Kindle Paperwhite de 11.ª generación (modelo de 2021), Tipo libro, Tela, Azul marino','24.99','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_94620000'),
	 ('ebooks','Funda eReader - Kobo Sleepcover, Para eReader Kobo Clara 2E, Coral Reef','29.99','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_98184388'),
	 ('ebooks','Funda eReader - Kobo Sleepcover, Para eReader Kobo Clara 2E Basic, Azul','19.99','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_98184384'),
	 ('ebooks','Funda eReader - Rakuten Kobo Nia SleepCover Aqua, Cuero artificial, Modo Suspención Automático, Azul','19.99','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_76086730'),
	 ('ebooks','Funda eReader - Kobo Sleepcover, Para eReader Kobo Clara 2E, Verde Marino','22.99','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_98184391'),
	 ('ebooks','Funda eReader - Kobo Sleepcover Clara HD, Rojo','29.99','https://assets.mmsrg.com/isr/166325/c1/-/pixelboxx-mss-79139504'),
	 ('ebooks','Funda eReader - Vam Vam Tie Dye, Para eBook 6", Ajustable, Con Portatarjetas y Portadocumentos, Multicolor','19.99','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_90699559');
INSERT INTO producto (categoria,name,price,url) VALUES
	 ('ebooks','Funda eReader - Kobo Sleepcover Clara HD, Azul','29.99','https://assets.mmsrg.com/isr/166325/c1/-/pixelboxx-mss-79139501'),
	 ('ebooks','eReader  - InkPad 3 POCKETBOOK, 7,8 ", 8 GB, 1404 x 1872, Negro','277.83','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_92610255'),
	 ('ebooks','E-book  - 4016621129262 TOLINO, 7 ", 4 GB, 1680 Pixeles, E Ink, Multicolor','208','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_98520891'),
	 ('ebooks','eReader  - S8IN4O AMAZON, 7 ", 8 GB, 300 ppp, Negro','297.49','https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_95687172');
