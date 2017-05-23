class HomeController < ApplicationController
  def index
  	@memos = Memo.all 
  end
  
  def write
  	#Form에서 제목과 내용을 받아온다
  	@title = params[:title]
  	@content = params[:text]
  	#데이터베이스를 한줄 생성한다.
  	newMemo = Memo.new
  	newMemo.title = @title
  	newMemo.content = @content
  	newMemo.save

  	redirect_to  "/home/index"
  end
end
