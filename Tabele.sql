CREATE TABLE "kandidati" (
"ime_kandidata" VARCHAR(30) NOT NULL PRIMARY KEY,
"ime_instruktora" VARCHAR(30),
"datum_rodjenja" DATE NOT NULL,
"spol" VARCHAR(7) NOT NULL, 
"jmbg" VARCHAR(14) NOT NULL, 
"kontakt" VARCHAR(15) NOT NULL,
"kategorija" VARCHAR(2) NOT NULL,
"broj_casova" INT DEFAULT 0,
"datum_polaska" DATE NOT NULL,
"polozen_ispit" VARCHAR(3) DEFAULT 'Ne', 
"polozena_teorija" VARCHAR(3) DEFAULT 'Ne',
"polozena_prvapomoc" VARCHAR(3) DEFAULT 'Ne', 
"datum_zavrsetka" DATE,
"broj_pokusaja" INT DEFAULT 0,
"uplacena_sredstva" VARCHAR(3) DEFAULT 'Ne'
);

CREATE TABLE "instruktori" (
"ime_instruktora" VARCHAR(30) NOT NULL PRIMARY KEY,
"datum_rodjenja" DATE NOT NULL, 
"jmbg" VARCHAR(14) NOT NULL,
"kategorije" VARCHAR(10) NOT NULL,
"id_vozila" INT NOT NULL, 
"broj_kandidata" INT DEFAULT 0,
"broj_casova" INT DEFAULT 0,
"kontakt" VARCHAR(15)
);

CREATE TABLE "casovi" (
"id_casa" INT NOT NULL IDENTITY PRIMARY KEY,
"ime_kandidata" VARCHAR(30) NOT NULL,
"ime_instruktora" VARCHAR(30) NOT NULL,
"tip_casa" VARCHAR(10) NOT NULL,
"kategorija" VARCHAR(3) NOT NULL,
"datum_casa" DATE NOT NULL,
"vrijeme_pocetka" TIME NOT NULL
);

CREATE TABLE "vozila" (
"id_vozila" INT NOT NULL IDENTITY PRIMARY KEY,
"godiste" INT NOT NULL,
"model" VARCHAR(30) NOT NULL,
"kilometraza" INT NOT NULL, 
"datum_registracije" DATE NOT NULL,
"servis_km" INT NOT NULL
);

CREATE TABLE "testiranje" (
"id_testiranja" INT NOT NULL IDENTITY PRIMARY KEY,
"ime_kandidata" VARCHAR(30) NOT NULL,
"ime_instruktora" VARCHAR(30) NOT NULL,
"id_vozila" INT NOT NULL,
"ime_ispitivaca" VARCHAR(25) NOT NULL,
"tip_testiranja" VARCHAR(10) NOT NULL,
"kategorija" VARCHAR(3) NOT NULL,
"datum_testiranja" DATE NOT NULL,
"vrijeme_pocetka" TIME NOT NULL,
"vrijeme_zavrsetka" TIME,
"polozeno" VARCHAR(3) DEFAULT 'Ne'
);


CREATE TABLE "rezervacije" (
"id_rezervacije" INT NOT NULL IDENTITY PRIMARY KEY,
"ime_kandidata" VARCHAR(30) NOT NULL,
"datum_rodjenja" DATE NOT NULL,
"jmbg" VARCHAR(14) NOT NULL,
"spol" VARCHAR(7) NOT NULL,
"prebivaliste" VARCHAR(20) NOT NULL,
"email" VARCHAR(40) NOT NULL,
"broj_telefona" VARCHAR(13) NOT NULL,
"kategorija" VARCHAR(2) NOT NULL
);

CREATE TABLE "transakcije" (
"id_transakcije" INT NOT NULL IDENTITY PRIMARY KEY,
"ime_kandidata" VARCHAR(30) NOT NULL,
"vrsta_transakcije" VARCHAR(15) NOT NULL,
"status_transakcije" VARCHAR(10) NOT NULL,
"datum_transakcije" DATE NOT NULL,
"iznos" MONEY NOT NULL
);

ALTER TABLE kandidati
ADD CONSTRAINT FK_kandidati_ime_instruktora FOREIGN KEY (ime_instruktora)     
    REFERENCES instruktori (ime_instruktora);    

ALTER TABLE casovi
ADD CONSTRAINT FK_casovi_ime_instruktora FOREIGN KEY (ime_instruktora)     
    REFERENCES instruktori (ime_instruktora);   

ALTER TABLE casovi
ADD CONSTRAINT FK_casovi_ime_kandidata FOREIGN KEY (ime_kandidata)     
    REFERENCES kandidati (ime_kandidata);

ALTER TABLE testiranje
ADD CONSTRAINT FK_testiranje_ime_kandidata FOREIGN KEY (ime_kandidata)     
    REFERENCES kandidati (ime_kandidata);  

ALTER TABLE testiranje
ADD CONSTRAINT FK_testiranje_ime_instruktora FOREIGN KEY (ime_instruktora)     
    REFERENCES instruktori (ime_instruktora);  

ALTER TABLE testiranje
ADD CONSTRAINT FK_testiranje_id_vozila FOREIGN KEY (id_vozila)     
    REFERENCES vozila (id_vozila);  

ALTER TABLE transakcije
ADD CONSTRAINT FK_transakcije_ime_kandidata FOREIGN KEY (ime_kandidata)     
    REFERENCES kandidati (ime_kandidata);  

ALTER TABLE instruktori
ADD CONSTRAINT FK_instruktori_id_vozila FOREIGN KEY (id_vozila)     
    REFERENCES vozila (id_vozila);  