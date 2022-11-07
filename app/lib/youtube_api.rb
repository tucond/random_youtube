class YoutubeApi
  require 'google/apis/youtube_v3'
  MAX_RESULTS = 30;

  def initialize
    @service = Google::Apis::YoutubeV3::YouTubeService.new
    @service.key = ENV['YOUTUBE_API_KEY']
  end

  def video(id, req)
    opt = {
      id: id
    }

    # sleep 1
    @service.list_videos(req, **opt)
  end

  def video_list(query, req)
    opt = {
      q:            query,
      max_results:  MAX_RESULTS,      
      type:         'video' # 検索対象を動画に限定．
    }
  
    # sleep 1
    @service.list_searches(req, **opt)
  end


end
