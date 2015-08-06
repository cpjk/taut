defmodule Slacker.Sup do
  use Supervisor

  @token System.get_env("SLACK_API_TOKEN")

  def start_link do
    Supervisor.start_link(__MODULE__, [])
  end

  def init([]) do
    children = [worker(Slacker.Bot, [@token, 1])]

    supervise(children, strategy: :one_for_one)
  end
end
