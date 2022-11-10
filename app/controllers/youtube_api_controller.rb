class YoutubeApiController < ApplicationController
  RANDOM_STRING_LENGTH = 4;
  RANDOM_SEARCH_STRING_LENGTH = 2;
  @@service = YoutubeApi.new


  def results

    if params[:search_query] == ""
      string_length = RANDOM_STRING_LENGTH
    else
      string_length = RANDOM_SEARCH_STRING_LENGTH
    end

    random_string = [*('0'..'9'),*('a'..'z')].sample(string_length).join
    search_string = params[:search_query] + " " + random_string

    random_videos = @@service.video_list(search_string, 'snippet').items
    random_video = random_videos.sample

    render json: {"videoId": random_video.id.video_id, "title": random_video.snippet.title}
  end

end
