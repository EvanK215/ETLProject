-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/DCHqkE
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- ETL project

CREATE TABLE "DUI" (
    "State" string   NULL,
    "DUI" int   NOT NULL,
    "Fatalities" int   NOT NULL,
    "Population" int   NOT NULL,
    "Sunday_Sales" string   NULL,
    CONSTRAINT "pk_DUI" PRIMARY KEY (
        "State"
     )
);

CREATE TABLE "open_beer_db" (
    "Name" string   NULL,
    "id" int   NOT NULL,
    "brewery_id" int   NOT NULL,
    "Style" string   NULL,
    "Category" string   NULL,
    "Brewer" string   NULL,
    "Address" string   NULL,
    "City" string   NULL,
    "State" string   NULL,
    "Country" string   NULL
);

ALTER TABLE "open_beer_db" ADD CONSTRAINT "fk_open_beer_db_State" FOREIGN KEY("State")
REFERENCES "DUI" ("State");

