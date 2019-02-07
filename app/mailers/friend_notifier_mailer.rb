class FriendNotifierMailer < ApplicationMailer
    def inform(user, friend_contact)
        @user = user
        test = mail(to: friend_contact, subject: "#{user.name} says you've changed.")
    end 
end
