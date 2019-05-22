Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [:new, :create]
    # collection takes URL from orginal (restaurants) and adds top at the end
    collection do
      get 'top'
      #  /restaurants/top(.:format) => restaurants#top
    end

    member do
      get 'chef'
      # /restaurants/:id/chef(.:format)  restaurants#chef
    end
  end
end
