defmodule LiveTemplatesExampleWeb.TodoChannel do
  @moduledoc false

  use LiveState.Channel, web_module: LiveTemplatesExampleWeb

  @impl true
  def init(_channel, _params, _socket) do
    {:ok, %{todos: ["Add an item"]}}
  end

  @impl true
  def handle_event("add-todo", %{"todo" => todo}, %{todos: todos} = state) do
    {:noreply, Map.put(state, :todos, todos ++ [todo])}
  end

end
