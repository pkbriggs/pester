class VictimsController < ApplicationController
  def index
  end

  def list
    @victims = Victim.all
  end

  def new
  end

  def search
  end
end
