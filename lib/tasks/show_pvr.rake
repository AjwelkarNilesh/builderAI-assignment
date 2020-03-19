namespace :show_pvr do
  desc "Email users about there favourite shows"
  task favourite_show_intimation: :environment do
    next_time = Time.now + 30.minutes
    next_time_hour = next_time - 12

    show = Show.where(start_time => next_time_hour)

    show_users = UserShow.where(:show_id => shows.map(&:id)) 

    show_users.each do |s_u|
      user = User.find_by_id(s_u.user_id)

      ShowMailer.show_intimation_email(user, show).deliver
    end

  end

end
