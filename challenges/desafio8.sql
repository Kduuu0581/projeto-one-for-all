SELECT
 artista.artista_nome AS artista,
 album.album_nome AS album
FROM
 artista INNER JOIN album ON album.artista_id = artista.artista_id
 WHERE artista.artista_nome = 'Elis Regina'
 ORDER BY album;