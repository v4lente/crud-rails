class SolicitacaosController < ApplicationController
  def index
    @solicitacao = Solicitacao.all  
  end

  def show
    @solicitacao = Solicitacao.find(params[:id])
  end

  def new
    @solicitacao = Solicitacao.new
  end

  def edit
    @solicitacao = Solicitacao.find(params[:id])
  end

  def create
    @solicitacao = Solicitacao.new(solicitacao_params)
    
    if @solicitacao.save
      redirect_to @solicitacao
    else
      render 'new'
    end

  end

  def update
    @solicitacao = Solicitacao.find(params[:id])
   
    if @solicitacao.update(solicitacao_params)
      redirect_to @solicitacao
    else
      render 'edit'
    end
  end

  def destroy
    @solicitacao = Solicitacao.find(params[:id])
    @solicitacao.destroy
 
    redirect_to solicitacaos_path
  end

  private
  def solicitacao_params
    params.require(:solicitacao).permit(:dia, :horario, :quantidade)
  end

end
