CREATE TABLE public."Fakt"
(
  "SPA_ID" integer NOT NULL,
  "REG_ID" integer NOT NULL,
  "QUA_ID" integer NOT NULL,
  "Umsatz" numeric(10,2),
  "Gewinn" numeric(10,2),
  CONSTRAINT pk_fakt PRIMARY KEY ("SPA_ID", "REG_ID", "QUA_ID")
)
