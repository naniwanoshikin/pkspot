class Api::V1::HomePagesController < ApplicationController
  def index
    render json: {
      message: "Hello World!"
    }, status: 200
  end
end
