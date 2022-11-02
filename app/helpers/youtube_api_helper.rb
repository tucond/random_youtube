require 'google/apis/youtube_v3'
MAX_RESULTS = 5;

module YoutubeApiHelper
  def initializeYoutubeApi
    @service = Google::Apis::YoutubeV3::YouTubeService.new
    @service.key = ENV['YOUTUBE_API_KEY']
    #puts ENV['YOUTUBE_API_KEY']
    puts "initialize YoutubeAPI"
  end

  def video(id, req)
    opt = {
      id: id
    }

    sleep 1
    @service.list_videos(req, **opt)
  end

  def video_list(query, req)
    opt = {
      q:            query,
      #order:        'date', # 日付順．
      max_results:  MAX_RESULTS,      # 30件だけ取る．
      type:         'video' # 検索対象を動画に限定．
    }
  
    sleep 1
    @service.list_searches(req, **opt)
  end


end
