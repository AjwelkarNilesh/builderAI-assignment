Challenge

Got a favorite show you don’t want to miss? Don’t have a PVR or want to be able to find the show to then PVR it later? Make an application which can search various online TV Guide sites, locate the shows/times/channels and add them to a database application. The database/website then can send you email reminders that a show is about to start and which channel it will be on.

Steps:

1. Create dummy data for Channels & TV Shows (with names and timings) DB schema
2. Provide all shows listing (should be tagged with the channel name and show timings).
3. Provide a search option at the top of the listing, allowing the user to search via channel name or show name. Search results should include all the shows (either from Channel match or TV show)
4. Provide an option to mark the TV show as a Favourite
5. Implement schedulers to send the email reminders to users 30 min before their favorite shows begin. An email should include Channel Name, Show Name, Show timing.

Submission
When done with the assignment, please upload it on public GitHub repo and share the link.

Steps to Run

bundle install 
# to install all the gems

rake db:migrate
# to run migration

rake db:seeds
# to populate dummy data

Set the cron as below

15 * * * * cd /Users/you/projects/myrailsapp && /usr/local/bin/rake RAILS_ENV=production show_pvr:favourite_show_intimation

