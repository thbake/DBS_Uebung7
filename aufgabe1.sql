CREATE TABLE public."Fakt"
(
  "SPA_ID" integer NOT NULL,
  "REG_ID" integer NOT NULL,
  "QUA_ID" integer NOT NULL,
  "Umsatz" numeric(10,2),
  "Gewinn" numeric(10,2),
  CONSTRAINT pk_fakt PRIMARY KEY ("SPA_ID", "REG_ID", "QUA_ID")
)


UPDATE Fakt
SET Umsatz = 20.51, Gewinn = 10.42
WHERE SPA_ID = 1 AND REG_ID = 1 AND QUA_ID = 10;

SELECT * 
FROM Fakt
GROUP BY GROUPING SETS(
  (SPA_ID),
  (REG_ID),
  (QUA_ID),
  (),
  ()
)

SELECT * 
FROM Fakt
GROUP BY CUBE(
  (SPA_ID),
  (REG_ID),
  (QUA_ID),
)

