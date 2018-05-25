class YelpsController < ApplicationController

  def index
    @yeps = Yelp.order(rating: :DESC)
  end

  def show
    @yep = Yelp.find(params[:id])
  end

  def edit
    @yep = Yelp.find(params[:id])
  end

  def update
    @yep = Yelp.find(params[:id])
      if @yep.update(yep_params)
        redirect_to yelp_path(@yep.id)
      else
        render :edit
      end
    end


    def new
      @yep = Yelp.new
    end

    def create
      @yep = Yelp.new(yep_params)
      if @yep.save
        redirect_to yelp_path(@yep.id)
      else
        render :new
      end
    end

    def destroy
      Yelp.find(params[:id]).destroy
      redirect_to yelps_path
    end

    private

      def yep_params
        params.require(:yelp).permit( :name, :review, :rating)
      end


end
