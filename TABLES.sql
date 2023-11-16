CREATE TABLE PILOT(
    ID_PILOT INT,
    NOM VARCHAR (10),
    LLINATGE VARCHAR (20),
    ÀLIES VARCHAR (20),
    NOMBRE_ACTUAL VARCHAR (20),
    ID_PAIS INT,
    FOREIGN KEY (ID_PAIS) REFERENCES PAIS(ID_PAIS),
    PRIMARY KEY (ID_PILOT, ID_PAIS)
);

CREATE TABLE PAIS(
    ID_PAIS INT PRIMARY KEY,
    NOM_PAIS VARCHAR (20) 
);

CREATE TABLE EQUIP(
    ID_EQUIP INT,
    NOM_EQUIP VARCHAR (20),
    CAP_EQUIP VARCHAR (20),
    ID_MARCA INT,
    FOREIGN KEY (MARCA) REFERENCES MARCA(ID_MARCA),
    PRIMARY KEY (ID_EQUIP, ID_MARCA)
);

CREATE TABLE MARCA(
    ID_MARCA INT PRIMARY KEY,
    NOM_MARCA VARCHAR (20) 
);

CREATE TABLE RESULTAT(
    ID_RES INT PRIMARY KEY
    RESULTADOS VARCHAR (20),
    INCIDENCIAS VARCHAR (50)
);

CREATE TABLE GRAN_PREMI(
    ID_PREMI INT,
    NOM_PREMI VARCHAR (20),
    DATA_PREMI DATE,
    ID_CIRCUIT INT,
    FOREIGN KEY (ID_CIRCUIT) REFERENCES CIRCUIT(ID_CIRCUIT)
    PRIMARY KEY (ID_PREMI, ID_CIRCUIT)
);
CREATE TABLE CIRCUIT(
    ID_CIRCUIT INT,
    NOM VARCHAR (20),
    LONGITUD_KM INT,
    TELÈFON INT,
    TEMPS_VOLTA_MÉS_RÀPIDA_SEG INT,
    ID_PAIS INT,
    FOREIGN KEY (ID_PAIS) REFERENCES PAIS(ID_PAIS),
    PRIMARY KEY (ID_CIRCUIT, ID_PAIS)
);

CREATE TABLE CIRCUIT_PILOT(
    ANY INT,
    ID_CIRCUIT INT,
    ID_PILOT INT,
    FOREIGN KEY (ID_CIRCUIT) REFERENCES CIRCUIT(ID),
    FOREIGN KEY (ID_POLOT) REFERENCES PILOT(ID),
    PRIMARY KEY (ANY, ID_CIRCUIT, ID_PILOT)
);

CREATE TABLE R_PILOT_GRAN_PREMI_ RESULTAT (
    ID_PREMI INT,
    ID_PILOT INT, 
    ID_RES INT,
    PRIMARY KEY (ID_PREMI, ID_PILOT, ID_RES)
);

CREATE TABLE R_PILOT_EQUIP(
    ID_PILOT INT,
    ID_EQUIP INT,
    ANY DATE,
    DORSAL INT,
    PRIMARY KEY (ID_PILOT, ID_EQUIP, ANY)
);