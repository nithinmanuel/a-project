class MyModulesController < ApplicationController
  before_action :set_my_module, only: [:show, :edit, :update, :destroy]

  # GET /my_modules
  # GET /my_modules.json
  def index
    @my_modules = MyModule.all
  end

  # GET /my_modules/1
  # GET /my_modules/1.json
  def show
  end

  # GET /my_modules/new
  def new
    @my_module = MyModule.new
  end

  # GET /my_modules/1/edit
  def edit
  end

  # POST /my_modules
  # POST /my_modules.json
  def create
    @my_module = MyModule.new(my_module_params)

    respond_to do |format|
      if @my_module.save
        format.html { redirect_to @my_module, notice: 'My module was successfully created.' }
        format.json { render :show, status: :created, location: @my_module }
      else
        format.html { render :new }
        format.json { render json: @my_module.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_modules/1
  # PATCH/PUT /my_modules/1.json
  def update
    respond_to do |format|
      if @my_module.update(my_module_params)
        format.html { redirect_to @my_module, notice: 'My module was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_module }
      else
        format.html { render :edit }
        format.json { render json: @my_module.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_modules/1
  # DELETE /my_modules/1.json
  def destroy
    @my_module.destroy
    respond_to do |format|
      format.html { redirect_to my_modules_url, notice: 'My module was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_module
      @my_module = MyModule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_module_params
      params.require(:my_module).permit( :name, :description, :meta_title)
    end
end
