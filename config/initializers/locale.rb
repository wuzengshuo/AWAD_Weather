# in config/initializer/locale.rb
I18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]
I18n.available_locales = [:en, :"zh-cn"]
I18n.default_locale = "zh-cn"