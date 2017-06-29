class ExampleController < ApplicationController
  def echo
    render json: params.permit(:content)
  end
end
