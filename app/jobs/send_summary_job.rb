class SendSummaryJob < ApplicationJob
  queue_as :default

  def perform
    DailySummaryMailer.with(item: items, user: users).daily_summary.deliver_now
  end
end
