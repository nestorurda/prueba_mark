class MarksController < ApplicationController
  before_action :set_mark, only: %i[ show edit update destroy ]

  # GET /marks or /marks.json
  def index
    @marks = Mark.all
    
  end

def update_subcategory
 @subcategory=Subcategory.where('category_id=?',params[:id])
 respond_to do |format|
   format.js
 end
end


  # GET /marks/1 or /marks/1.json
  def show
  end
  
  #response json
  def respond_json
  category = Category.find(params[:id])
  subcategoryJson =[] 
  marksJson=[]
  
  category.subcategories.each do |cat|
  subcategoryJson.push({
    id:cat.id,
    subcategory:cat.name, 
  })
  end
  category.mark.each do |cat|
    marksJson.push({ 
      mark:cat.name
     })
  end
  respondJson=[{results:{id:category.id,category:category.name}}]
  respondJson.push(marksJson)
  respondJson.push(subcategoryJson)


  render :json => respondJson
  
  
  end



  # GET /marks/new
  def new
    @category = Category.all
    @type = Type.all
    @subcategory = Subcategory.all
    @mark = Mark.new
  end

 
  # GET /marks/1/edit
  def edit
  end

  # POST /marks or /marks.json
  def create
    @marks = Mark.all
    @mark = Mark.new(name:"#{mark_params[:name]}",url:"#{mark_params[:url]}",category_id:params[:category_id],subcategory_id:params[:subcategory_id],type_id:params[:type_id])
    logger.info(mark_params[:name])
    respond_to do |format|
      if @mark.save
       format.js {render nothing: true}
      end
    end
  end

  # PATCH/PUT /marks/1 or /marks/1.json
  def update
    respond_to do |format|
      if @mark.update(mark_params)
        format.html { redirect_to @mark, notice: "Mark was successfully updated." }
        format.json { render :show, status: :ok, location: @mark }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mark.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /marks/1 or /marks/1.json
  def destroy
    @mark.destroy
    respond_to do |format|
      format.html { redirect_to marks_url, notice: "Mark was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mark
      @mark = Mark.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mark_params
      params.require(:mark).permit(:name, :status, :url, :category_id, :subcategory_id, :type_id)
    end
end
