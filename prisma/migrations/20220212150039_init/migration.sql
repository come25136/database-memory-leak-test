-- CreateTable
CREATE TABLE `Abc` (
    `id` BIGINT NOT NULL,
    `enum` ENUM('A', 'B', 'C') NOT NULL,

    PRIMARY KEY (`id`, `enum`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
