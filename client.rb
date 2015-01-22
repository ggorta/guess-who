require 'httparty'

puts "IP address, please."
gets.chomp.downcase


















#prompts the user for the ip address of another student
#then uses httparty to hit the route / at that ip address
#then prints to the terminal the response from that route
#then prints Which celebrity might this be? and waits for the user
#to take a guess
#then takes the guess from the user and hits the same ip address
#at the route /CELEB_GUESS
#if NICE JOB is the value of msg in the JSON returned, print that
#in the terminal
#if hmm, try again is the value of the msg in the JSON returned,
#print that in the terminal and then ask the user if they want to
#take another guess or move on to another student's ip address
