class ArtworkSharesController < ApplicationController

    def create
      share = ArtworkShare.new(artwork_shares_params)
      if share.save
        render json: share
      else
        render json: share.errors.full_messages, status: :unprocessable_entity
      end
    end

    def destroy
        share = ArtworkShare.find(params[:id])
        share.destroy 
        redirect_to artworks_url
    end

    protected

    def artwork_shares_params
        params.require(:artwork_share).permit(:artwork_id, :viewer_id)
    end

end