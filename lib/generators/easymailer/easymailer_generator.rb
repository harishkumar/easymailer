class EasymailerGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
  argument :easymailer_name,:type=>:string,:default=>'application'

  def generate_easymailer
  copy_file 'user_mailer.rb', 'app/mailers/user_mailer.rb'
  empty_directory "app/views/user_mailer"
  empty_directory "tmp/uploads"
  empty_directory "app/views/email"
  copy_file 'send_mail.text.erb','app/views/user_mailer/send_mail.text.erb'
  copy_file 'setup_mail.rb','config/initializers/setup_mail.rb'
  copy_file 'email_controller.rb','app/controllers/email_controller.rb'
  copy_file 'send_email.html.erb','app/views/email/send_email.html.erb'
 
  insert_into_file "config/routes.rb", "match 'email/send_email'=>'email#send_email' \n", :after => "Application.routes.draw do\n"
  end
end
