class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def show
  @coupon = Coupon.find(params[:id])
  end

  def new
    @coupon = Coupon.new
  end

  # def create
  #   coupon = Coupon.create(store: params[:store], coupon_code: params[:coupon_code])   

  #   redirect_to coupon
  # end
  

  def create #save new record when clicked submit on "new"
    @coupon = Coupon.create(allowed_params)
    redirect_to coupon_path(@coupon)
end

  private
    def allowed_params
       params.require(:coupon).permit(:coupon_code, :store)
    end

end
