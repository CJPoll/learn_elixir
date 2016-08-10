defmodule Chapter06.Map do
  def update_username(%{} = user, username) when is_binary(username) do
    %{user | username: username}
  end
end
