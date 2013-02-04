class UserNotifier < ActionMailer::Base
  default from: "from@example.com"

  def welcome_mail(user_id)
    @user = User.find(user_id)

    mail to: @user.email,
         subject: "Welcome to helloWorld Tech Hub"
  end

end
