class HistoryController < ApplicationController
    def index
        @purchased = Listing.joins(:transactions).where(transactions: { buyer_id: current_user.id })
    end
 
    def show
        @purchased = Listing.find(params[:id])
    end
end
