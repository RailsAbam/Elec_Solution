Rails.application.routes.draw do
  resources :elec_solutions

  root "home#home"
  get "home/batteries"
  get "home/solar"
  get "home/inverters"
  get "home/install"
  get "home/inquire"
  get "home/index"

end
