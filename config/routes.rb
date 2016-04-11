Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'ip' => 'json_test#ip'
  get 'headers' => 'json_test#headers'
  get 'date' => 'json_test#date'
  get 'echo/*echo_params' => 'json_test#echo'
  get 'md5' => 'json_test#md5'
end
