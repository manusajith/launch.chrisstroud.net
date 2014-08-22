class UserMailer < ActionMailer::Base
    default from: "Contact <Coach@chrisstroud.net>"

    def signup_email(user)
        @user = user
        @twitter_message = "Excited for the #Crossfit RX Barbell Launch from @chrisstr0ud"

        mail(:to => user.email, :subject => "Thanks for signing up!")
    end
end
