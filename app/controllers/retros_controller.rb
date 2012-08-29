class RetrosController < ApplicationController
  
  def index
    @retros = Retro.all
  end
  
  def new
    @retro = Retro.new
  end
  
  def create
    @retro = Retro.new(params[:retro])
    if @retro.save
      flash[:success] = 'Your retro was created successfully.'
      redirect_to retro_url(@retro)
    else
      render :new
    end
  end
  
  def show
    @retro = Retro.find(params[:id])
  end
  
  def destroy
    @retro = Retro.find(params[:id])
    @retro.destroy
    flash[:success] = 'Your retro has been destroyed.'
    redirect_to root_url
  end
  
end