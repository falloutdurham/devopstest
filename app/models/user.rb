class User < ActiveRecord::Base

  def a_pointless_method(with_named_parameter:)
    Rails.logger.info "You are using Ruby #{with_named_parameter}"
  end

end
