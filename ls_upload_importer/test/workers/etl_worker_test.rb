require 'test_helper'

describe EtlWorker do
  let(:upload) { create :upload }

  before :each do
    %w{ Merchant Item Purchaser Purchase }.each do |klass|
      klass.constantize.delete_all
    end
    EtlWorker.new(upload.id).work
  end

  describe 'adds the calculated revenue to the upload object' do
    it { Upload.find_by_id(upload.id).revenue.must_equal 95.0 }
  end

  describe 'imports all of the merchants into the db' do
    it { Merchant.count.must_equal 3 }
  end

  describe 'imports all of the items into the db' do
    it { Item.count.must_equal 3 }
  end

  describe 'imports all of the purchasers into the db' do
    it { Purchaser.count.must_equal 3 }
  end

  describe 'imports all of the purchases into the db' do
    it { Purchase.count.must_equal 4 }
  end

end
