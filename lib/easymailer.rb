require "easymailer/version"

module Easymailer
 
  def self.send_mail(message,email,subject,path,file_name)
    if File.file?( "#{Rails.root}/config/initializers/setup_mail.rb" )
    UserMailer.send_mail(message,email,subject,path,file_name).deliver
    else
    self.create_mailer
    end
  end

  def self.mail_settings(address,port,domain,username,password)
     ActionMailer::Base.smtp_settings = {
      :address              => address,
      :port                 => port,
      :domain               => domain,
     :user_name            => username, #Your user name
      :password             => password, # Your password
      :authentication       => 'plain',
      :enable_starttls_auto => true
   }
  end

end
