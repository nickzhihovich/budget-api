Rails.application.routes.draw do
  use_doorkeeper do
    skip_controllers :authorizations, :applications,
                     :authorized_applications
  end
  devise_for :users
  mount Base => '/'
  mount GrapeSwaggerRails::Engine => '/'
end
