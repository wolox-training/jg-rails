class RentMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
  def new_rent(rent)
    @rent = rent
    @book = Book.find(rent.book_id)
    @user = User.find(rent.user_id)
    mail to: @user.email
  end
end
