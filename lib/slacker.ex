defmodule Slacker do
  use Application

  def start(_type, _args) do
    Slacker.Sup.start_link
  end
end
