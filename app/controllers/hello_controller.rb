class HelloController < ApplicationController
  before_action :authenticate_account!, only: :login_check

  def index
    @msg = 'this is sanmple page'
  end

  def login_check
    @account = current_account
    @msg = 'account created at: ' + @account.created_at.to_s
  end
end
