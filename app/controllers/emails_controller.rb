class EmailsController < ApplicationController

  def index
    @emails = Email.all
  end

  def create
    @email = Email.create(body: Faker::Lorem.paragraph, object: Faker::Book.title)
    @email.save
    respond_to do |format|
      format.html { redirect_to books_path }
      format.js {}
    end
  end

end