class VisitorMailer < ApplicationMailer
	

	def confirmation_order

   @visitor = params[:visitor]
   mail(to: @visitor.email, subject: 'confirmation order')
 end
 
 def sign_up

 	 @user = params[:user]
   mail(to: @user.email, subject: 'Nice to meet you')
 	
 end

end
