require 'test_helper'

describe EtlWorker do
  let(:upload) { create :upload }

  it 'adds the calculated revenue to the upload object' do

    EtlWorker.new(upload.id).work
    Upload.find_by_id(upload.id).revenue.must_equal 95.0
  end
end
