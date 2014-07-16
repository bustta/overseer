module ApplicationHelper
  def isSigninFromFB(user)
    @porvider = user.provider
    if @provider != nil && @provider.downcase == 'facebook'
      return true
    end
    return false
  end
end
