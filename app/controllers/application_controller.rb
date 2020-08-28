class ApplicationController < ActionController::Base
# >>maybe this is needed to connect the dashboard/account page after signing in
  def after_sign_in_path_for(resource)
    if request.referer == "http://localhost:3000/users/sign_in"
      ""
    else
      request.referer
    end
  end
end
