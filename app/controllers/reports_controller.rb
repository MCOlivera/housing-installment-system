class ReportsController < ApplicationController
    def view
        @buyers = Buyer.all
    end
end
