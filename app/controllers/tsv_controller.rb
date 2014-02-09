class TsvController < ApplicationController
  def new
  end

  # processes a file of format:
  # purchaser name  item description        item price purchase count merchant address     merchant name
  # Snake Plissken  $10 off $20 of food     10.0       2              987 Fake St          Bob's Pizza
  # Amy Pond        $30 of awesome for $10  10.0       5              456 Unreal Rd        Tom's Awesome Shop
  # Marty McFly     $20 Sneakers for $5      5.0       1              123 Fake St Sneaker  Store Emporium
  # Snake Plissken  $20 Sneakers for $5      5.0       4              123 Fake St Sneaker  Store Emporium
  def upload
    uploaded_file = params[:file].path if params[:file].present?
    if uploaded_file
      order = Order.create
      line_items = []
      csv = CSV.foreach(uploaded_file, {col_sep: "\t", headers: true, header_converters: :symbol, converters: :all}) do |row|
        row_hash = row.to_hash
        purchaser = Purchaser.find_or_create_by name: row_hash[:purchaser_name]
        product = Product.find_or_create_by description: row_hash[:item_description], price: row_hash[:item_price]
        merchant = Merchant.find_or_create_by address: row_hash[:merchant_address], name: row_hash[:merchant_name]
        line_item = LineItem.create(purchaser: purchaser, product: product, merchant: merchant, order: order, quantity: row_hash[:purchase_count])
      end
      redirect_to root_url, notice: "Imported file with a gross revenue of #{format("$%.2f",order.total)}" and return
    end
    redirect_to root_url, :flash => { :error => "You must select a file to upload!" }
  end
end
