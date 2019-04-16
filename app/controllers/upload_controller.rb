class UploadController < ActionController::Base
 skip_before_action :verify_authenticity_token
  def index
    options = {
      # The name of your bucket.
      bucket: '<%= ENV["AWS_BUCKET"]%>',

      # S3 region. If you are using the default us-east-1, it this can be ignored.
      region: 'eu-west-1',

      # The folder where to upload the images.
      keyStart: 'fog',

      # File access.
      acl: 'public-read',

      # AWS keys.
      accessKey: '<%= ENV["AWS_ACCESS_KEY"] %>',
      secretKey: '<%= ENV["AWS_SECRET_KEY"] %>'
    }

    # Compute the signature.
    @aws_data = FroalaEditorSDK::S3.data_hash(options)
  end
end