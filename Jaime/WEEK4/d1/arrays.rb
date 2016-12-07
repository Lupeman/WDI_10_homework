#1&2
# days_of_the_week = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
#
# last_day = days_of_the_week.pop
# days_of_the_week.unshift(last_day)
# puts days_of_the_week

#3
days_of_the_week_2D = [["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"], ["Saturday", "Sunday"]]
days_of_the_week_2D.delete_at(1)
puts days_of_the_week_2D
sorted_days = days_of_the_week_2D[0].sort
puts sorted_days
