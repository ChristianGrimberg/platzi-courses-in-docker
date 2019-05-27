CREATE DATABASE `PlatziBlog` DEFAULT CHARACTER SET UTF8;

USE `PlatziBlog`;
CREATE TABLE `Categorias` (
    `Id` INT NOT NULL AUTO_INCREMENT
    ,`Nombre` NVARCHAR(30) NOT NULL
    ,PRIMARY KEY (`Id`)
);

USE `PlatziBlog`;
CREATE TABLE `Etiquetas` (
    `Id` INT NOT NULL AUTO_INCREMENT
    ,`Nombre` NVARCHAR(30) NOT NULL
    ,PRIMARY KEY (`Id`)
);

USE `PlatziBlog`;
CREATE TABLE `Usuarios` (
    `Id` INT NOT NULL AUTO_INCREMENT
    ,`Login` NVARCHAR(30) NOT NULL
    ,`Password` NVARCHAR(32) NOT NULL
    ,`NickName` NVARCHAR(40) NOT NULL
    ,`Email` NVARCHAR(40) NOT NULL
    ,PRIMARY KEY (`Id`)
    ,UNIQUE INDEX `Email_UNIQUE` (`Email` ASC)
);

USE `PlatziBlog`;
CREATE TABLE `Posts` (
    `Id` INT NOT NULL AUTO_INCREMENT
    ,`Titulo` NVARCHAR(150) NOT NULL
    ,`FechaPublicacion` TIMESTAMP NULL
    ,`Contenido` TEXT NOT NULL
    ,`Status` NCHAR(8) NULL DEFAULT 'activo'
    ,`UsuarioId` INT NOT NULL
    ,`CategoriaId` INT NOT NULL
    ,PRIMARY KEY (`Id`)
);

USE `PlatziBlog`;
ALTER TABLE `Posts`
ADD INDEX `PostsUsuariosIdx` (`UsuarioId` ASC);

USE `PlatziBlog`;
ALTER TABLE `Posts`
ADD CONSTRAINT `PostsUsuarios`
    FOREIGN KEY (`UsuarioId`)
    REFERENCES `PlatziBlog`.`Usuarios` (`Id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE;

USE `PlatziBlog`;
ALTER TABLE `Posts`
ADD INDEX `PostsCategoriasIdx` (`CategoriaId` ASC);

USE `PlatziBlog`;
ALTER TABLE `Posts`
ADD CONSTRAINT `PostsCategorias`
    FOREIGN KEY (`CategoriaId`)
    REFERENCES `PlatziBlog`.`Categorias` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

USE `PlatziBlog`;
CREATE TABLE `Comentarios` (
    `Id` INT NOT NULL AUTO_INCREMENT
    ,`CuerpoComentario` TEXT NOT NULL
    ,`UsuarioId` INT NOT NULL
    ,`PostId` INT NOT NULL
    ,PRIMARY KEY (`Id`)
);

USE `PlatziBlog`;
ALTER TABLE `Comentarios`
ADD INDEX `ComentariosUsuariosIdx` (`UsuarioId` ASC);

USE `PlatziBlog`;
ALTER TABLE `Comentarios`
ADD CONSTRAINT `ComentariosUsuarios`
    FOREIGN KEY (`UsuarioId`)
    REFERENCES `PlatziBlog`.`Usuarios` (`Id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE;

USE `PlatziBlog`;
ALTER TABLE `Comentarios`
ADD INDEX `PostsComentariosIdx` (`PostId` ASC);

USE `PlatziBlog`;
ALTER TABLE `Comentarios`
ADD CONSTRAINT `ComentariosPosts`
    FOREIGN KEY (`PostId`)
    REFERENCES `PlatziBlog`.`Posts` (`Id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE;