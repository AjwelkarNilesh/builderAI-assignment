class ShowController < ApplicationController
  
  def add_as_favourite

    show = Show.find_by_id(params[:show_id])

    respond_to do |format|
      if UserShow.create(:user_id => current_user.id, :show_id => show.id)
        format.json { render(json: "success" ) }
      end  
    end
    
  end
end
