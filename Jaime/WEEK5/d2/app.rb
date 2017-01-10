require "sinatra"
require "sinatra/reloader"
require "pry"
require "pg"

get '/main' do
  erb :main
end

get '/library' do
  @listings
  conn = PG.connect(dbname: 'youtube-app')
  @listings = conn.exec( "SELECT * FROM videos" )
  erb :library
end

get '/movie/:id' do
  @movie
  id = params['id']
  conn = PG.connect(dbname: 'youtube-app')
  conn.exec( "SELECT * FROM videos WHERE id = #{id};" ) do |result|
    pass unless result.one?
    @movie = result.entries[0]
    url = @movie['url']
    @url_code = url.split('=')[1]
    erb :movie
    end
end

post '/main' do
  title = @params['title']
  description = @params['description']
  url = @params['url']
  conn = PG.connect(dbname: 'youtube-app')
  conn.exec( "INSERT INTO videos (title, description, url) VALUES ('#{title}', '#{description}', '#{url}');")
  redirect to '/library'
end
