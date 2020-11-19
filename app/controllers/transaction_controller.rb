class TransactionController < ApplicationController
    def new 
    end

    def create
        @listing = Listing.find(params[:listing_id])
        @transaction = Transaction.new
        @transaction.seller_id = @listing.user_id
        @transaction.buyer_id = current_user.id
        @transaction.listing_id = @listing.id
        @transaction.save!
        @listing.sold = true
        @listing.save!
        redirect_to history_url
    end
    

end


