# Preview all emails at http://localhost:3000/rails/mailers/user_added_mailer
class UserAddedMailerPreview < ActionMailer::Preview
    def new_user_mailer
        user = User.new(name: 'Almaha', email: 'Almaha@mail.com')
        UserMailer.with(user: user).new_user_mailer
    end
end
