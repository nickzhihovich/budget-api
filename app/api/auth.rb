class Auth < Base
  namespace 'auth' do
    desc 'Registration.'
    params do
      requires :email, type: String, desc: 'Your email'
      requires :password
      requires :password_confirmation, same_as: :password
    end
    post 'sing_up' do
      User.create!(declared(params))
    end
  end
end
