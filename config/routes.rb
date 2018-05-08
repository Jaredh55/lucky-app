Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  get '/lucky_url' => 'api/pages#fortune_action'
  get '/lotto_url' => 'api/pages#lotto_action'
  get '/bottles_url' => 'api/pages#bottles_action'
  get '/page_count_url' => 'api/pages#page_count_action'
end
