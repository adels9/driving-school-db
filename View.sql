CREATE VIEW kategorija_a  
AS  SELECT * FROM kandidati WHERE kategorija = 'A';

CREATE VIEW kategorija_b  
AS  SELECT * FROM kandidati WHERE kategorija = 'B';

CREATE VIEW kategorija_c  
AS  SELECT * FROM kandidati WHERE kategorija = 'C';

CREATE VIEW polozena_voznja
AS SELECT * FROM kandidati WHERE polozen_ispit = 'Da';

CREATE VIEW polozena_teorija
AS SELECT * FROM kandidati WHERE polozena_teorija = 'Da';

CREATE VIEW polozena_pomoc
AS SELECT * FROM kandidati WHERE polozena_prvapomoc = 'Da';