class ShowController < ApplicationController
  
  def add_as_favourite

    show = Show.find_by_id(params[:show_id])
    respond_to do |format|
      if show.update(:is_favourite => true)
        format.json { render(json: "success" ) }
      end  
    end
    
  end
end
