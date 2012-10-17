CoreSample::Application.routes.draw do
  scope(path: "tshirts", controller: :tshirts, as: :tshirts) do
    match :buy
    match :transparent_redirect_complete
    match :successful_purchase
    match :successful_delayed_purchase
    match :offsite_redirect
    match :offsite_callback, format: :xml
    match :history
  end

  root to: "home#index"
end
