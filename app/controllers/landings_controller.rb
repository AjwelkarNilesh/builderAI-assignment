class LandingsController < ApplicationController
  def index
    puts "params => #{params.inspect}\n\n"
    all_shows, @shows = [], []

    if params[:search].present?
      matched_channel = Channel.where(:name => params[:search])
      matched_show = Show.where(:name => params[:search])
      matched_channel.each do |channel|
        all_shows = channel.shows
      end
      all_shows += matched_show
    else
      all_shows = Show.all
    end

    @shows = all_shows.uniq
    
  end
end
