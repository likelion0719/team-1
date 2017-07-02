Rails.application.routes.draw do
 root 'movie#index'
get'/movie/index' => 'movie/index'
 get '/movie/result' => 'movie#result'
 

 
end
