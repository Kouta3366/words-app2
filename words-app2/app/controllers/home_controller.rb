class HomeController < ApplicationController
  def about
  end

  def top
    @lists = List.where(user_id: @current_user.id).all.order(created_at: :asc)
  end
end
