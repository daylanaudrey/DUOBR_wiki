class ProjectsController < ApplicationController
	before_action :set_project, only: [:edit, :update, :destroy]

	def index
		@projects = Project.all
	end

	def new
		@project = Project.new
	end

	def create
    @project = Project.new to_param
    if @project.save
    	flash[:notice] = "Produto adicionado com sucesso!"
      redirect_to projects_path
    else
    	render :new
    end
	end

	def edit
		render :edit
	end

	def update
		if @project.update(to_param)
			flash[:notice] = "Projeto atualizado com sucesso!"
			redirect_to projects_path
		else
			render :edit
		end
	end

	def destroy
		@project.destroy
		flash[:notice] = "Produto removido com sucesso!"
		redirect_to projects_path
	end

  private
	  def to_param
	    params.require(:project).permit(:name)
	  end

		def set_project
			@project = Project.find(params[:id])
		end
end
