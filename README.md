# Easymailer

Easymailer gem is used to create demo mailer application instantly.This gem is usefull for those who creating a mailer 
applications from scratch.This will automatically generate ActionMailer scripts and files.This will also create a demo 
page for you to start simply sending mails in a smart and faster way.This is used in all Rails3.2 version applications 
and mainly usefull for rails startups which removes the headache of scripting stuff..

## Installation

Add this line to your application's Gemfile:

    gem 'easymailer'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install easymailer

## Usage

step1 :
gem install easymailer

step2 : place below line in your gem file

gem 'easymailer', :git => 'git://github.com/harishkumar/easymailer.git'

step3 :

bundle install

step4 : Run command

rails g easymailer

step5:

Change the settings in config/initializers/setup_mail.rb
(for Gmail change username and password) which is created auomatically.
now start your Application!

step6:

Go to link http://localhost:3000/email/send_email or YourIP/email/send_email

##More Features
you can use independently this gem APIs to send mail and change configuration on the fly
To send Email -
Easymailer.send_mail(message,email,subject,attachment_path,attachment_file_name)

To change config (example sender id and using another mail vendor apart from gmail)
Easymailer.mail_settings(address,port,domain,username,password)
Note: for Easymailer.mail_settings Api while using this the session will stored with same domain and username and 
password to change this again you need to use the same api

example:
First you need to use below api if you dont want to use default ActionMailer settings

Easymailer.mail_settings(address,port,domain,new_username,password) # now in next line use the below code which will 
send by using this new_username..

Easymailer.send_mail(message,email,subject,attachment_path,attachment_file_name)

Now the session will be of this new username and if you want to change sender username then again use mail_settings Api or to use default settings restart your application.

          
##Limitations

Only works for Rails3.2 or above applications..

Link:  https://rubygems.org/gems/easymailer
