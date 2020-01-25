# Write your code here
require 'json'
require 'net/http'
require 'open-uri'
require 'pry'
    class GetRequester
        # attr_accessor :url


        def initialize(url)
            @url = url
        end

        def get_response_body
            uri = URI.parse(@url)
            response = Net::HTTP.get_response(uri)
            response.body
        end

        def parse_json
            JSON.parse(get_response_body)


        end

    end 
    get_requester = GetRequester.new('https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json')
    get_requester.parse_json

