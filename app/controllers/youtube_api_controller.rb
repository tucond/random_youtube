class YoutubeApiController < ApplicationController
  include YoutubeApiHelper
  RANDOM_STRING_LENGTH = 5;

  def new
    initializeYoutubeApi

    random_string = [*('0'..'9'),*('a'..'z')].sample(RANDOM_STRING_LENGTH).join
    random_videos = video_list(random_string, 'snippet').items

    # puts "fffffffffff" << random_videos

    random_video = random_videos.sample
    render json: {"videoId": random_video.id.video_id, "title": random_video.snippet.title}

  end

end
