json.extract! detail, :id, :poster, :trailers, :video, :movie_id, :created_at, :updated_at
json.url detail_url(detail, format: :json)
json.poster url_for(detail.poster)
json.trailers url_for(detail.trailers)
json.video url_for(detail.video)
