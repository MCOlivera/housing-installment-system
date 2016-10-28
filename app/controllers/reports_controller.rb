class ReportsController < ApplicationController
    def view
        @buyers = Buyer.all
        if params[:input_year].nil?
            @input_year = '2013'
        else
            @input_year = params[:input_year].to_s
        end
    end
end
