-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'funcionario'
-- 
-- ---

DROP TABLE IF EXISTS `funcionario`;
		
CREATE TABLE `funcionario` (
  `idFuncionario` INTEGER NOT NULL AUTO_INCREMENT DEFAULT NULL,
  `nomeFuncionario` VARCHAR(50) NOT NULL DEFAULT 'NULL',
  `cargo` DOUBLE NULL DEFAULT NULL,
  `email` VARCHAR(30) NULL DEFAULT NULL,
  `senha` VARCHAR(30) NULL DEFAULT NULL,
  `idLinhaMontagem` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`idFuncionario`)
);

-- ---
-- Table 'linhaMontagem'
-- 
-- ---

DROP TABLE IF EXISTS `linhaMontagem`;
		
CREATE TABLE `linhaMontagem` (
  `idLinhaMontagem` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `nomeLinhaMontagem` INTEGER NULL DEFAULT NULL,
  `descrição` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`idLinhaMontagem`)
);

-- ---
-- Table 'manual'
-- 
-- ---

DROP TABLE IF EXISTS `manual`;
		
CREATE TABLE `manual` (
  `idManual` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `título` INTEGER NULL DEFAULT NULL,
  `categoria` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`idManual`)
);

-- ---
-- Table 'atribuição'
-- 
-- ---

DROP TABLE IF EXISTS `atribuição`;
		
CREATE TABLE `atribuição` (
  `idAtribuição` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `idManual` INTEGER NULL DEFAULT NULL,
  `idLinhaMontagem` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`idAtribuição`)
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `funcionario` ADD FOREIGN KEY (idLinhaMontagem) REFERENCES `linhaMontagem` (`idLinhaMontagem`);
ALTER TABLE `atribuição` ADD FOREIGN KEY (idManual) REFERENCES `manual` (`idManual`);
ALTER TABLE `atribuição` ADD FOREIGN KEY (idLinhaMontagem) REFERENCES `linhaMontagem` (`idLinhaMontagem`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `funcionario` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `linhaMontagem` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `manual` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `atribuição` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `funcionario` (`idFuncionario`,`nomeFuncionario`,`cargo`,`email`,`senha`,`idLinhaMontagem`) VALUES
-- ('','','','','','');
-- INSERT INTO `linhaMontagem` (`idLinhaMontagem`,`nomeLinhaMontagem`,`descrição`) VALUES
-- ('','','');
-- INSERT INTO `manual` (`idManual`,`título`,`categoria`) VALUES
-- ('','','');
-- INSERT INTO `atribuição` (`idAtribuição`,`idManual`,`idLinhaMontagem`) VALUES
-- ('','','');