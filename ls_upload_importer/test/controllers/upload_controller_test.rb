require 'test_helper'

describe UploadsController do
  subject { @controller }

  describe "New" do

    it 'works' do
      get :new
      must_respond_with :success
    end
  end

  describe "Create" do
    let(:upload_object) { FactoryGirl.build :upload_object }
    let(:upload_params) { {upload: {filename: upload_object} } }

    it 'works' do
      post :create, upload_params
      must_respond_with :success
    end
  end

  describe "Show" do
    let(:upload) { FactoryGirl.create :upload }

    it 'works' do
      get :show, { id: upload.id }
      must_respond_with :success
    end
  end

end
