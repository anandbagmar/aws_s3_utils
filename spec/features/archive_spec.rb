require 'spec_helper'

describe 'Archive and upload', :upload do
  context "directories & files to S3" do
    it "should create zip file and upload to S3" do
      EC2.upload_to_s3(Zip.archive_code)
      Utils.cleanup
    end
  end
end

describe 'Download', :download do
  context "file from from S3" do
    it "should download zip file from S3" do
      EC2.get_from_s3
    end
  end
end