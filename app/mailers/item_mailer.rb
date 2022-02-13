class ItemMailer < ApplicationMailer
    def new_item_mailer(users)
        @item = params[:item]
        users = User.all
        mail(to: users.pluck(:email), subject: "new item created")
    end
end
