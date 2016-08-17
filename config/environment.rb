require "bundler"
Bundler.require

APP_ROOT = FILE.expand_path("..", __dir__)

#load all controllers
Dir.glob(File.join(APP_ROOT, "app", "controllers", "*.rb"))

#load all models
Dir.glob(File.join(APP_ROOT, "app", "models", "*.rb"))

class TaskManagerApp < Sinatra::Base

  set :method_override, true
  set :root APP_ROOT
  set :views, File.join(APP_ROOT, "app", "views")
  set :public_folder, File.join(APP_ROOT, "app", "public")

end
