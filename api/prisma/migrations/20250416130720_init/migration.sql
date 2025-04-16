-- CreateTable
CREATE TABLE `Aluno` (
    `ra` INTEGER NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(100) NOT NULL,
    `email` VARCHAR(255) NOT NULL,

    PRIMARY KEY (`ra`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Telefone` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `ra` INTEGER NOT NULL,
    `numero` VARCHAR(255) NOT NULL,
    `tipo` VARCHAR(255) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Atividade` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(100) NOT NULL,
    `data_inicio` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `data_entrega` DATETIME(3) NULL,
    `nota` INTEGER NULL,
    `peso` FLOAT NOT NULL,
    `parcial` FLOAT NULL,
    `ra` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Telefone` ADD CONSTRAINT `Telefone_ra_fkey` FOREIGN KEY (`ra`) REFERENCES `Aluno`(`ra`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Atividade` ADD CONSTRAINT `Atividade_ra_fkey` FOREIGN KEY (`ra`) REFERENCES `Aluno`(`ra`) ON DELETE CASCADE ON UPDATE CASCADE;
