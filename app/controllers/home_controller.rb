class HomeController < ApplicationController
  def index
  	@cheque = Cheque.new
  end

  def create
  	@cheque = Cheque.new(cheque_params)

  	if @cheque.save
  		flash[:notice] = "Ваш чек отправлен!"
  		render :index
  	else
  		flash[:alert] = "Что то не так пошло!"
  		render :index
  	end
  end

  private

  def cheque_params
  	params.require(:cheque).permit!
  end
end
