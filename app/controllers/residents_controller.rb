# == Schema Information
#
# Table name: residents
#
#  id            :integer          not null, primary key
#  full_name     :string
#  date_of_birth :date
#  id_number     :string
#  room_number   :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  house_id      :integer
#

class ResidentsController < ApplicationController
  before_action :set_resident, only: [:show, :edit, :update, :destroy]

  # GET /residents
  def index
    @residents = Resident.all
  end

  # GET /residents/1
  def show
  end

  # GET /residents/new
  def new
    @resident = Resident.new
  end

  # GET /residents/1/edit
  def edit
  end

  # POST /residents
  def create
    @resident = Resident.new(resident_params)

    if @resident.save
      redirect_to @resident, notice: 'Resident was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /residents/1
  def update
    if @resident.update(resident_params)
      redirect_to @resident, notice: 'Resident was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /residents/1
  def destroy
    @resident.destroy
    redirect_to residents_url, notice: 'Resident was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resident
      @resident = Resident.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def resident_params
      params.require(:resident).permit(:full_name, :date_of_birth, :id_number, :room_number, :house_id)
    end
end
