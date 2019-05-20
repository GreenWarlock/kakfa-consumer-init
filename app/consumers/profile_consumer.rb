class ProfileConsumer < Racecar::Consumer
  subscribes_to 'profile'

  def process(message)
    json = JSON.parse(message.value)
    puts '-------------'
    puts '-------------'
    puts "Profile: Received message: #{json['user']}"
    puts '-------------'
    puts '-------------'
    visualization = ProfileView.find_or_initialize_by(user_email: json['user'],
                                                      resource_visited_id: json['resource_visited'].to_i)
    visualization.city = json['city']
    visualization.count += 1

    visualization.save!
  end
end
