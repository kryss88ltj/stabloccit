class FavoriteMailer < ActionMailer::Base
  default from: "chrisitne.stauffer@gmail.com"

    def new_comment(user, post, comment)
    @user = user
    @post = post
    @comment = comment

    # New Headers
    headers["Message-ID"] = "<comments/#{@comment.id}@stabloccit.example>"
    headers["In-Reply-To"] = "<post/#{@post.id}@stabloccit.example>"
    headers["References"] = "<post/#{@post.id}@stabloccit.example>"

    mail(to: user.email, subject: "New comment on #{post.title}")
  end

end
