class SalonsController < ApplicationController
  def edit
  end

  def update
    current_salon.update(salon_params)
    redirect_to passes_path
  end

private

  def salon_params
    params.require(:salon).permit(:salon_name, :image, :place, :distance,:staff, :seat, :pr, :hpb_url, :ig_url)
  end
end
