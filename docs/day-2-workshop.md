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
