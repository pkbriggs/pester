class MessageController < ApplicationController

  def list
    render json: ["i am data", "second data"]
  end

end
