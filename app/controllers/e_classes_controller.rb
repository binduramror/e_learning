class EClassesController < ApplicationController
  before_action :set_e_class, only: [:show, :edit, :update, :destroy]

  # GET /e_classes
  # GET /e_classes.json
  def index
    @e_classes = EClass.all
  end

  # GET /e_classes/1
  # GET /e_classes/1.json
  def show
  end

  # GET /e_classes/new
  def new
    @e_class = EClass.new
  end

  # GET /e_classes/1/edit
  def edit
  end

  # POST /e_classes
  # POST /e_classes.json
  def create
    @e_class = EClass.new(e_class_params)

    respond_to do |format|
      if @e_class.save
        format.html { redirect_to @e_class, notice: 'E class was successfully created.' }
        format.json { render :show, status: :created, location: @e_class }
      else
        format.html { render :new }
        format.json { render json: @e_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /e_classes/1
  # PATCH/PUT /e_classes/1.json
  def update
    respond_to do |format|
      if @e_class.update(e_class_params)
        format.html { redirect_to @e_class, notice: 'E class was successfully updated.' }
        format.json { render :show, status: :ok, location: @e_class }
      else
        format.html { render :edit }
        format.json { render json: @e_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /e_classes/1
  # DELETE /e_classes/1.json
  def destroy
    @e_class.destroy
    respond_to do |format|
      format.html { redirect_to e_classes_url, notice: 'E class was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_e_class
      @e_class = EClass.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def e_class_params
      params.require(:e_class).permit(:title)
    end
end
