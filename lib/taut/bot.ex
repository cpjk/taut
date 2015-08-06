defmodule Taut.Bot do
  use Slack

  def init(initial_state, slack) do
    IO.puts "Connected as #{slack.me.name}"
    {:ok, initial_state}
  end

  def handle_connect(_slack, state) do
    IO.puts "Connect received"
    {:ok, state}
  end

  def handle_message(_message, _slack, state) do
    IO.puts "Message received"
    {:ok, state}
  end

  def handle_close(_reason, _slack, state) do
    IO.puts "Connection closed"
    {:ok, state}
  end
end
