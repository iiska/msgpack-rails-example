Rails.application.routes.draw do
  post "/example", to: "example#echo"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
