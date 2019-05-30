SELECT
    `Posts`.`Id`
    ,`Posts`.`Titulo`
    ,`Posts`.`FechaPublicacion`
    ,SUBSTRING(`Posts`.`Contenido`,1,40) AS `ContenidoBreve`
    ,`Posts`.`Status`
    ,`Usuarios`.`Login`
    -- ,COUNT(*) OVER (PARTITION BY `Usuarios`.`Login`) AS `PosteosTotales`
    ,`Categorias`.`Nombre`
FROM `PlatziBlog`.`Posts`
    INNER JOIN `PlatziBlog`.`Usuarios` ON `Usuarios`.`Id` = `Posts`.`UsuarioId`
    INNER JOIN `PlatziBlog`.`Categorias` ON `Categorias`.`Id` = `Posts`.`CategoriaId`
ORDER BY `Posts`.`Id` DESC;