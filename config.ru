require "bundler"
Bundler.require

$LOAD_PATH.unshift(File.expand_path("app", __dir__))

require "controlers/taksmanager_app"

run TaskManagerApp
