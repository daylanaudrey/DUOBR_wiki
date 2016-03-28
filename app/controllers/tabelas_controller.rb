class TabelasController < ApplicationController
	before_action :set_tabela, only: [:edit, :update, :destroy]

	def index
		@tabelas = Tabela.all
	end

	def new
		@tabela = Tabela.new
		@projeto = Project.all
	end

	def create
    @tabela = Tabela.new to_param
    if @tabela.save
    	flash[:notice] = "Tabela adicionada com sucesso!"
      redirect_to tabelas_path
    else
    	render :new
    end
	end

	def edit
		@projeto = Project.all
		render :edit
	end

	def update
		if @tabela.update(to_param)
			flash[:notice] = "Tabela atualizada com sucesso!"
			redirect_to tabelas_path
		else
			render :edit
		end
	end

	def destroy
		@tabela.destroy
		flash[:notice] = "Tabela removida com sucesso!"
		redirect_to tabelas_path
	end

  private
	  def to_param
	    params.require(:tabela).permit(:name, :project_id, fields_attributes: [:id, :name, :tipo, :user_description, :technical_description, :target_table, :_destroy])
	  end

		def set_tabela
			@tabela = Tabela.find(params[:id])
		end
end
