class SkillCatagoriesController < ApplicationController
  before_action :set_skill_catagory, only: [:show, :edit, :update, :destroy]

  # GET /skill_catagories
  # GET /skill_catagories.json
  def index
    @skill_catagories = SkillCatagory.all
  end

  # GET /skill_catagories/1
  # GET /skill_catagories/1.json
  def show
  end

  # GET /skill_catagories/new
  def new
    @skill_catagory = SkillCatagory.new
  end

  # GET /skill_catagories/1/edit
  def edit
  end

  # POST /skill_catagories
  # POST /skill_catagories.json
  def create
    @skill_catagory = SkillCatagory.new(skill_catagory_params)

    respond_to do |format|
      if @skill_catagory.save
        format.html { redirect_to @skill_catagory, notice: 'Skill catagory was successfully created.' }
        format.json { render :show, status: :created, location: @skill_catagory }
      else
        format.html { render :new }
        format.json { render json: @skill_catagory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skill_catagories/1
  # PATCH/PUT /skill_catagories/1.json
  def update
    respond_to do |format|
      if @skill_catagory.update(skill_catagory_params)
        format.html { redirect_to @skill_catagory, notice: 'Skill catagory was successfully updated.' }
        format.json { render :show, status: :ok, location: @skill_catagory }
      else
        format.html { render :edit }
        format.json { render json: @skill_catagory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skill_catagories/1
  # DELETE /skill_catagories/1.json
  def destroy
    @skill_catagory.destroy
    respond_to do |format|
      format.html { redirect_to skill_catagories_url, notice: 'Skill catagory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skill_catagory
      @skill_catagory = SkillCatagory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def skill_catagory_params
      params.require(:skill_catagory).permit(:name, :description)
    end
end
