class RentMailer < ActionMailer::Base
  default from: Rails.application.credentials.default_mail
  layout 'mailer'

  def new_rent(rent)
    @rent = rent
    @book = Book.find(rent.book_id)
    @user = User.find(rent.user_id)
    I18n.with_locale(@user.locale) do
      mail to: @user.email, subject: I18n.t('activerecord.models.attributes.new_rent')
    end
  end
end
