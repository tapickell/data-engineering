class UploadsController < ApplicationController
  before_action :set_upload, only: [:show, :edit, :update, :destroy]

  def new
    @upload = Upload.new
  end

  def create
    uploaded_data = params[:upload][:filename]
    upload_params = {filename: uploaded_data.original_filename, data: uploaded_data.read}

    @upload = Upload.new(upload_params)

    respond_to do |format|
      if @upload.save
        EtlWorker.new(@upload.id).work
        format.html { redirect_to @upload, notice: 'File was successfully uploaded.' }
      else
        format.html { render :new, notice: 'There was an issue uploading the file.' }
      end
    end
  end

  private

  def set_upload
    @upload = Upload.find(params[:id])
  end

  def upload_params
    params.require(:upload).permit(:filename)
  end
end
