defmodule RocketpayWeb.UsersView do
  alias Rocketpay.User

  def rednder("create.json", %{user: %User{id: id, name: name, nickname: nickname}}) do
    %{
      message: "User created!",
      user: %{
        id: id,
        name: name,
        nickname: nickname
      }
    }
  end
end
