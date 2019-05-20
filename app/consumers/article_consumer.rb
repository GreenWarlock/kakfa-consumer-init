class ArticleConsumer < Racecar::Consumer
  subscribes_to 'article'

  def process(message)
    json = JSON.parse(message.value)
    puts '-------------'
    puts '-------------'
    puts "Profile: Received message: #{json['user']}"
    puts '-------------'
    puts '-------------'

    view = ArticleView.find_or_initialize_by(user_email: json['user'],
                                             resource_visited_id: json['resource_visited'].to_i)
    view.city = json['city']
    view.count += 1

    view.save!
  end
end
