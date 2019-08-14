class InventariesController < ApplicationController
    
    before_action :set_inventary, only: [:show, :update, :destroy] 
  def index 
    @inventaries = Inventary.all 
    render json: @inventaries 
  end
  def create 
    @inventary = Inventary.new(inventary_params) 
    if @inventary.save 
      render json: { success: true, inventary_id: @inventary.id } 
    else 
      render json: { success: false } 
    end 
  end 
  def update 
    if @inventary.update(inventary_params) 
      render json: { success: true } 
    else 
      render json: { success: false } 
    end 
  end 
  def show 
    render json: @inventary 
  end 
  def destroy 
    if @inventary.destroy 
      render json: { success: true } 
    else 
      render json: { success: false } 
    end 
  end 
  private 
  def set_inventary 
    @inventary = Inventary.find(params[:id]) 
  end 
  def inventary_params 
    params.require(:inventary).permit(:name) 
  end 
end
