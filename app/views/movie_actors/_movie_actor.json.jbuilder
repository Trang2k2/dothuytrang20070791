json.extract! movie_actor, :id, :movie_id, :actor_id, :created_at, :updated_at
json.url movie_actor_url(movie_actor, format: :json)
