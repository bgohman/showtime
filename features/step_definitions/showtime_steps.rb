Given /^a movie$/ do
  @movie = Movie.create!
end

When(/^I set the showtime to "(.*?)" at "(.*?)"$/) do |date, time|
  @movie.update_attributes(:showtime_date, Date.parse(date))
  @movie.update_attributes(:showtime_time, time)
end

Then(/^the showtime description should be "(.*?)"$/) do |showtime|
  expect(@movie.showtime).to eq(showtime)
end