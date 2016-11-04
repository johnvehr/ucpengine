module Ucpengine
  class Engine < ::Rails::Engine
    isolate_namespace Ucpengine

    require 'jquery-rails'
    require 'font-awesome-rails'
    require 'redcarpet'
    require 'pygments'
  end
end
