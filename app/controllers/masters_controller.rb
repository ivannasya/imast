class MastersController < ApplicationController

  def index
    @masters = Master.all
  end

  def edit
    @master = current_master
  end

  def update_password
    @master = Master.find(current_master.id)
    if @master.update(master_params)
      sign_in @master, :bypass => true
      redirect_to root_path
    else
      render "edit"
    end
  end

  def show
    @master = current_master
  end

  protected

  def master_params
    params.require(:master).permit(:password, :password_confirmation)
  end
end
