defmodule Users do
  use GenServer

  def start_link do
    GenServer.start_link(__MODULE__, [])
  end

  def create_user(server, username, password) do
    GenServer.cast(server, {username, password})
  end

  def get_first_user(server) do
    GenServer.call(server, :first)
  end

  defmodule State do
    defstruct [:users]
  end

  def init(_arg) do
    users = []
    {:ok, %State{users: users}}
  end

  def handle_cast({username, password} = user, state) do
    users = [user | state.users]
    state = %State{state | users: users}
    {:noreply, state}
  end

  def handle_call(:first, _from, %State{users: [first | rest]} = state) do
    state = %State{users: rest}
    {:reply, first, state}
  end
end
