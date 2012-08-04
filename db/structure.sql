CREATE TABLE "devices" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "reference" varchar(255), "owner" varchar(255), "sn" varchar(255), "type" varchar(255), "description" text, "delivery_date" date, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20120803083842');