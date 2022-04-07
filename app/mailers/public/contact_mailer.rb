class Public::ContactMailer < ApplicationMailer

  def contact_mail(contact)
    @contact = contact
    mail to: '（管理者のメールアドレス）@gmail.com', subject: '（メールのタイトル）'
  end

end
