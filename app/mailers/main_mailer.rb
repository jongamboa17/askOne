class MainMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.main_mailer.notify_question_author.subject
  #
  def notify_question_author
    @greeting = "Hi"

    mail to: "to@example.org"
    mail subject: "New answer to your question"
  end
end
