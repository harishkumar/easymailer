class EmailController < ApplicationController
   require 'easymailer'
  def send_email
    if request.post?
      unless params[:email][:to].nil? or params[:email][:to].blank?
      to_mail=params[:email][:to]
      subject=params[:email][:subject]
      message=params[:email][:message]
      attachment=params[:email][:file]

       unless attachment.nil? and attachment.blank?
      file_name=attachment.original_filename
      dir="#{Rails.root}/tmp/uploads/"
      path=File.join(dir,file_name)
      File.open(path,'w+')
      File.open(path, 'wb') { |f| f.write(attachment.read) }

      Easymailer.send_mail(message,to_mail,subject,path,file_name).deliver
      File.delete(path)
      else
      Easymailer.send_mail(message,to_mail,subject,nil,nil).deliver
      end
      flash[:notice]='Email Sent Sucesssfully'
      else
      flash[:notice]='Please enter Email Id..!'
      end
    end
  end
end
