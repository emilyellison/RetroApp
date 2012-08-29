class TeamsController < ApplicationController
  
  def index
    @teams = Team.all
  end
  
  def new
    @team = Team.new
  end
  
  def create
    @team = Team.new(params[:team])
    if @team.save
      flash[:success] = 'Your team has been created successfully.'
      redirect_to team_url(@team)
    else
      render :new
    end
  end
  
  def show
    @team = Team.find(params[:id])
  end
  
  def edit
    @team = Team.find(params[:id])
  end
  
  def update
    @team = Team.find(params[:id])
    if @team.update_attributes(params[:team])
      flash[:success] = 'Your team has been successfully updated.'
      redirect_to team_url(@team)
    else
      render :edit
    end
  end
  
  def destroy
    @team = Team.find(params[:id])
    @team.destroy
    flash[:success] = 'Your team has been destroyed.'
    redirect_to root_url
  end
  
end