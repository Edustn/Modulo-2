BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "tb_pessoa" (
	"pessoa_ID"	INTEGER NOT NULL,
	"nome"	TEXT NOT NULL,
	"endereco"	TEXT NOT NULL,
	"email"	TEXT NOT NULL,
	"telefone"	TEXT NOT NULL,
	PRIMARY KEY("pessoa_ID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "tb_realizacao" (
	"realizacao_ID"	INTEGER NOT NULL,
	"descricaoRealizacao"	TEXT NOT NULL,
	"pessoa_ID"	INTEGER NOT NULL,
	FOREIGN KEY("pessoa_ID") REFERENCES "tb_pessoa"("pessoa_ID"),
	PRIMARY KEY("realizacao_ID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "tb_personalidade" (
	"personalidade_ID"	INTEGER NOT NULL,
	"tipo_personalidade"	TEXT NOT NULL,
	"pessoa_ID"	INTEGER NOT NULL,
	FOREIGN KEY("pessoa_ID") REFERENCES "tb_pessoa"("pessoa_ID"),
	PRIMARY KEY("personalidade_ID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "tb_cargo" (
	"cargo_ID"	INTEGER NOT NULL,
	"tipo_cargo"	TEXT NOT NULL,
	"pessoa_ID"	INTEGER NOT NULL,
	PRIMARY KEY("cargo_ID" AUTOINCREMENT),
	FOREIGN KEY("pessoa_ID") REFERENCES "tb_pessoa"("pessoa_ID")
);
CREATE TABLE IF NOT EXISTS "tb_formacao" (
	"formacao_ID"	INTEGER NOT NULL,
	"tipo_fomrcao"	TEXT NOT NULL,
	"pessoa_ID"	INTEGER NOT NULL,
	PRIMARY KEY("formacao_ID"),
	FOREIGN KEY("pessoa_ID") REFERENCES "tb_pessoa"("pessoa_ID")
);
CREATE TABLE IF NOT EXISTS "tb_habilidade" (
	"habilidade_ID"	INTEGER NOT NULL,
	"tipo_habilidade"	TEXT NOT NULL,
	"pessoa_ID"	INTEGER NOT NULL,
	PRIMARY KEY("habilidade_ID"),
	FOREIGN KEY("pessoa_ID") REFERENCES "tb_pessoa"("pessoa_ID")
);
CREATE TABLE IF NOT EXISTS "tb_exeperiencia" (
	"experiencia_ID"	INTEGER NOT NULL,
	"tipo_experiencia"	INTEGER NOT NULL,
	"pessoa_ID"	NUMERIC NOT NULL,
	PRIMARY KEY("experiencia_ID"),
	FOREIGN KEY("pessoa_ID") REFERENCES "tb_pessoa"("pessoa_ID")
);
COMMIT;
