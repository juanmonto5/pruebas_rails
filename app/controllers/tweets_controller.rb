class TweetsController < ApplicationController

	def index
		@tweets = Tweet.all
	end

	def new
		@tweet = Tweet.new
	end

	def create
		@tweet = Tweet.new(tweet_params)
		@tweet.save
		redirect_to tweets_path
	end

	def tweet_params
		params.require(:tweet).permit(:message, :title)
	end
	def show
            @tweet=Tweet.find(params[:id])
         @comments=@tweet.comments.all
end
end
