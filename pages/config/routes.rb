Rails.application.routes.draw do
	get 'superjump' => 'jump#jumpjump'
	root 'jump#jumpjump'
	get 'warp' => 'jump#warp'
  	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
