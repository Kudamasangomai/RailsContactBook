class ContactsController < ApplicationController

    def index
        @contacts = Contact.all
    end

    def new
      @con = Contact.new
    end

    def show

      @con  = Contact.find(params[:id])

    end

    def edit
      @con  = Contact.find(params[:id])
   
    end

    def update
      @con = Contact.find(params[:id])

      if @con.update(contact_params)
        redirect_to @con
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def create
  
        @con = Contact.new(contact_params)
        if @con.save
        
        redirect_to @con ,notice: "Contact Successfuly Created"
        else
        
          render :new, status: :unprocessable_entity
        end
    end



    def destroy

      @con = Contact.find(params[:id])
      @con.destroy
      redirect_to contacts_url ,notice: "Contact Successfuly Deleted"

    end
    
    private def contact_params
      params.require(:contact).permit(:firstname, :lastname ,:email ,:contactno)
    end

end
