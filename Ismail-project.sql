
CREATE TABLE Hospital_Info_1 ( hosp_ID int NOT NULL, hosp_name varchar(max) NOT NULL, City_ID int NOT NULL, M_id int NOT NULL primary key(hosp_ID) -- CONSTRAINT hospID_pk PRIMARY KEY (hosp_ID) );

CREATE TABLE Hospital_Info_2 ( hosp_ID int NOT NULL, hosp_name varchar(max) NOT NULL, hosp_needed_Bgrp varchar(10), hosp_needed_qnty int primary key(hosp_ID,hosp_needed_Bgrp) -- CONSTRAINT hospID_pk PRIMARY KEY (hosp_ID) );

CREATE TABLE Recipient ( reci_ID int NOT NULL, reci_name varchar(max) NOT NULL, reci_age varchar(max), reci_Brgp varchar(max), reci_Bqnty float, reco_ID int NOT NULL, City_ID int NOT NULL, M_id int NOT NULL, reci_sex varchar(max), reci_reg_date date -- CONSTRAINT reciid_pk PRIMARY KEY (reci_id) );

CREATE TABLE Recording_Staff ( reco_ID int NOT NULL, reco_Name varchar(max) NOT NULL, reco_phNo bigint -- CONSTRAINT recoID_pk PRIMARY KEY (reco_ID) );


