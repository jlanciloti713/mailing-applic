class StaticPagesController < ApplicationController
  def home

  end

  def contact

  end

  def send_message
    MessageMailer.contact_form_message(params[:name], params[:email], params[:number], params[:contact]).deliver_now
    flash[:success] = "MESSAGE SENT"
    redirect_to "/"
  end
end
