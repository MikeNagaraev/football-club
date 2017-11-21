Rails.application.routes.draw do
    get 'tournament/index', as: 'tournaments'
    get 'team/index', as: 'teams'
    get 'player/index', as: 'players'

    get 'tournament_team/index'

    get 'tournament_team/create'

    get 'tournament_team/show'

    get 'tournament_player/index'

    get 'tournament_player/create'

    get 'tournament_player/show'

    get 'team/create'

    get 'team/show'

    get 'player/create'

    get 'player/show'

    post 'tournament/create', to: 'tournament#create', as: 'create_tournament'

    get 'tournament/new'

    get 'tournament/show'

    root 'welcome#home'

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
