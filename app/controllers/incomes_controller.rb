class IncomesController < ApplicationController

  def index
    @incomes = Income.order(created_at: :asc)
  end
 
  def show
    @income = Income.find(params[:id])
  end
 
  def new
    @income = Income.new
  end
 
  def edit
    @income = Income.find(params[:id])
  end
 
  def create
    @income = Income.new(params[:income])
    if @income.save
      redirect_to income_path(@income.id), method: :get, notice: "収入勘定科目を登録しました"
    else
      render "new"
    end
  end
 
  def update
    #@income = Income.find(params[:id])
    #@income.assign_attributes(params[:income])
    #if @income.save
      #redirect_to income_path(@income.id), method: :get, notice: "収入勘定科目を登録しました"
    #else
      #render "new"
    #end
  end
 
  def destroy
  end

  private
  def income_params
    params.require(:income).permit(:subject, :remark)
  end
end
