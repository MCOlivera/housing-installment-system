class ReportsController < ApplicationController
    def view
        @buyers = Buyer.all
        if params[:input_year].nil?
            @input_year = '2013'
        else
            @input_year = params[:input_year].to_s
        end
        
        if params[:input_month].nil?
            @input_date = @input_year.to_s + '-12-31'
        else
            @input_month = params[:input_month].to_s
            @input_date = @input_year + '-' + @input_month + '-31'
        end
        
        
    end
end
