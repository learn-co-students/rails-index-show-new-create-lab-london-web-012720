class CouponsController < ApplicationController

  before_action :set_coupon, only: :show

def index 

  @coupons = Coupon.all
end

def show
end

def new
  @coupon = Coupon.new
end

def create 
  @coupon = Coupon.create(coupon_code: params[:coupon][:coupon_code], store:params[:coupon][:store])
  redirect_to coupon_path(@coupon)
end


private 
    def set_coupon
        @coupon = Coupon.all.find(params[:id])
      end

      # def allowed_params
      #   params.require(:coupon).permit(coupon_code:, store:)
      #   end


end
