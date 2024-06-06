# Workshop

For today's workshop, we'll be providing the data required for graphs and charts
to work on the Topsify website!

There's an extra page in the docs on
[many-to-many relationships](https://tech-docs.corndel.com/sql/many-to-many.html)
which will help a lot with the workshop.

## Total Track Duration per Album

A bar chart showing the total duration of all tracks for each album.

Just include the 10 longest albums.

```sql
SELECT albums.name, SUM(tracks.duration_ms) AS total_duration
FROM albums
JOIN tracks ON albums.id = tracks.album_id
GROUP BY albums.name;
```

## Most Explicit Albums

Bar chart

## Radar chart per artist

Find the avg of:

- danceability

- energy

- speechiness

- acousticness

- liveness

- valence

for each album and turn it into a radar chart per album.
