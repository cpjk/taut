defmodule Taut do
  use Application

  def start(_type, _args) do
    Taut.Sup.start_link
  end
end
