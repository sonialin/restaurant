class ArchivesController < ApplicationController
  def index
  	@title = 'Blog Archives'
  	@posts = Post.all(:select => "title, id, created_at", :order => "created_at DESC")
    @post_months = @posts.group_by { |t| t.created_at.beginning_of_month }
  end
end
