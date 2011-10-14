class BookController < ApplicationController
   # defines method with name list find all book in table
   def list
	@books = Book.find(:all)
   end
   # defines method with name show specific record
   def show
	@book = Book.find(params[:id])
   end
   def new
      @book = Book.new
      @subjects = Subject.find(:all)
   end
   def create
      @book = Book.new(params[:book])
      if @book.save
            redirect_to :action => 'list'
      else
            @subjects = Subject.find(:all)
            render :action => 'new'
      end
   end
end
