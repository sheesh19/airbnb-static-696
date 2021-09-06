require "open-uri"
# require 'nokogiri'

class FlatsController < ApplicationController
    # runs our private method set_flats before the index & show actions are run
    before_action :set_flats

    def index; end

    def show
        # we can compare the JSON flat["id"] with the id from our params
        @flat = @flats.find { |flat| flat["id"] == params[:id].to_i }
    end

    private

    def set_flats
        # url hosts our JSON for our flats
        # open(url) was deprecated in Ruby && the latest has to be written by URI.open(url); the set up I had was a newer version as an FYI!
        url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
        # @flats = JSON.parse(URI.open(url).read)
        @flats = JSON.parse(open(url).read)
    end
end
