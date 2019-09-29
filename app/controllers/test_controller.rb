class TestController < ApplicationController
  def index
    render json: { data: 'Ti molodec' }, status: :ok
  end
end
