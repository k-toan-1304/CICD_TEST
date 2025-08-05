CREATE SCHEMA "CICD_DB";

CREATE TABLE "CICD_DB".user (
    id uuid DEFAULT NOT NULL,
    name character varying NOT NULL,
    email character varying NOT NULL
);

INSERT INTO users(name, email)
VALUES ('a', 'a@gmail.com'), ('b', 'b@gmail.com'), ('c', 'c@mail.com'), ('d', 'd@mail.com');