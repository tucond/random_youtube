class YoutubeApiController < ApplicationController
  include YoutubeApiHelper
  RANDOM_STRING_LENGTH = 5;

  def new
    puts "new action debag message"
    initializeYoutubeApi

    random_string = [*('0'..'9'),*('a'..'z')].sample(RANDOM_STRING_LENGTH).join
    puts "Serch YouTube with random string: #{random_string}"

    video_snippet = video_list(random_string, 'snippet').items
    puts "n:nnnnnnn: #{video_snippet.sample.id.video_id}"

    render json: {"videoId": video_snippet.sample.id.video_id}

  end




end
