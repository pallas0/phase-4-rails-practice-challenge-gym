class ApplicationController < ActionController::API
    rescue_from ActiveRecord::RecordInvalid, with: :render_record_invalid
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

    private

    def render_record_invalid(invalid)
        render json: { erorrs: invalid.record.errors.full_messages }, status: :not_acceptable
    end

    def render_not_found(record)
        render json: {error: record.message }, status: :not_found
    end



end
