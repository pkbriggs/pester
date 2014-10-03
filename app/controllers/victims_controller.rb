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
      render :text => "hi"
    else
      render :action => :new
    end
  end

  def search
  end

  private

  def victim_params
    params.require(:victim).permit(:phone_number, :name)
  end
end
