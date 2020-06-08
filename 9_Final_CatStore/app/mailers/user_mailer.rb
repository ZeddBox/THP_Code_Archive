class UserMailer < ApplicationMailer
  default from: 'catstore@yopmail.com'
 
  def welcome_email(user)
    @user = user

    @url  = 'https://cat-store-thp.herokuapp.com/'

    mail(to: @user.email, subject: 'Bienvenue chez CatStore !')
  end

  def order_email(order)
    @order = order

    @cart = @order.user.cart

    @user = User.find(order.user_id)

    @url  = 'https://cat-store-thp.herokuapp.com/'

    mail(to: @user.email, subject: 'Vos achats chez CatStore !')
  end

  
end