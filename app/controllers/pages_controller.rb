class PagesController < ApplicationController
  skip_before_filter :authorize

  def home
    if params[:set_locale]
      redirect_to root_path(:locale => params[:set_locale])
    end
  end

  def about
  end

  def menu
  end

  def specials
  end

  def location
  end

  def contact
  end

  def blog
  end
end
