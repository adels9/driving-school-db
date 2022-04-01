CREATE PROCEDURE dodavanje_kandidata
@ime_kandidata VARCHAR(30), @ime_instruktora VARCHAR(30), @datum_rodjenja DATE, @spol VARCHAR(7), @jmbg VARCHAR(14), @kontakt VARCHAR(15), @kategorija VARCHAR(2), @datum_polaska DATE
AS
BEGIN
	INSERT INTO kandidati(ime_kandidata, ime_instruktora, datum_rodjenja, spol, jmbg, kontakt, kategorija, datum_polaska)
	VALUES(@ime_kandidata, @ime_instruktora, @datum_rodjenja, @spol, @jmbg, @kontakt, @kategorija, @datum_polaska)
	UPDATE instruktori SET broj_kandidata = broj_kandidata+1 WHERE ime_instruktora = @ime_instruktora
END


CREATE PROCEDURE dodavanje_instruktora
@ime_instruktora VARCHAR(30), @datum_rodjenja DATE, @jmbg VARCHAR(14), @kategorije VARCHAR(10), @id_vozila INT, @kontakt VARCHAR(15)
AS
BEGIN
	INSERT INTO instruktori(ime_instruktora, datum_rodjenja, jmbg, kategorije, id_vozila, kontakt)
	VALUES(@ime_instruktora, @datum_rodjenja, @jmbg, @kategorije, @id_vozila, @kontakt)
END


CREATE PROCEDURE dodavanje_casa
@ime_kandidata VARCHAR(30), @ime_instruktora VARCHAR(30), @tip_casa VARCHAR(10), @kategorija VARCHAR(3), @datum_casa DATE, @vrijeme_pocetka TIME
AS
BEGIN
	INSERT INTO casovi(ime_kandidata, ime_instruktora, tip_casa, kategorija, datum_casa, vrijeme_pocetka)
	VALUES(@ime_kandidata, @ime_instruktora, @tip_casa, @kategorija, @datum_casa, @vrijeme_pocetka)
	UPDATE kandidati SET broj_casova = broj_casova+1 WHERE ime_kandidata = @ime_kandidata
	UPDATE instruktori SET broj_casova = broj_casova+1 WHERE ime_instruktora = @ime_instruktora
END


CREATE PROCEDURE dodavanje_rezervacije
@ime_kandidata VARCHAR(30), @datum_rodjenja DATE, @jmbg VARCHAR(14), @spol VARCHAR(7), @prebivaliste VARCHAR(20), @email VARCHAR(40), @broj_telefona VARCHAR(13), @kategorija VARCHAR(2)
AS
BEGIN
	INSERT INTO rezervacije(ime_kandidata, datum_rodjenja, jmbg, spol, prebivaliste, email, broj_telefona, kategorija)
	VALUES(@ime_kandidata, @datum_rodjenja, @jmbg, @spol, @prebivaliste, @email, @broj_telefona, @kategorija)
END


CREATE PROCEDURE dodavanje_testiranja
@ime_kandidata VARCHAR(30), @ime_instruktora VARCHAR(30), @id_vozila INT, @ime_ispitivaca VARCHAR(25), @tip_testiranja VARCHAR(10), @kategorija VARCHAR(3), @datum_testiranja DATE, @vrijeme_pocetka TIME
AS
BEGIN
	INSERT INTO testiranje(ime_kandidata, ime_instruktora, id_vozila, ime_ispitivaca, tip_testiranja, kategorija, datum_testiranja, vrijeme_pocetka)
	VALUES(@ime_kandidata, @ime_instruktora, @id_vozila, @ime_ispitivaca, @tip_testiranja, @kategorija, @datum_testiranja, @vrijeme_pocetka)
END


CREATE PROCEDURE dodavanje_transakcije
@ime_kandidata VARCHAR(30), @vrsta_transakcije VARCHAR(15), @status_transakcije VARCHAR(10), @datum_transakcije DATE, @iznos MONEY
AS
BEGIN
	INSERT INTO transakcije(ime_kandidata, vrsta_transakcije, status_transakcije, datum_transakcije, iznos)
	VALUES(@ime_kandidata, @vrsta_transakcije, @status_transakcije, @datum_transakcije, @iznos)
	UPDATE kandidati SET uplacena_sredstva = 'Da' WHERE ime_kandidata = @ime_kandidata 
END


CREATE PROCEDURE dodavanje_vozila
@godiste INT, @model VARCHAR(30), @kilometraza INT, @datum_registracije DATE, @servis_km INT
AS
BEGIN
	INSERT INTO vozila(godiste, model, kilometraza, datum_registracije, servis_km)
	VALUES(@godiste, @model, @kilometraza, @datum_registracije, @servis_km)
END


CREATE PROCEDURE kandidat_info
@ime VARCHAR(30)
AS
BEGIN
	SELECT * FROM kandidati WHERE ime_kandidata = @ime
END


CREATE PROCEDURE instruktor_info
@ime VARCHAR(30)
AS
BEGIN
	SELECT * FROM instruktori WHERE ime_instruktora = @ime
END


CREATE PROCEDURE casovi_info
@ime VARCHAR(30)
AS
BEGIN
	SELECT * FROM casovi WHERE ime_kandidata = @ime
END

CREATE PROCEDURE rezervacije_info
@ime VARCHAR(30)
AS
BEGIN
	SELECT * FROM rezervacije WHERE ime_kandidata = @ime
END


CREATE PROCEDURE testiranje_info
@ime VARCHAR(30)
AS
BEGIN
	SELECT * FROM testiranje WHERE ime_kandidata = @ime
END



CREATE PROCEDURE transakcije_info
@ime VARCHAR(30)
AS
BEGIN
	SELECT * FROM transakcije WHERE ime_kandidata = @ime
END


CREATE PROCEDURE vozila_info
@id VARCHAR(30)
AS
BEGIN
	SELECT * FROM vozila WHERE id_vozila = @id
END


CREATE PROCEDURE izmjena_kandidata 
@ime VARCHAR(30), @broj_reda INT, @vrijednost VARCHAR(30)
AS
BEGIN
	IF @broj_reda = 1
	UPDATE kandidati SET ime_kandidata = @vrijednost WHERE ime_kandidata = @ime
	ELSE IF @broj_reda = 2
	UPDATE kandidati SET ime_instruktora = @vrijednost WHERE ime_kandidata = @ime
	ELSE IF @broj_reda = 3
	UPDATE kandidati SET datum_rodjenja = CAST(@vrijednost AS DATE) WHERE ime_kandidata = @ime
	ELSE IF @broj_reda = 4
	UPDATE kandidati SET spol = @vrijednost WHERE ime_kandidata = @ime
	ELSE IF @broj_reda = 5
	UPDATE kandidati SET jmbg = @vrijednost WHERE ime_kandidata = @ime
	ELSE IF @broj_reda = 6
	UPDATE kandidati SET kontakt = @vrijednost WHERE ime_kandidata = @ime
	ELSE IF @broj_reda = 7
	UPDATE kandidati SET kategorija = @vrijednost WHERE ime_kandidata = @ime
	ELSE IF @broj_reda = 8
	UPDATE kandidati SET broj_casova = CAST(@vrijednost AS INT) WHERE ime_kandidata = @ime
	ELSE IF @broj_reda = 9
	UPDATE kandidati SET datum_polaska = CAST(@vrijednost AS DATE) WHERE ime_kandidata = @ime
	ELSE IF @broj_reda = 10
	UPDATE kandidati SET polozen_ispit = @vrijednost WHERE ime_kandidata = @ime
	ELSE IF @broj_reda = 11
	UPDATE kandidati SET polozena_teorija = @vrijednost WHERE ime_kandidata = @ime
	ELSE IF @broj_reda = 12
	UPDATE kandidati SET polozena_prvapomoc = @vrijednost WHERE ime_kandidata = @ime
	ELSE IF @broj_reda = 13
	UPDATE kandidati SET datum_zavrsetka = CAST(@vrijednost AS DATE) WHERE ime_kandidata = @ime
	ELSE IF @broj_reda = 14
	UPDATE kandidati SET broj_pokusaja = CAST(@vrijednost AS INT) WHERE ime_kandidata = @ime
END


CREATE PROCEDURE izmjena_instruktora
@ime VARCHAR(30), @broj_reda INT, @vrijednost VARCHAR(30)
AS
BEGIN
	IF @broj_reda = 1
	UPDATE instruktori SET ime_instruktora = @vrijednost WHERE ime_instruktora = @ime
	ELSE IF @broj_reda = 2
	UPDATE instruktori SET datum_rodjenja = CAST(@vrijednost AS DATE) WHERE ime_instruktora = @ime
	ELSE IF @broj_reda = 3
	UPDATE instruktori SET jmbg = @vrijednost WHERE ime_instruktora = @ime
	ELSE IF @broj_reda = 4
	UPDATE instruktori SET kategorije = @vrijednost WHERE ime_instruktora = @ime
	ELSE IF @broj_reda = 5
	UPDATE instruktori SET id_vozila = CAST(@vrijednost AS INT) WHERE ime_instruktora = @ime
	ELSE IF @broj_reda = 6
	UPDATE instruktori SET broj_kandidata = CAST(@vrijednost AS INT) WHERE ime_instruktora = @ime
	ELSE IF @broj_reda = 7
	UPDATE instruktori SET broj_casova = CAST(@vrijednost AS INT) WHERE ime_instruktora = @ime
	ELSE IF @broj_reda = 8
	UPDATE instruktori SET kontakt = @vrijednost WHERE ime_instruktora = @ime
END

CREATE PROCEDURE izmjena_casova
@id INT, @broj_reda INT, @vrijednost VARCHAR(30)
AS
BEGIN
	IF @broj_reda = 2
	UPDATE casovi SET ime_kandidata = @vrijednost WHERE id_casa = @id
	ELSE IF @broj_reda = 3
	UPDATE casovi SET ime_instruktora = @vrijednost WHERE id_casa = @id
	ELSE IF @broj_reda = 4 
	UPDATE casovi SET tip_casa = @vrijednost WHERE id_casa = @id
	ELSE IF @broj_reda = 5
	UPDATE casovi SET kategorija = @vrijednost WHERE id_casa = @id
	ELSE IF @broj_reda = 6
	UPDATE casovi SET datum_casa = CAST(@vrijednost AS DATE) WHERE id_casa = @id
	ELSE IF @broj_reda = 7
	UPDATE casovi SET vrijeme_pocetka = CAST(@vrijednost AS TIME) WHERE id_casa = @id
END

CREATE PROCEDURE izmjena_rezervacije
@ime VARCHAR(30), @broj_reda INT, @vrijednost VARCHAR(30)
AS
BEGIN
	IF @broj_reda = 2
	UPDATE rezervacije SET ime_kandidata = @vrijednost WHERE ime_kandidata = @ime
	ELSE IF @broj_reda = 3
	UPDATE rezervacije SET datum_rodjenja = CAST(@vrijednost AS DATE) WHERE ime_kandidata = @ime
	ELSE IF @broj_reda = 4
	UPDATE rezervacije SET jmbg = @vrijednost WHERE ime_kandidata = @ime
	ELSE IF @broj_reda = 5
	UPDATE rezervacije SET spol = @vrijednost WHERE ime_kandidata = @ime
	ELSE IF @broj_reda = 6
	UPDATE rezervacije SET prebivaliste = @vrijednost WHERE ime_kandidata = @ime
	ELSE IF @broj_reda = 7
	UPDATE rezervacije SET email = @vrijednost WHERE ime_kandidata = @ime
	ELSE IF @broj_reda = 8
	UPDATE rezervacije SET broj_telefona = @vrijednost WHERE ime_kandidata = @ime
	ELSE IF @broj_reda = 9
	UPDATE rezervacije SET kategorija = @vrijednost WHERE ime_kandidata = @ime
END



CREATE PROCEDURE izmjena_testiranja
@id INT, @broj_reda INT, @vrijednost VARCHAR(30)
AS
BEGIN
	IF @broj_reda = 2
	UPDATE testiranje SET ime_kandidata = @vrijednost WHERE id_testiranja = @id
	ELSE IF @broj_reda = 3
	UPDATE testiranje SET ime_instruktora = @vrijednost WHERE id_testiranja = @id
	ELSE IF @broj_reda = 4
	UPDATE testiranje SET id_vozila = CAST(@vrijednost AS INT) WHERE id_testiranja = @id
	ELSE IF @broj_reda = 5
	UPDATE testiranje SET ime_ispitivaca = @vrijednost WHERE id_testiranja = @id
	ELSE IF @broj_reda = 6
	UPDATE testiranje SET tip_testiranja = @vrijednost WHERE id_testiranja = @id
	ELSE IF @broj_reda = 7
	UPDATE testiranje SET kategorija = @vrijednost WHERE id_testiranja = @id
	ELSE IF @broj_reda = 8
	UPDATE testiranje SET datum_testiranja = CAST(@vrijednost AS DATE) WHERE id_testiranja = @id
	ELSE IF @broj_reda = 9
	UPDATE testiranje SET vrijeme_pocetka = CAST(@vrijednost AS TIME) WHERE id_testiranja = @id
	ELSE IF @broj_reda = 10
	UPDATE testiranje SET vrijeme_zavrsetka = CAST(@vrijednost AS TIME) WHERE id_testiranja = @id
	ELSE IF @broj_reda = 11
	UPDATE testiranje SET polozeno = @vrijednost WHERE id_testiranja = @id
END


CREATE PROCEDURE izmjena_transakcije
@id INT, @broj_reda INT, @vrijednost VARCHAR(30)
AS
BEGIN
	IF @broj_reda = 2
	UPDATE transakcije SET ime_kandidata = @vrijednost WHERE id_transakcije = @id
	ELSE IF @broj_reda = 3
	UPDATE testiranje SET vrsta_transakcije = @vrijednost WHERE id_transakcije = @id
	ELSE IF @broj_reda = 4
	UPDATE testiranje SET status_transakcije = @vrijednost WHERE id_transakcije = @id
	ELSE IF @broj_reda = 5
	UPDATE testiranje SET datum_transakcije = CAST(@vrijednost AS DATE) WHERE id_transakcije = @id
	ELSE IF @broj_reda = 6
	UPDATE testiranje SET iznos = CAST(@vrijednost AS MONEY) WHERE id_transakcije = @id
END


CREATE PROCEDURE izmjena_vozila
@id INT, @broj_reda INT, @vrijednost VARCHAR(30)
AS
BEGIN
	IF @broj_reda = 2
	UPDATE vozila SET godiste = CAST(@vrijednost AS INT) WHERE id_vozila = @id
	ELSE IF @broj_reda = 3
	UPDATE vozila SET model = @vrijednost WHERE id_vozila = @id
	ELSE IF @broj_reda = 4
	UPDATE vozila SET kilometraza = CAST(@vrijednost AS INT) WHERE id_vozila = @id
	ELSE IF @broj_reda = 5
	UPDATE vozila SET datum_registracije = CAST(@vrijednost AS DATE) WHERE id_vozila = @id
	ELSE IF @broj_reda = 6
	UPDATE vozila SET servis_km = CAST(@vrijednost AS INT) WHERE id_vozila = @id
END



CREATE PROCEDURE brisanje
@tabela VARCHAR(15), @ime VARCHAR(30)
AS
BEGIN
	IF @tabela = 'kandidati'
	DELETE FROM kandidati WHERE ime_kandidata = @ime
	ELSE IF @tabela = 'instruktori'
	DELETE FROM instruktori WHERE ime_instruktora = @ime
	ELSE IF @tabela = 'casovi'
	DELETE FROM casovi WHERE id_casa = CAST(@ime AS INT)
	ELSE IF @tabela = 'rezervacije'
	DELETE FROM rezervacije WHERE ime_kandidata = @ime
	ELSE IF @tabela = 'testiranje'
	DELETE FROM testiranje WHERE id_testiranja = CAST(@ime AS INT)
	ELSE IF @tabela = 'transakcije'
	DELETE FROM transakcije WHERE id_transakcije = CAST(@ime AS INT)
	ELSE IF @tabela = 'vozila'
	DELETE FROM vozila WHERE id_vozila = CAST(@ime AS INT)
END



CREATE PROCEDURE odobri_rezervaciju 
@id INT
AS
BEGIN
	DECLARE @ime_kandidata VARCHAR(30), @datum_rodjenja DATE, @jmbg VARCHAR(14), @spol VARCHAR(7), @prebivaliste VARCHAR(20), @email VARCHAR(40), @broj_telefona VARCHAR(13), @kategorija VARCHAR(2), @datum DATE
	SET @datum = CONVERT (date, GETDATE())
	SELECT @ime_kandidata = ime_kandidata FROM rezervacije WHERE id_rezervacije = @id
	SELECT @datum_rodjenja = datum_rodjenja FROM rezervacije WHERE id_rezervacije = @id
	SELECT @jmbg = jmbg FROM rezervacije WHERE id_rezervacije = @id
	SELECT @spol = spol FROM rezervacije WHERE id_rezervacije = @id
	SELECT @prebivaliste = prebivaliste FROM rezervacije WHERE id_rezervacije = @id
	SELECT @email = email FROM rezervacije WHERE id_rezervacije = @id
	SELECT @broj_telefona = broj_telefona FROM rezervacije WHERE id_rezervacije = @id
	SELECT @kategorija = kategorija FROM rezervacije WHERE id_rezervacije = @id
	INSERT INTO kandidati(ime_kandidata, datum_rodjenja, spol, jmbg, kontakt, kategorija, datum_polaska)
	VALUES(@ime_kandidata, @datum_rodjenja, @spol, @jmbg, @broj_telefona, @kategorija, @datum)
END


CREATE PROCEDURE stanje_ispita 
@ime VARCHAR(30), @tip_ispita VARCHAR(10), @polozeno VARCHAR(3), @vrijeme TIME
AS
BEGIN
	IF @tip_ispita = 'Teorija' 
	UPDATE kandidati SET polozena_teorija = @polozeno WHERE ime_kandidata = @ime
	ELSE IF @tip_ispita = 'Voznja' 
	UPDATE kandidati SET polozen_ispit = @polozeno WHERE ime_kandidata = @ime
	ELSE IF @tip_ispita = 'Prva pomoc' 
	UPDATE kandidati SET polozena_prvapomoc = @polozeno WHERE ime_kandidata = @ime
END
BEGIN
	UPDATE testiranje SET vrijeme_zavrsetka = @vrijeme, polozeno = @polozeno WHERE ime_kandidata = @ime AND tip_testiranja = @tip_ispita
END