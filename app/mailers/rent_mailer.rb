class RentMailer < ActionMailer::Base
  default from: Rails.application.credentials.default_mail
  layout 'mailer'
  def new_rent(rent)
    @rent = rent
    @book = Book.find(rent.book_id)
    @user = User.find(rent.user_id)
    mail to: @user.email
  end
end