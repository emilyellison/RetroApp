class NotesController < ApplicationController
  
  def create
    @note = Note.new(params[:note])
    if @note.save
      respond_to do |format|
        format.html { redirect_to edit_retro_url(@note.retro) }
        format.js
      end
    else
      flash[:error] = 'Sorry something went wrong...'
      redirect_to :back
    end
  end
  
  def destroy
    @note = Note.find(params[:id])
    @dup = @note
    @note.destroy
    respond_to do |format|
      format.html { redirect_to edit_retro_url(@dup.retro) }
      format.js 
    end
  end
  
end