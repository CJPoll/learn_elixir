defmodule Chapter06.Map do
  def update_username(%{} = user, username) when is_binary(username) do
    %{user | username: username}
  end

  def build_map do
    %{
      :hello => :there,
      {:hey, :guys} => :a
    }
  end

  def get_password(%{}) do
  end
end
