defmodule FireStarterWeb.VideoView do
  use FireStarterWeb, :view

  def display_duration(duration) do
    "#{duration} mins"
  end
end