class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @class = ""
  end
end
