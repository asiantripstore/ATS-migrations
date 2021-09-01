CREATE TABLE "tickets" (
    "id" SERIAL PRIMARY KEY UNIQUE NOT NULL,
    "user_id" INT,
    "created_at" TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    "user_assigned" INT[],
    "title" VARCHAR(50),
    "status" VARCHAR(50)
);