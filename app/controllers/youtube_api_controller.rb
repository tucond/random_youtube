class YoutubeApiController < ApplicationController
  include YoutubeApiHelper
  RANDOM_STRING_LENGTH = 5;

  def new
    initializeYoutubeApi

    random_string = [*('0'..'9'),*('a'..'z')].sample(RANDOM_STRING_LENGTH).join
    video_snippet = video_list(random_string, 'snippet').items
    render json: {"videoId": video_snippet.sample.id.video_id}

  end

end
