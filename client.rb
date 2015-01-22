require 'httparty'
#prompts the user for the ip address of another student
puts "IP address, please."
input1 = gets.chomp
#then uses httparty to hit the route / at that ip address

url1 = "http://#{input1}:3000/"
response1 = HTTParty.get(url1)

puts response1

puts "Which celebrity might this be?"

input2 = gets.chomp.downcase

url2 = "http://#{input1}:3000/#{input2}"
response2 = HTTParty.get(url2)

puts response2.value




#then takes the guess from the user and hits the same ip address
#at the route /CELEB_GUESS
#if NICE JOB is the value of msg in the JSON returned, print that
#in the terminal
#if hmm, try again is the value of the msg in the JSON returned,
#print that in the terminal and then ask the user if they want to
#take another guess or move on to another student's ip address
