/*DELETE BD
DROP TABLE Hotels;
DROP TABLE Clients;
DROP TABLE Chambre;
DROP TABLE TypesCHambre;
DROP TABLE Reservations;
DROP TABLE Occupations;
/*

/*CREATE TABLE HOTELS*/
CREATE TABLE HOTELS(
  NumHo NUMERIC(30) PRIMARY KEY,
  NomHo VARCHAR(30) NOT NULL,
  RueAdrHo VARCHAR(50) NOT NULL,
  VilleHo VARCHAR(30) NOT NULL,
  NbEtoilesHo NUMERIC(1) NOT NULL
);

INSERT INTO HOTELS (NumHo,NomHo,RueAdrHo,VilleHo,NbEtoilesHo) VALUES (1,'Le Palace','Rue theophile boudier','Mazargue',4);
INSERT INTO HOTELS (NumHo,NomHo,RueAdrHo,VilleHo,NbEtoilesHo) VALUES ('2','Le Sud','Rue boudeur','Mazargue','0');
INSERT INTO HOTELS (NumHo,NomHo,RueAdrHo,VilleHo,NbEtoilesHo) VALUES ('3','Marseillest','Rue st catherine','Mazargue','2');
INSERT INTO HOTELS (NumHo,NomHo,RueAdrHo,VilleHo,NbEtoilesHo) VALUES ('4','Le Paca','Rue Emile Zola','Marseille','1');
INSERT INTO HOTELS (NumHo,NomHo,RueAdrHo,VilleHo,NbEtoilesHo) VALUES ('5','Le Ricard','Rue Petin','Mazargue','3');


/*CREATE TABLE Types Chambre*/
CREATE TABLE TYPESCHAMBRE(
  Numty NUMERIC(30) PRIMARY KEY,
  NomTy VARCHAR(30) NOT NULL,
  PrixTy NUMERIC(10) NOT NULL
);

INSERT INTO TYPESCHAMBRE(Numty,NomTy,PrixTy) VALUES('1','Suite','3000');
INSERT INTO TYPESCHAMBRE(Numty,NomTy,PrixTy) VALUES('2','Simple','300');
INSERT INTO TYPESCHAMBRE(Numty,NomTy,PrixTy) VALUES('3','Simple plus','200');
INSERT INTO TYPESCHAMBRE(Numty,NomTy,PrixTy) VALUES('4','Luxe','500');
INSERT INTO TYPESCHAMBRE(Numty,NomTy,PrixTy) VALUES('5','Suite plus','30000');


/*CREATE TABLE Chambre*/
CREATE TABLE CHAMBRES(
  NumCh NUMERIC(30),
  NumHo NUMERIC(30) REFERENCES HOTELS,
  NumTy NUMERIC(30),
  PRIMARY KEY (NumCh,NumHo)
);

INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('1','1','1');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('1','1','2');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('1','1','3');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('1','1','4');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('1','1','5');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('2','1','6');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('2','1','7');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('3','1','9');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('4','1','30');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('5','1','11');

INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('1','2','1');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('1','2','2');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('1','2','3');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('1','2','4');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('1','2','5');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('2','2','6');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('2','2','7');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('3','2','8');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('3','2','9');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('4','2','30');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('5','2','11');

INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('1','3','1');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('1','3','2');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('1','3','3');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('1','3','4');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('1','3','5');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('2','3','6');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('2','3','7');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('3','3','8');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('3','3','9');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('4','3','30');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('5','3','11');

INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('1','4','1');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('1','4','2');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('1','4','3');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('1','4','4');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('1','4','5');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('2','4','6');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('2','4','7');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('3','4','8');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('3','4','9');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('4','4','30');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('5','4','11');

INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('1','5','1');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('1','5','2');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('1','5','3');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('1','5','4');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('1','5','5');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('2','5','6');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('2','5','7');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('3','5','8');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('3','5','9');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('4','5','30');
INSERT INTO CHAMBRES(Numty,NumHo,NumCh) VALUES('5','5','11');


/*CREATE TABLE Clients*/
CREATE TABLE CLIENTS(
  NumCl NUMERIC(30) PRIMARY KEY,
  NomCl VARCHAR(30),
  PrenomCl VARCHAR(30),
  RueAdrCL VARCHAR(30),
  VilleCL VARCHAR(30)
);

INSERT INTO CLIENTS(NumCl,NomCL,PrenomCl,RueAdrCl,VilleCl) VALUES('1','MAQUIN','Malorie','Rue pierre courtade','GRENOBLE');
INSERT INTO CLIENTS(NumCl,NomCL,PrenomCl,RueAdrCl,VilleCl) VALUES('2','BERTOLINI','Alban','Rue theophile boudier','');
INSERT INTO CLIENTS(NumCl,NomCL,PrenomCl,RueAdrCl,VilleCl) VALUES('3','RAFFE','Benedicte','Rue des acacias','CREON');
INSERT INTO CLIENTS(NumCl,NomCL,PrenomCl,RueAdrCl,VilleCl) VALUES('4','BLANCHETON','Fred','Rue cazaubaque','LIGNAN DE BORDEAUX');
INSERT INTO CLIENTS(NumCl,NomCL,PrenomCl,RueAdrCl,VilleCl) VALUES('5','ALAUX','Barbara','Rue des chartrons','BORDEAUX');
INSERT INTO CLIENTS(NumCl,NomCL,PrenomCl,RueAdrCl,VilleCl) VALUES('6','ALBAN1','Barbara','Rue des chartrons','BORDEAUX');
INSERT INTO CLIENTS(NumCl,NomCL,PrenomCl,RueAdrCl,VilleCl) VALUES('7','ALBAN2','Barbara2','Rue des chartrons','BORDEAUX');


/*CREATE TABLE Reservations*/
CREATE TABLE RESERVATIONS(
  NumCl NUMERIC(30)REFERENCES CLIENTS,
  NumHo NUMERIC(30)REFERENCES HOTELS,
  Numty NUMERIC(30)REFERENCES TYPESCHAMBRE,
  DateA TIMESTAMP(0) NOT NULL,
  NbJours INTERVAL DAY TO SECOND(0) DEFAULT INTERVAL '1' DAY NOT NULL CHECK(NbJours > INTERVAL '0' DAY),
  NbChambres NUMERIC(2)  DEFAULT '1' NOT NULL,
  PRIMARY KEY(NumCl,NumHo,NumTy,DateA)
  );
  
  INSERT INTO RESERVATIONS(NumCL,NumHo,NumTy,DateA,NbJours,NbChambres) VALUES('1','1','4','15-03-2017',INTERVAL '30' DAY,'1');
  INSERT INTO RESERVATIONS(NumCL,NumHo,NumTy,DateA,NbJours,NbChambres) VALUES('2','1','1','16-02-2015',INTERVAL '2' DAY,'2');
  INSERT INTO RESERVATIONS(NumCL,NumHo,NumTy,DateA,NbJours,NbChambres) VALUES('3','2','1','25-04-2016 10:30:30',INTERVAL '2' DAY,'2');
  INSERT INTO RESERVATIONS(NumCL,NumHo,NumTy,DateA,NbJours,NbChambres) VALUES('4','4','1','30-02-2016 10:30:30',INTERVAL '2' DAY,'2');
  INSERT INTO RESERVATIONS(NumCL,NumHo,NumTy,DateA,NbJours,NbChambres) VALUES('5','3','3','02-02-2016 10:30:30',INTERVAL '2' DAY,'2');

/*CREATE TABLE Occupations*/
CREATE TABLE OCCUPATIONS(
  NumCl NUMERIC(30) NOT NULL,
  NumHo NUMERIC(30),
  NumCh NUMERIC(30),
  DateA TimeStamp(0) NOT NULL,
  DateD TimeStamp(0) , /*Peut �tre null => UPDATE lors du d�part du client*/
  PRIMARY KEY(NumHo,NumCh,DateA)
);
/*
CREATE TRIGGER verifier_Dates_Occupations
  BEFORE INSERT OR UPDATE ON OCCUPATIONS
  FOR EACH ROW
  WHEN (new.DateD < DateA)
      BEGIN
          raise_application_error(-5,"error");
      END;
END;*/

  INSERT INTO  OCCUPATIONS(NumCl,NumHo,NumCh,DateA)VALUES ('1','1','100','12-02-2016 10:30:10');  
  INSERT INTO  OCCUPATIONS(NumCl,NumHo,NumCh,DateA)VALUES ('2','1','101','13-02-2016 10:30:10');
  INSERT INTO  OCCUPATIONS(NumCl,NumHo,NumCh,DateA)VALUES ('3','2','90','14-04-2016 10:30:30');
  INSERT INTO  OCCUPATIONS(NumCl,NumHo,NumCh,DateA)VALUES ('4','4','80','15-02-2016 10:30:30');
  INSERT INTO  OCCUPATIONS(NumCl,NumHo,NumCh,DateA)VALUES ('5','3','30','16-02-2016 10:30:30');
  INSERT INTO  OCCUPATIONS(NumCl,NumHo,NumCh,DateA,DateD)VALUES ('6','3','31','16-02-2016 10:30:30','18-02-2016 10:30:30');
  INSERT INTO  OCCUPATIONS(NumCl,NumHo,NumCh,DateA,DateD)VALUES ('7','3','32','16-02-2016 10:30:30','17-02-2016 10:30:30');



