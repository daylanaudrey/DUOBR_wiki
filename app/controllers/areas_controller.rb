class AreasController < ApplicationController
	before_action :set_area, only: [:edit, :update, :destroy]

	def index
		@areas = current_project.areas
	end

	def new
		@area = Area.new
		@projetos = Project.all
	end

	def create
    @area = Area.new to_param
    if @area.save
    	flash[:notice] = "Área adicionada com sucesso!"
      redirect_to areas_path
    else
    	render :new
    end
	end

	def edit
		@projetos = Project.all
		render :edit
	end

	def update
		if @area.update(to_param)
			flash[:notice] = "Área atualizada com sucesso!"
			redirect_to areas_path
		else
			render :edit
		end
	end

	def destroy
		@area.destroy
		flash[:notice] = "Área removida com sucesso!"
		redirect_to areas_path
	end	

  private
	  def to_param
	    params.require(:area).permit(:name, :project_id)
	  end

		def set_area
			@area = Area.find(params[:id])
		end	
end