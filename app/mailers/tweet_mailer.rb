class TweetMailer < ApplicationMailer
    def notify(tweet)
        @tweet = tweet
        @user = tweet.user
        print(@user.email)
        mail(to: @user.email, subject: 'Your Tweet has successfully been posted')
    end
end
