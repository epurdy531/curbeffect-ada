Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  resources :contract_requests, only: %i[index new create edit update destroy]
  resources :entities, only: %i[index show new create edit update destroy]
  post "entities/:id/scan" => "scans#create", as: :entity_scan
  post "scan_url" => "scans#url", as: :scan_url

  get  "test-html" => "test_html#index", as: :test_html
  post "test-html" => "test_html#create"
  get  "test-html/*name" => "test_html#show", as: :test_html_file, format: false

  # Local-development-only vendor portal tracker.
  if Rails.env.development?
    resources :vendor_registrations, only: %i[index new create edit update], path: "vendor-portal"
  end

  root "contract_requests#index"
end
