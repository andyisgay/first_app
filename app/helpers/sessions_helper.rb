module SessionsHelper
	def sign_in(user) #把用戶登入
        session[:session_token] = user.session_token
    end

    def sign_in? #用戶登入了嗎
    	!current_user_nil?
    end
    
    def current_user #現在登入的用戶
        @current_user ||= User.find_by_session_token(session[:session_token])
    end
    
    def current_user?(user) #這個用戶是現在登入的用戶嗎?
        current_user == user
    end         	
end
