json.extract! movie_genre, :id, :movie_id, :genre_id, :created_at, :updated_at
json.url movie_genre_url(movie_genre, format: :json)
