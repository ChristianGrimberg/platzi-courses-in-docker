-- Posts con mayor cantidad de Etiquetas, con las Etiquetas separadas por coma
SELECT DISTINCT
    Posts.Titulo
    ,COUNT(Etiquetas.Nombre) AS 'CantidadEtiquetas'
    ,GROUP_CONCAT(Etiquetas.Nombre) AS 'Etiquetas'
FROM PlatziBlog.Posts
    INNER JOIN PlatziBlog.PostsEtiquetas ON PostsEtiquetas.PostId = Posts.Id
    INNER JOIN PlatziBlog.Etiquetas ON Etiquetas.Id = PostsEtiquetas.EtiquetaId
GROUP BY Posts.Titulo
ORDER BY
    CantidadEtiquetas DESC
    ,Posts.Titulo ASC
LIMIT 5;

-- Etiquetas sin Posts
SELECT
    Etiquetas.Nombre
FROM PlatziBlog.PostsEtiquetas
    LEFT JOIN PlatziBlog.Etiquetas ON Etiquetas.Id = PostsEtiquetas.EtiquetaId
WHERE PostsEtiquetas.EtiquetaId IS NULL;

-- Cantidad de Posts por Categorias
SELECT
    Categorias.Nombre
    ,COUNT(Posts.Id) AS 'CantidadDePosts'
    ,GROUP_CONCAT(Posts.Titulo) AS 'TitulosDePosts'
FROM PlatziBlog.Posts
    INNER JOIN PlatziBlog.Categorias ON Categorias.Id = Posts.CategoriaId
GROUP BY Categorias.Nombre
ORDER BY CantidadDePosts DESC
LIMIT 5;

-- Cantidad de Posts por Usuario
SELECT
    Usuarios.NickName
    ,COUNT(Posts.Id) AS 'CantidadDePosts'
    ,GROUP_CONCAT(Categorias.Nombre) AS 'Categorias'
FROM PlatziBlog.Usuarios
    INNER JOIN PlatziBlog.Posts ON Posts.UsuarioId = Usuarios.Id
    INNER JOIN PlatziBlog.Categorias ON Categorias.Id = Posts.CategoriaId
GROUP BY Usuarios.NickName
ORDER BY CantidadDePosts DESC;

-- Posts huerfanos
SELECT
    Usuarios.NickName
FROM PlatziBlog.Posts
    LEFT JOIN PlatziBlog.Usuarios ON Usuarios.Id = Posts.UsuarioId
WHERE Usuarios.Id IS NULL;