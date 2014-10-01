class EntriesController < ApplicationController
  def index
    @entries = Entry.all
  end

  def new
    @entry = Entry.new
  end

  def edit
    get_by_id(params[:id])
    @entry.attributes = entry_params

    if @entry.valid? && @entry.save
      redirect_to user_entry_path
    else
      render action: :edit
    end

  end


  private
  def entry_params
    params.require(:entry).permit(:title, :body, :created_at)
  end

  def get_by_id(id)
    @entry=Entry.find_by_id(id)
  end
end
