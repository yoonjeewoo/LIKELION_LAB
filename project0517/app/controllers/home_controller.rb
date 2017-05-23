class HomeController < ApplicationController
  def index
  	@memos = Memo.all
  end
  def writing
  	@title = params[:title]
  	@content = params[:content]

  	#변수는 @를 안붙여도 된다. View에 뿌려줘야 할 경우에는 @를 붙여줘야 한다.
  	newMemo = Memo.new #빈칸한줄추가
  	newMemo.title = @title
  	newMemo.content = @content
  	newMemo.save

 	redirect_to "/home/index"
  end
end
