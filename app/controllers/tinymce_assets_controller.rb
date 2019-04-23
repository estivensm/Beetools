class TinymceAssetsController < ApplicationController
  def create
    # Take upload from params[:file] and store it somehow...
    # Optionally also accept params[:hint] and consume if needed
        puts "aaaaaaaaaaaaaaaaaaaaaaaaa"
    puts params[:file]
    puts "aaaaaaaaaaaaaaaaaaaaaaaaa"
    puts params[:hint]
    image ="https://mybc1.s3.amazonaws.com/uploads/rseguimiento/evidencia/413/reemp2.png"
    render json: {
      image: {
        url: view_context.image_url(image)
      }
    }, content_type: "text/html"
  end
end