class ContactController < ApplicationController

  def index
      @contact = Contact.new
      render 'index'
    end

    def confirm
      @contact = Contact.new(contact_params)
      if @contact.valid?
        render 'confirm'
      else
        render 'index'
      end
    end

    def thanks
      @contact = Contact.new(contact_params)
      if @contact.save
        ContactMailer.received_email(@contact).deliver
        render 'thanks'
      else
        render 'confirm'
      end
    end

    def contact_params
      params.require(:contact).permit(:name , :email , :message)
    end

end
