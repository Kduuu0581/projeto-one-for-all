SELECT
 artista.artista_nome AS artista,
 album.album_nome AS album,
 COUNT(seguindo_artistas.usuario_id) AS pessoas_seguidoras
FROM 
 album
 INNER JOIN artista ON artista.artista_id = album.artista_id
 INNER JOIN seguindo_artistas ON seguindo_artistas.artista_id = artista.artista_id
GROUP BY artista, album ORDER BY pessoas_seguidoras DESC, artista, album; 