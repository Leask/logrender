CREATE TABLE "rules" (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `category` TEXT NOT NULL, `pattern` TEXT NOT NULL, `first_matched` DATETIME, `last_matched` DATETIME, `hits` INTEGER DEFAULT 0);
