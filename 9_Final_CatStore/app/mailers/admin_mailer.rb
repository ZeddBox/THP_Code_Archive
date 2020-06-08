class AdminMailer < ApplicationMailer
  default from: 'catstore@yopmail.com'

  def order_email(order)
    @order = order
    @cart = @order.user.cart
    @user = @order.user

    @admin = User.find_by(is_admin: true)

    @url  = 'https://cat-store-thp.herokuapp.com/'

    mail(to: @admin.email, subject: 'Un nouvel achat a été effectué')
  end

end