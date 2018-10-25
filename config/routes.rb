Rails.application.routes.draw do
  root to: 'xebia_event#list'
  get 'xebia_event/list'
  resources :xebia_event do
    collection do
      get :show_event_details
    end
  end
end
