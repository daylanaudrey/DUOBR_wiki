class ModelsController < ApplicationController
	before_action :set_model, only: [:edit, :update, :destroy]

	def index
		@models = Model.all
	end

	def new
		@tabelas = Tabela.all
		@model = Model.new
	end

	def create
		@tabelas = Tabela.all
    @model = Model.new to_param
    if @model.save
    	flash[:notice] = "Modelo adicionado com sucesso!"
      redirect_to models_path
    else
    	render :new
    end
	end

	def edit
		@tabelas = Tabela.all
		render :edit
	end

	def update
		if @model.update(to_param)
			flash[:notice] = "Modelo atualizado com sucesso!"
			redirect_to models_path
		else
			render :edit
		end
	end

	def destroy
		@model.destroy
		flash[:notice] = "Modelo removido com sucesso!"
		redirect_to models_path
	end	

  private
	  def to_param
	    params.require(:model).permit(:name, :tabela_id, :user_description, :technical_description)
	  end

		def set_model
			@model = Model.find(params[:id])
		end	
end