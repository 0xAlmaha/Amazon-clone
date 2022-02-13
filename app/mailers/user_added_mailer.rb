class UserAddedMailer < ApplicationMailer
    def new_user_mailer
        @user = params[:user]
        mail(to:"#{@user.email}",subject: "new user added")
    end
end
