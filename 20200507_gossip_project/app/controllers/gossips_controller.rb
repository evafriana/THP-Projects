class GossipsController < ApplicationController
  before_action :set_gossip, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user
  def index
    @gossips = Gossip.all.reverse
  end
  def new
    @gossip = Gossip.new
  end

  def show

  end

  def create
    @gossip = Gossip.new(gossip_params)
    @gossip.user = current_user
    if @gossip.save
      redirect_to gossip_path(@gossip)
    else
      render 'new'
    end
  end

  def edit

  end

  def update
    @gossip.update(gossip_params)
    redirect_to gossip_path(@gossip)
  end

  def destroy
    @gossip.destroy
    redirect_to gossips_path
  end

  private

  def set_gossip
    @gossip = Gossip.find(params[:id])
  end

  def gossip_params
    params.require(:gossip).permit(:title, :content, :user)
  end
end
