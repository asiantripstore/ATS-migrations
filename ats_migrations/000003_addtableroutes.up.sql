CREATE TABLE "api_infos" (
    "id" SERIAL PRIMARY KEY UNIQUE NOT NULL,
    "app_name" VARCHAR(255) UNIQUE,
    "host" VARCHAR(255),
    "port" VARCHAR(255)
);

CREATE TABLE "route_infos" (
    "id" SERIAL PRIMARY KEY UNIQUE NOT NULL,
    "path" VARCHAR(255),
    "method" VARCHAR(255),
    "name" VARCHAR(255),
    "api_infos_id" INT NOT NULL,
    FOREIGN KEY ("api_infos_id") REFERENCES api_infos("id") ON DELETE CASCADE
);


