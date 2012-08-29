class RetrosController < ApplicationController
  
  def index
    @retros = Retro.all
  end
  
  def create
    @retro = Retro.new(team_id: params[:team_id].to_i)
    if @retro.save
      flash[:success] = 'Your retro was created successfully.'
      redirect_to edit_retro_url(@retro)
    else
      redirect_to :back
    end
  end
  
  def show
    @retro = Retro.find(params[:id])
    @categories = Category.all
  end
  
  def edit
    @retro = Retro.find(params[:id])
    @categories = Category.all
    @note = Note.new
    @notes = Note.where('retro_id = ?', params[:id])
  end
  
  def update
    @retro = Retro.find(params[:id])
    if @retro.update_attributes(params[:retro])
      flash[:success] = 'Your retro was successfully updated.'
      redirect_to retro_url(@retro)
    else
      render :edit
    end
  end
  
  def destroy
    @retro = Retro.find(params[:id])
    @retro.destroy
    flash[:success] = 'Your retro has been destroyed.'
    redirect_to root_url
  end
  
end