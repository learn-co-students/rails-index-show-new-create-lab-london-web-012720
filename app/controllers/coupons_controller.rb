class CouponsController < ApplicationController
    
    def index #list of drinks
        @coupons = Coupon.all
    end
  
    def show #individual record. one drink for ex
        @coupon = Coupon.find(params[:id])
    end
  
    def new #display form for create a new record
        @coupon = Coupon.new
    end

    def create #save new record when clicked submit on "new"
        @coupon = Coupon.new(allowed_params)
        @coupon.save
        redirect_to coupon_path(@coupon)

    end

    private
    def allowed_params
       params.require(:coupon).permit(:coupon_code, :store)
    end
end