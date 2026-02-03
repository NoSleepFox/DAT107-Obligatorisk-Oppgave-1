CREATE TABLE bil (
    registreringsnummer CHAR(7) PRIMARY KEY,
    eier VARCHAR(50) NOT NULL,
    adresse VARCHAR(100),
    epost VARCHAR(100),
    telefonnummer VARCHAR(15)
    -- TODO
    -- Kanskje ferdig tabell?
);

CREATE TABLE passering (
    passering_id INTEGER PRIMARY KEY,
    registreringsnummer CHAR(7) REFERENCES bil(registreringsnummer),
    tidspunkt TIMESTAMP NOT NULL,
    bompengebod VARCHAR(50) NOT NULL
    -- TODO
    -- Midlertidig navn og kolonner
);

-- Kanskje en bompengebod tabell som inneholder kolonnene
-- bompengebod VARCHAR(50) PRIMARY KEY REFERENCES passering(bompengebod)
-- Ka det koster å kjøre igjennom
-- ...