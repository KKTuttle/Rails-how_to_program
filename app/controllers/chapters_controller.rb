class ChaptersController<ApplicationController
  def index
    @chapters = Chapter.all
    render :index
  end

  def show
    @chapter = Chapter.find(params[:id])
    render :show
  end

  def new
    @chapter = Chapter.new
    render :new
  end

  def create
    @chapter = Chapter.new(chapter_params)
    if @chapter.save
      redirect_to chapters_path
    else
      render :new
    end
  end

  def edit
    @chapter = Chapter.find(params[:id])
    render :edit
  end

  def update
    @chapter = Chapter.find(params[:id])
    if @chapter.update(chapter_params)
      redirect_to chapters_path
    else
      render :edit
    end
  end

  def destroy
    @chapter = Chapter.find(params[:id])
    @chapter.destroy
    redirect_to chapters_path
  end

  private
  def chapter_params
    params.require(:chapter).permit(:name)
  end


end
