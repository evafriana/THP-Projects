class PagesController < ApplicationController
  def home
    @user = User.new
    @gossips = Gossip.all.reverse.take(5)
  end

  def team

  end

  def contact

  end
end
