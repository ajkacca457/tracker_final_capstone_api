Rails.application.routes.draw do

namespace "api" do
namespace "v1" do

resources :courses
resource :users, only: [:index,:create]
post "/login", to: "users#login"
get "/auto_login", to: "users#auto_login"

end


end


end
