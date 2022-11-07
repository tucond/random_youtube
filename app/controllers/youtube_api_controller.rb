class YoutubeApiController < ApplicationController
  RANDOM_STRING_LENGTH = 3;
  
  def new
    service = YoutubeApi.new

    random_string = [*('0'..'9'),*('a'..'z')].sample(RANDOM_STRING_LENGTH).join
    random_videos = service.video_list(random_string, 'snippet').items

    random_video = random_videos.sample
    render json: {"videoId": random_video.id.video_id, "title": random_video.snippet.title}
  end

  def show
    service = YoutubeApi.new

    random_string = [*('0'..'9'),*('a'..'z')].sample(RANDOM_STRING_LENGTH).join
    search_string = params[:id].to_s + " " + random_string

    random_videos = service.video_list(search_string, 'snippet').items
    random_video = random_videos.sample

    render json: {"videoId": random_video.id.video_id, "title": random_video.snippet.title}
  end

end
