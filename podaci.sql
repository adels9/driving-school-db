


EXEC dodavanje_vozila @godiste = 2014, @model = 'Golf 6', @kilometraza = 160000, @datum_registracije = '2021/06/1', @servis_km = 200000;
EXEC dodavanje_vozila @godiste = 2015, @model = 'Golf 7', @kilometraza = 154000, @datum_registracije = '2021/06/1', @servis_km = 200000;
EXEC dodavanje_vozila @godiste = 2018, @model = 'VW T-Roc', @kilometraza = 100000, @datum_registracije = '2021/06/1', @servis_km = 130000;

EXEC dodavanje_instruktora @ime_instruktora = 'Mujo Mujic', @datum_rodjenja = '1976/07/29', @jmbg = '1111111111111', @kategorije = 'B, C', @id_vozila = '1', @kontakt = '061-589-531';
EXEC dodavanje_instruktora @ime_instruktora = 'Zijo Zijic', @datum_rodjenja = '1966/1/3', @jmbg = '2222222222222', @kategorije = 'B, C', @id_vozila = '2', @kontakt = '063-231-334';
EXEC dodavanje_instruktora @ime_instruktora = 'Hamko Hamkic', @datum_rodjenja = '1988/5/13', @jmbg = '3333333333333', @kategorije = 'B, C', @id_vozila = '3', @kontakt = '062-531-114';

EXEC dodavanje_kandidata @ime_kandidata = 'Adel Smajlovic', @ime_instruktora = 'Zijo Zijic', @datum_rodjenja = '2000/02/19', @spol = 'Musko', @jmbg = '4444444444444', @kontakt = '062-111-222', @kategorija = 'B', @datum_polaska = '2021/05/12';
EXEC dodavanje_kandidata @ime_kandidata = 'Esmir Kafedzic', @ime_instruktora = 'Mujo Mujic', @datum_rodjenja = '2000/1/27', @spol = 'Musko', @jmbg = '5555555555555', @kontakt = '062-222-333', @kategorija = 'B', @datum_polaska = '2021/06/12';
EXEC dodavanje_kandidata @ime_kandidata = 'Eldar Salihovic', @ime_instruktora = 'Hamko Hamkic', @datum_rodjenja = '2000/12/29', @spol = 'Musko', @jmbg = '6666666666666', @kontakt = '062-222-333', @kategorija = 'B', @datum_polaska = '2021/06/12';
EXEC dodavanje_kandidata @ime_kandidata = 'Bilal Rahmanovic', @ime_instruktora = 'Hamko Hamkic', @datum_rodjenja = '1999/6/14', @spol = 'Musko', @jmbg = '7777777777777', @kontakt = '062-444-555', @kategorija = 'C', @datum_polaska = '2021/05/12';

EXEC dodavanje_casa @ime_kandidata = 'Adel Smajlovic', @ime_instruktora = 'Zijo Zijic', @tip_casa = 'Teorija', @kategorija = 'B', @datum_casa = '2021/05/21', @vrijeme_pocetka = '14:30';
EXEC dodavanje_casa @ime_kandidata = 'Adel Smajlovic', @ime_instruktora = 'Zijo Zijic', @tip_casa = 'Teorija', @kategorija = 'B', @datum_casa = '2021/05/26', @vrijeme_pocetka = '15:30';
EXEC dodavanje_casa @ime_kandidata = 'Adel Smajlovic', @ime_instruktora = 'Zijo Zijic', @tip_casa = 'Prva pomoc', @kategorija = 'B', @datum_casa = '2021/05/30', @vrijeme_pocetka = '16:30';
EXEC dodavanje_casa @ime_kandidata = 'Adel Smajlovic', @ime_instruktora = 'Zijo Zijic', @tip_casa = 'Voznja', @kategorija = 'B', @datum_casa = '2021/06/11', @vrijeme_pocetka = '09:30';

EXEC dodavanje_casa @ime_kandidata = 'Esmir Kafedzic', @ime_instruktora = 'Mujo Mujic', @tip_casa = 'Teorija', @kategorija = 'B', @datum_casa = '2021/05/21', @vrijeme_pocetka = '14:30';
EXEC dodavanje_casa @ime_kandidata = 'Esmir Kafedzic', @ime_instruktora = 'Mujo Mujic', @tip_casa = 'Prva pomoc', @kategorija = 'B', @datum_casa = '2021/05/30', @vrijeme_pocetka = '16:30';
EXEC dodavanje_casa @ime_kandidata = 'Esmir Kafedzic', @ime_instruktora = 'Mujo Mujic', @tip_casa = 'Voznja', @kategorija = 'B', @datum_casa = '2021/06/11', @vrijeme_pocetka = '11:30';

EXEC dodavanje_casa @ime_kandidata = 'Eldar Salihovic', @ime_instruktora = 'Zijo Zijic', @tip_casa = 'Teorija', @kategorija = 'B', @datum_casa = '2021/05/21', @vrijeme_pocetka = '14:30';
EXEC dodavanje_casa @ime_kandidata = 'Eldar Salihovic', @ime_instruktora = 'Zijo Zijic', @tip_casa = 'Prva pomoc', @kategorija = 'B', @datum_casa = '2021/05/30', @vrijeme_pocetka = '17:30';
EXEC dodavanje_casa @ime_kandidata = 'Eldar Salihovic', @ime_instruktora = 'Zijo Zijic', @tip_casa = 'Voznja', @kategorija = 'B', @datum_casa = '2021/06/13', @vrijeme_pocetka = '09:30';

EXEC dodavanje_casa @ime_kandidata = 'Bilal Rahmanovic', @ime_instruktora = 'Hamko Hamkic', @tip_casa = 'Teorija', @kategorija = 'C', @datum_casa = '2021/05/21', @vrijeme_pocetka = '14:30';
EXEC dodavanje_casa @ime_kandidata = 'Bilal Rahmanovic', @ime_instruktora = 'Hamko Hamkic', @tip_casa = 'Prva pomoc', @kategorija = 'C', @datum_casa = '2021/05/30', @vrijeme_pocetka = '16:30';
EXEC dodavanje_casa @ime_kandidata = 'Bilal Rahmanovic', @ime_instruktora = 'Hamko Hamkic', @tip_casa = 'Voznja', @kategorija = 'C', @datum_casa = '2021/06/12', @vrijeme_pocetka = '11:30';

EXEC dodavanje_rezervacije @ime_kandidata = 'Aljo Aljic', @datum_rodjenja = '2000/10/19', @jmbg = '1212121212122', @spol = 'Musko', @prebivaliste = 'Banovici', @email = 'aljo123@gmail.com', @broj_telefona = '061-000-111', @kategorija = 'C';
EXEC dodavanje_rezervacije @ime_kandidata = 'Saha Sahic', @datum_rodjenja = '1995/08/7', @jmbg = '1313131313133', @spol = 'Zensko', @prebivaliste = 'Banovici', @email = 'saha123@gmail.com', @broj_telefona = '061-222-111', @kategorija = 'B';

EXEC dodavanje_transakcije @ime_kandidata = 'Adel Smajlovic', @vrsta_transakcije = 'Uplata', @status_transakcije = 'Uspjesno', @datum_transakcije = '2021/04/21', @iznos = '1200';
EXEC dodavanje_transakcije @ime_kandidata = 'Esmir Kafedzic', @vrsta_transakcije = 'Uplata', @status_transakcije = 'Uspjesno', @datum_transakcije = '2021/05/2', @iznos = '600';
EXEC dodavanje_transakcije @ime_kandidata = 'Esmir Kafedzic', @vrsta_transakcije = 'Uplata', @status_transakcije = 'Uspjesno', @datum_transakcije = '2021/05/12', @iznos = '600';
EXEC dodavanje_transakcije @ime_kandidata = 'Eldar Salihovic', @vrsta_transakcije = 'Uplata', @status_transakcije = 'Uspjesno', @datum_transakcije = '2021/05/22', @iznos = '1200';
EXEC dodavanje_transakcije @ime_kandidata = 'Bilal Rahmanovic', @vrsta_transakcije = 'Uplata', @status_transakcije = 'Uspjesno', @datum_transakcije = '2021/04/30', @iznos = '1200';

EXEC dodavanje_testiranja @ime_kandidata = 'Adel Smajlovic', @ime_instruktora = 'Zijo Zijic', @id_vozila = 2, @ime_ispitivaca = 'Esef Esefovic', @tip_testiranja = 'Teorija', @kategorija = 'B', @datum_testiranja = '2020/06/05', @vrijeme_pocetka = '11:30';
EXEC dodavanje_testiranja @ime_kandidata = 'Adel Smajlovic', @ime_instruktora = 'Zijo Zijic', @id_vozila = 2, @ime_ispitivaca = 'Alija Alic', @tip_testiranja = 'Prva pomoc', @kategorija = 'B', @datum_testiranja = '2020/06/05', @vrijeme_pocetka = '12:30';
EXEC dodavanje_testiranja @ime_kandidata = 'Adel Smajlovic', @ime_instruktora = 'Zijo Zijic', @id_vozila = 2, @ime_ispitivaca = 'Hamdo Hamdic', @tip_testiranja = 'Voznja', @kategorija = 'B', @datum_testiranja = '2020/06/15', @vrijeme_pocetka = '11:30';

EXEC dodavanje_testiranja @ime_kandidata = 'Esmir Kafedzic', @ime_instruktora = 'Mujo Mujic', @id_vozila = 1, @ime_ispitivaca = 'Esef Esefovic', @tip_testiranja = 'Teorija', @kategorija = 'B', @datum_testiranja = '2020/06/05', @vrijeme_pocetka = '11:30';
EXEC dodavanje_testiranja @ime_kandidata = 'Esmir Kafedzic', @ime_instruktora = 'Mujo Mujic', @id_vozila = 1, @ime_ispitivaca = 'Alija Alic', @tip_testiranja = 'Prva pomoc', @kategorija = 'B', @datum_testiranja = '2020/06/05', @vrijeme_pocetka = '12:30';
EXEC dodavanje_testiranja @ime_kandidata = 'Esmir Kafedzic', @ime_instruktora = 'Mujo Mujic', @id_vozila = 1, @ime_ispitivaca = 'Hamdo Hamdic', @tip_testiranja = 'Voznja', @kategorija = 'B', @datum_testiranja = '2020/06/15', @vrijeme_pocetka = '10:30';

EXEC dodavanje_testiranja @ime_kandidata = 'Bilal Rahmanovic', @ime_instruktora = 'Hamko Hamkic', @id_vozila = 3, @ime_ispitivaca = 'Esef Esefovic', @tip_testiranja = 'Teorija', @kategorija = 'C', @datum_testiranja = '2020/06/05', @vrijeme_pocetka = '11:30';
EXEC dodavanje_testiranja @ime_kandidata = 'Bilal Rahmanovic', @ime_instruktora = 'Hamko Hamkic', @id_vozila = 3, @ime_ispitivaca = 'Alija Alic', @tip_testiranja = 'Prva pomoc', @kategorija = 'C', @datum_testiranja = '2020/06/05', @vrijeme_pocetka = '12:30';
EXEC dodavanje_testiranja @ime_kandidata = 'Bilal Rahmanovic', @ime_instruktora = 'Hamko Hamkic', @id_vozila = 3, @ime_ispitivaca = 'Salko Salkic', @tip_testiranja = 'Voznja', @kategorija = 'C', @datum_testiranja = '2020/06/16', @vrijeme_pocetka = '10:30';

EXEC dodavanje_testiranja @ime_kandidata = 'Eldar Salihovic', @ime_instruktora = 'Hamko Hamkic', @id_vozila = 3, @ime_ispitivaca = 'Esef Esefovic', @tip_testiranja = 'Teorija', @kategorija = 'B', @datum_testiranja = '2020/06/05', @vrijeme_pocetka = '11:30';
EXEC dodavanje_testiranja @ime_kandidata = 'Eldar Salihovic', @ime_instruktora = 'Hamko Hamkic', @id_vozila = 3, @ime_ispitivaca = 'Alija Alic', @tip_testiranja = 'Prva pomoc', @kategorija = 'B', @datum_testiranja = '2020/06/05', @vrijeme_pocetka = '12:30';
EXEC dodavanje_testiranja @ime_kandidata = 'Eldar Salihovic', @ime_instruktora = 'Hamko Hamkic', @id_vozila = 3, @ime_ispitivaca = 'Avdo Avdic', @tip_testiranja = 'Voznja', @kategorija = 'B', @datum_testiranja = '2020/06/23', @vrijeme_pocetka = '10:30';