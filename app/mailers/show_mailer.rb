class ShowMailer < ApplicationMailer
    default from: "from@example.com"

    def show_intimation_email(user)
        @user = user
        mail(to: @user.email, subject: 'Favourite Show up in 30 minutes')
    end
end
