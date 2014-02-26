class PagesController < ApplicationController
  skip_before_filter :authorize

  def home

  end

  def about
    @title = 'About Yaku'
  end

  def menu
    @title = 'Menu'
  end

  def Specials
  end

  def location
  end

  def contact
  end

  def blog
  end
end
