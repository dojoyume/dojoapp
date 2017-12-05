class PassesController < ApplicationController

  def index
    @passes=Pass.all
  end

  def show
    Pass.find(params[:id])
    @pass=Pass.find(params[:id])
  end

  def new
    @pass=Pass.new

  end

  def create


Pass.create(pass_params)#ここに保存するための記述をする




  redirect_to action: 'index'
  end

private

  def pass_params
    params.require(:pass).permit(:title,:content,:price,:time,:conditions,:image).merge(salon_id: current_salon.id)

  end

end
