class SendItemMailJob < ApplicationJob
  queue_as :default

  def perform(item)
    users = User.all
    ItemMailer.with(item: item).new_item_mailer(users).deliver_later
  end
end
