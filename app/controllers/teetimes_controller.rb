class TeetimesController < ApplicationController

    before_filter :authorize
# only signed in users can get to the /teetimes aspect of the sight

    def index
      @teetimes = Teetime.all
    end
# any teetime successfully made will be shoed in the index view
    def show
      @teetime = Teetime.find(params[:id])
# any distinct teetime can be individually displayed
    end

    def new
      @teetime = Teetime.new
    end
# you can make a new teetime that will be connected to index
#   can't create anythting without it being new
#     def create
#       @teetime = Teetime.new(teetime_params)
#
# # when a teetime is created it will display on the index
#       if @teetime.save
#         redirect_to teetimes_path, :alert => "Teetime made"
#       else
#         render "new"
#       end
#     end

  def create
    teetime = Teetime.new(teetime_params)
    if teetime.valid?
      current_user.teetimes.push teetime
      current_user.save
      redirect_to teetimes_path
    else
      flash["alert-warning"] = "Sorry, teetime not created"
      redirect_to new_teetime_path
    end
  end

  def edit
      @teetime = Teetime.find(params[:id])

    end

    def update
      @teetime = Teetime.find(params[:id])

      if @teetime.update_attributes(teetime_params)
        redirect_to teetimes_path, :alert => "Teetime changed!"
      else
        render "edit"
      end
    end

    def destroy
      @teetime = Teetime.find(params[:id])
      @teetime.destroy
      redirect_to teetimes_path

    end
# params are a pain  this makes them easier
    private
    def teetime_params
      params.require(:teetime).permit(:date, :time, :course)
    end

def landing_page
end
end
