get '/urls' do

  @url = URL.all
  erb :'urls/index'
end

post '/urls/:id/delete' do
url = URL.find(params[:id])
url.destroy
redirect to('/urls')
  end

get '/urls/:id/edit' do
@url = URL.find(params[:id])
erb :'urls/edit'
end

post '/urls/:id' do
@url = URL.find(params[:id])
@url.update_attributes(params[:url])
redirect to('/urls')
  end



get '/urls/new' do
  @url = URL.new
erb :'urls/new'
end

post '/urls' do
@url = URL.new(params[:url])
@url.save
redirect to ('/urls')
end





