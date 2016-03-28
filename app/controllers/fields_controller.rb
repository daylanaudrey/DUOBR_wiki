class FieldsController < ApplicationController
	before_action :set_field, only: [:edit, :update, :destroy]

	def index
		@fields = Field.all
	end

	def new
		@tabelas = Tabela.all
		@field = Field.new
	end

	def create
    @field = Field.new to_param
    if @field.save
    	flash[:notice] = "Produto adicionado com sucesso!"
      redirect_to fields_path
    else
    	render :new
    end
	end

	def edit
		render :edit
	end

	def update
		if @field.update(to_param)
			flash[:notice] = "Projeto atualizado com sucesso!"
			redirect_to fields_path
		else
			render :edit
		end
	end

	def destroy
		@field.destroy
		flash[:notice] = "Produto removido com sucesso!"
		redirect_to fields_path
	end

  private
	  def to_param
	    params.require(:field).permit(:name)
	  end

		def set_field
			@field = Field.find(params[:id])
		end
end
