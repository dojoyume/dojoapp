class PassesController < ApplicationController

  def index
    @passes=Pass.all
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
    params.require(:pass).permit(:title,:content,:price)
  end

end
