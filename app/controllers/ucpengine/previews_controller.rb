require_dependency "ucpengine/application_controller"

module Ucpengine
  class PreviewsController < ApplicationController
    def show
      render layout: false
    end
  end
end
