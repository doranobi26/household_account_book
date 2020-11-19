class FixedcostsController < ApplicationController

  def index
    @fixedcosts = Fixedcost.order(created_at: :asc)
  end
 
  def show
    @fixedcost = Fixedcost.find(params[:id])
  end
 
  def new
    @fixedcost = Fixedcost.new
  end
 
  def edit
    @fixedcost = Fixedcost.find(params[:id])
  end
 
  def create
    @fixedcost = Fixedcost.new(fixedcost_params)
    if @fixedcost.save
      redirect_to fixedcost_path(@fixedcost.id), method: :get, notice: "収入勘定科目を登録しました"
    else
      render "new"
    end
  end
 
  def update
    @fixedcost = Fixedcost.find(params[:id])
    @fixedcost.assign_attributes(params[:fixedcost])
    if @fixedcost.save
      redirect_to fixedcost_path(@fixedcost.id), method: :get, notice: "収入勘定科目を登録しました"
    else
      render "new"
    end
  end
 
  def destroy
    @fixedcost = Fixedcost.find(params[:id])
    @fixedcost.destroy
    redirect_to fixedcosts_path, notice: "科目を削除しました。"
  end

  private
  def fixedcost_params
    params.require(:fixedcost).permit(:subject, :remark)
  end
end
