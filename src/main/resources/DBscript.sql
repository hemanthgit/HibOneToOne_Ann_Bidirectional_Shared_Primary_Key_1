--------------------------------------------------------
--  DDL for Table AUTHOR
--------------------------------------------------------
  CREATE TABLE "AUTHOR" 
   ("ID" NUMBER(20,0), 
	"NAME" VARCHAR2(255 BYTE)
   );
--------------------------------------------------------
--  DDL for Index AUTHOR_PK
--------------------------------------------------------
  CREATE UNIQUE INDEX "AUTHOR_PK" ON "AUTHOR" ("ID") ;
--------------------------------------------------------
--  Constraints for Table AUTHOR
--------------------------------------------------------
  ALTER TABLE "AUTHOR" ADD CONSTRAINT "AUTHOR_PK" PRIMARY KEY ("ID");
  ALTER TABLE "AUTHOR" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "AUTHOR" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------------------------------------------------------

--------------------------------------------------------
--  DDL for Table AUTOBIOGRAPHY
--------------------------------------------------------
  CREATE TABLE "AUTOBIOGRAPHY" 
   ("AUTHOR_ID" NUMBER, 
	"BOOK_NAME" VARCHAR2(255 BYTE)
   )  ;
--------------------------------------------------------
--  Constraints for Table AUTOBIOGRAPHY
--------------------------------------------------------
  ALTER TABLE "AUTOBIOGRAPHY" MODIFY ("BOOK_NAME" NOT NULL ENABLE);
  ALTER TABLE "AUTOBIOGRAPHY" MODIFY ("AUTHOR_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table AUTOBIOGRAPHY
--------------------------------------------------------
  ALTER TABLE "AUTOBIOGRAPHY" ADD CONSTRAINT "AUTHOR_BIOGRAPHY" FOREIGN KEY ("AUTHOR_ID")
	  REFERENCES "AUTHOR" ("ID") ENABLE;