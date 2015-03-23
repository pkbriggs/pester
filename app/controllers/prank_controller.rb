class PrankController < ApplicationController

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

  def index
    @victims = Victim.all
  end

  private

  def victim_params
    params.require(:victim).permit(:name, :phone_number)
  end

end
