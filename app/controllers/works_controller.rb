class WorksController < ApplicationController

	def index
		@portfolio_items = Work.all
	end

  def angular
    @angular_items = Work.angular
  end

	def new
		@portfolio_item = Work.new
	end

	def create
    @portfolio_item = Work.new(params.require(:work).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to works_path, notice: 'Your portfolio item is now live.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @portfolio_item = Work.find(params[:id])
  end

  def update
    @portfolio_item = Work.find(params[:id])

    respond_to do |format|
      if @portfolio_item.update(params.require(:work).permit(:title, :subtitle, :body))
        format.html { redirect_to works_path, notice: 'The Work was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
    @portfolio_item = Work.find(params[:id])
  end

  def destroy
    # this performs lookup
    @portfolio_item = Work.find(params[:id])
    work_title = @portfolio_item.title

    #this destroys the record
    @portfolio_item.destroy

    # this tells Rails what to do next
    respond_to do |format|
      format.html { redirect_to works_url, notice: 'Work #{work_title} was successfully destroyed.' }
    end
  end

end
