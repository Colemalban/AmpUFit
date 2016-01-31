class MapController < ApplicationController

def index
@tweets = $twitter.search("#ampufit -rt").take(50)#, :geocode => "38.89,-77.03,10mi").take(50)
end

end
