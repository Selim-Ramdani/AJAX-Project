class EmailsController < ApplicationController

  def index
    @emails = Email.all
  end

  def create
    @email = Email.new(body: Faker::Lorem.paragraph, object: Faker::Book.title)
    if @email.save
      flash[:alert] = "L'email a bien été créé en base de donnée :=)"
    else
      redirect_to 'root_path'
    end
  end

end