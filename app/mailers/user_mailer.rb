class UserMailer < ActionMailer::Base
  default :from => "ggarateramirez@gmail.com"
  
  def registration_confirmation(user)
    @user = user
    attachments["Granpa.png"] = File.read("#{Rails.root}/public/images/Granpa.png")
    mail(:to => "#{user.name} <#{user.email}>", :subject => "Registro en Granpa.com")
  end
end

