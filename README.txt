Description

Easymailer gem is used to create demo mailer application instantly.This gem is usefull for those who creating a mailer applications from scratch.This will automatically generate ActionMailer scripts and files.This will also create a demo page for you to start simply sending mails in a smart and faster way.This is used in all Rails3.2 version applications and mainly usefull for rails startups which removes the headache of scripting stuff..

Installation

step1 : 
gem install easymailer

step2 :
place (gem 'easymailer') in your gem file

step3 :
bundle install

step4:
initially in any controller place the Easymailer.create_mailer 
 example: 

app/controllers/demo_controller.rb
class DemoController < ApplicationController
  require 'easy_mailer'
  def index
    @message=EasyMailer.create_mailer
  end
end

app/views/index.html.erb
<%=@message%>

if you get message as "Mailer created Sucessfully" Then Change the settings in config/initializers/setup_mail.rb 
(for Gmail change username and password) which is created auomatically.
and restart your Application!

step5:
Go to link http://localhost:3000/email/send_email  or YourIP/email/send_email


          

 
