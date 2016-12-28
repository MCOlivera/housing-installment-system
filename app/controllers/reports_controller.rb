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
    
    def print_report
      @buyers = Buyer.all
    
      require "prawn/table"
      require "prawn"
    
      Prawn::Document.new(:page_size => 'LEGAL', :page_layout => :landscape) do |pdf|
        table_data = Array.new
        table_data << ["", "Name of Buyer", "Block", "Lot", "Lot Area", "Terms", "Interest Rate", "Lot / House & Lot", "Total Contract Price", "Principal", "Interest", "Penalty", "Total", "Balance", "Unpaid Interest", "ICR Balance"]
        
        index = 1
        total = 0
        
          @buyers.each do |buyer|
          buyer.loan.each do |loan|
            table_row = Array.new
            table_row << index
            table_row << buyer.first_name + " " + buyer.family_name
            table_row << loan.block
            table_row << loan.lot
            table_row << loan.lot_area

            if loan.interest_rate == 15
              table_row << "5 Years"
            elsif loan.interest_rate == 17
              table_row << "7 Years"
            elsif loan.interest_rate == 19
              table_row << "10 Years"
            end
              
            table_row << loan.interest_rate.to_s + "%"
            
            if loan.loan_type == "lot_only"
              table_row << "Lot Only"
            elsif loan.loan_type == "house_and_lot"
              table_row << "House and Lot"
            elsif loan.loan_type == "duplex_house"
              table_row << "Duplex House"
            else
              table_row << ""
            end
              
            table_row << loan.purchase_price
            total = total + loan.purchase_price
            payments = loan.payment.where('date_paid <= ?', params[:input_date]).where('is_downpayment = false')
            principal_amount = payments.pluck('principal_amount').sum.round(2)
            interest_amount = payments.pluck('interest_amount').sum.round(2)
            installment_penalty_amount = payments.pluck('installment_penalty_amount').sum.round(2)
              
            table_row << principal_amount
            table_row << interest_amount
            table_row << installment_penalty_amount
            table_row << (principal_amount + interest_amount + installment_penalty_amount).round(2)
            table_row << (loan.purchase_price - principal_amount).round(2)
            table_row << ((loan.purchase_price - principal_amount) * (loan.interest_rate/100.0) / 12).round(2)
            table_row << ((loan.purchase_price - principal_amount) + (loan.purchase_price - principal_amount) * (loan.interest_rate/100.0) / 12).round(2)
            index = index + 1
            
            table_data << table_row
          end
        end
            
        table_data << ["", "Total", "", "", "", "", "", "", total, "", "", "", "", "", "", ""] 
        
        # pdf.table(table_data, :width => 1000, :cell_style => { :inline_format => true })
        pdf.table(table_data)
        send_data pdf.render, type: "application/pdf", disposition: "inline"
      end
    end
end
