require_dependency 'redmine_mail_intergration'

Redmine::Plugin.register :redmine_mail_intergration do
  name 'Redmine mail intergration plugin'
  author 'Yusuke Kokubo, Toshiaki Baba'
  description 'more mail intergration than redmine receive email.'
  version '0.0.1'
  
  requires_redmine :version_or_higher => '2.3.0'
end

Rails.configuration.to_prepare do
  MailHandler.send(:include, MailIntergrationPatch)
end

