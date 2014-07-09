require 'csv'

class EtlWorker

  def initialize(id)
    @upload = Upload.find_by_id(id)
  end

  def work
    revenues = 0

    CSV.new(@upload.data, { col_sep: "\t", headers: true, return_headers: false }).each do |row|

      merchant = Merchant.find_or_create_by(name: row.fetch('merchant name')) do |merchant|
        merchant.address = row.fetch('merchant address')
      end

      item = Item.find_or_create_by(description: row.fetch('item description')) do |item|
        item.price = row.fetch('item price')
        item.merchant_id = merchant.id
      end

      purchaser = Purchaser.find_or_create_by(name: row.fetch('purchaser name'))

      purchase = Purchase.new({count: row.fetch('purchase count'), item_id: item.id, purchaser_id: purchaser.id})
      purchase.save
      revenues +=  purchase.count * item.price

    end
    @upload.revenue = revenues
    @upload.save
  end

end

