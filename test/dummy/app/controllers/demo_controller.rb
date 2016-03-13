class DemoController < ApplicationController
  def show
    render template: "demo/#{params[:page]}"
  end
end
