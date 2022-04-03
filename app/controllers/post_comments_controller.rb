class PostCommentsController < ApplicationController

  params.require(:comment).permit(:rate)

end
