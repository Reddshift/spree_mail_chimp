Deface::Override.new(
  :virtual_path => "shared/_user_form",
  :name => "mailchimp_signup_below_password_fields",
  :insert_after => "[data-hook='signup_below_password_fields']",
  :partial => "users/subscribe_to_newsletter",
  :disabled => false)

Deface::Override.new(
  :virtual_path => "admin/configurations/index",
  :name => "mailchimp_admin_configurations_menu",
  :insert_bottom => "[data-hook='admin_configurations_menu']",
  :text => "<%= configurations_menu_item(I18n.t('mailchimp_settings'), admin_mail_chimp_settings_path, I18n.t('mailchimp_settings_description')) %>",
  :disabled => false)

