class UserMailer < ApplicationMailer
  default from: 'misha2018@gmail.com'

  def email_from_portfolio(params)

    @params = params
    @myemail = "mikhail.vasyuk@gmail.com"
    mail(to: @myemail, subject: @params[:subject])
  end

end
