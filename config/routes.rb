Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  namespace :api do
  	namespace :v1 do
      scope :teams do
	     get 'get_by_id/:id', to: 'teams#get_by_id'
	     post 'create', to: 'teams#create'
	     patch 'update_by_id/:id', to: 'teams#update_by_id'
      end

      scope :weapon_attributes do
        get 'get_all', to: 'weapon_attributes#get_all'
        get 'get_by_id/:id', to: 'weapon_attributes#get_by_id'
      end
	  end
  end
end
