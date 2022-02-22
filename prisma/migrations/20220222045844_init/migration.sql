-- CreateTable
CREATE TABLE `Abc` (
    `id` BIGINT NOT NULL,
    `enum` ENUM('A', 'B', 'C') NOT NULL,
    `enum2` ENUM('D', 'E', 'F') NOT NULL,
    `enum3` ENUM('G', 'H', 'I') NOT NULL,
    `float` DOUBLE NOT NULL,

    PRIMARY KEY (`id`, `enum`, `enum2`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
