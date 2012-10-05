class UserMailer < ActionMailer::Base 
 default :from => 'notifier@gmail.com' 

     def send_mail(message,email,subject,path,file_name)
        @message=message
          unless path.nil? 
          attachments["#{file_name}"] = File.read(path)
          end 
        mail(:to => email,:subject => subject)
     end

end
