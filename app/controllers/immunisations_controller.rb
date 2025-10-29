class ImmunisationsController < ApplicationController
  before_action :set_immunisation, only: %i[ show edit update destroy ]

  # GET /immunisations or /immunisations.json
  def index
    @immunisations = Immunisation.all
  end

  # GET /immunisations/1 or /immunisations/1.json
  def show
  end

  # GET /immunisations/new
  def new
    @immunisation = Immunisation.new
  end

  # GET /immunisations/1/edit
  def edit
  end

  # POST /immunisations or /immunisations.json
  def create
    @immunisation = Immunisation.new(immunisation_params)

    respond_to do |format|
      if @immunisation.save
        format.html { redirect_to @immunisation, notice: "Immunisation was successfully created." }
        format.json { render :show, status: :created, location: @immunisation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @immunisation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /immunisations/1 or /immunisations/1.json
  def update
    respond_to do |format|
      if @immunisation.update(immunisation_params)
        format.html { redirect_to @immunisation, notice: "Immunisation was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @immunisation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @immunisation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /immunisations/1 or /immunisations/1.json
  def destroy
    @immunisation.destroy!

    respond_to do |format|
      format.html { redirect_to immunisations_path, notice: "Immunisation was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_immunisation
      @immunisation = Immunisation.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def immunisation_params
      params.expect(immunisation: [ :patient_id, :vaccine_id, :administered_on, :administered_by, :batch_number, :next_due_date ])
    end
end
