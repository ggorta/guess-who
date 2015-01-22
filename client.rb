require 'httparty'
#prompts the user for the ip address of another student
puts "IP address, please."
input = gets.chomp
#then uses httparty to hit the route / at that ip address

url = "http://#{input}:3000/"
response = HTTParty.get(url)

get '/' do
person = response["results"][0]
  person_json = {
    profession: person['profession'],
    known_for1: person['known_for'][0],
    known_for2: person['known_for'][1],
    known_for3: person['known_for'][2],
    gender: person['gender'],
    age: person['age'],
    fact1: person['fact1'],
    fact2: person['fact1']
  }
  content.type :json
  person_json.to_json
end

puts person_json

puts "Which celebrity might this be?"

answer = gets.chomp.downcase

#get '/:answer' do













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
