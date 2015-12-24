Rails.application.routes.draw do
  resources :banks
  resources :registrations do
    collection do
      get :user_registration
    end
  end

  resources :banks
  resources :ci_companies
  resources :banking_users do
    put :disable
    put :enable
  end
  
  resources :company_inspectors
  resources :user_invitations do
    collection do
      get :banking_user_invitation
      post :send_banking_user_invitation
    end
  end
end
