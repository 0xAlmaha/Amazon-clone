class DailySummaryMailer < ApplicationMailer
    
    def daily_summary
        @items = params[:item].Item.where("created_at =", Date.today)
        @users = params[:user].User.where("created_at =", Date.today)
        mail(to:"admin@mail.com", subject: "Daily Summary")
      end    
end
