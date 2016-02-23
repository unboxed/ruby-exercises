# == Schema Information
#
# Table name: houses
#
#  id         :integer          not null, primary key
#  date_built :date
#  address    :string
#  city       :string
#  active     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class HousesController < ApplicationController
  before_action :set_house, only: [:show, :edit, :update, :destroy, :residents]

  # GET /houses
  def index
    @houses = House.all
  end

  # GET /houses/1
  def show
  end

  # GET /houses/new
  def new
    @house = House.new
  end

  # GET /houses/1/edit
  def edit
  end

  # POST /houses
  def create
    @house = House.new(house_params)

    if @house.save
      redirect_to @house, notice: 'House was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /houses/1
  def update
    if @house.update(house_params)
      redirect_to @house, notice: 'House was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /houses/1
  def destroy
    @house.destroy
    redirect_to houses_url, notice: 'House was successfully destroyed.'
  end

  def residents
    @residents = Resident.where(house_id: @house.id)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_house
      @house = House.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def house_params
      params.require(:house).permit(:date_built, :address, :city, :active)
    end
end
