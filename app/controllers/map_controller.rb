class MapController < ApplicationController

def index
@tweets = $twitter.search("#ampufit -rt", :geocode => ["38.89","-77.03","10km"], :include_entities => false).take(50)
end

end
