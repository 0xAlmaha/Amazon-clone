class SendUserMailJob < ApplicationJob
  queue_as :default

  def perform(user)
    UserAddedMailer.with(user: user).new_user_mailer.deliver_later
  end
end
