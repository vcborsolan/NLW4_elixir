defmodule RocketpayWeb.UsersView do
  alias Rocketpay.{Account, User}

  def render("create.json", %{
        account: %Account{id: account_id, balance: balance},
        user: %User{id: id, name: name, nickname: nickname}
      }) do
    %{
      message: "User created!",
      user: %{
        id: id,
        name: name,
        nickname: nickname,
        account: %{
          id: account_id,
          balance: balance
        }
      }
    }
  end
end
