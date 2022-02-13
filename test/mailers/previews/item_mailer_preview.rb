# Preview all emails at http://localhost:3000/rails/mailers/item_mailer
class ItemMailerPreview < ActionMailer::Preview
    def new_item_mailer
        item = Item.new(name: 'item7', price: 10.95)
        users = User.all
        ItemMailer.with(item: item).new_item_mailer(users)
    end
end
