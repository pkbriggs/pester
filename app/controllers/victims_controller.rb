class VictimsController < ApplicationController
  def index
  end

  def list
    @victims = Victim.all
  end

  def new
    @victim = Victim.new
  end

  def create
    @victim = Victim.new victim_params
    if @victim.save
      flash[:notice] = "Victim added successfully!"
      redirect_to :action => :show, victim_id: @victim.id
    else
      render :action => :new
    end
  end

  def search
  end

  # Show a specific victim
  def show
    @victim = Victim.find(params[:victim_id])
  end

  private

  def victim_params
    params.require(:victim).permit(:phone_number, :name)
  end
end
