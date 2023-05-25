json.extract! movie_director, :id, :movie_id, :director_id, :created_at, :updated_at
json.url movie_director_url(movie_director, format: :json)
