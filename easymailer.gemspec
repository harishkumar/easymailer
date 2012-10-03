# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'easymailer/version'

Gem::Specification.new do |gem|
  gem.name          = "easymailer"
  gem.version       = Easymailer::VERSION
  gem.authors       = ["harish"]
  gem.email         = ["bkholyharish@gmail.com"]
  gem.description   = %q{Easymailer gem is used to create demo mailer application instantly.This gem is very usefull for those who creating a mailer applications from scratch.This will automatically generate ActionMailer scripts and files.This will also create a demo page for you to start simply sending mails in a smart and faster way.This is used in all Rails3.2 version applications and very usefull for rails startups which removes the headache of scripting stuff.. }
  gem.summary       = %q{Easymailer gem is used to create demo mailer application instantly.This gem is very usefull for those who creating a mailer applications from scratch.This will automatically generate ActionMailer scripts and files.This will also create a demo page for you to start simply sending mails in a smart and faster way.This is used in all Rails3.2 version applications and very usefull for rails startups which removes the headache of scripting stuff..}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
