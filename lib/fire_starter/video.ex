defmodule FireStarter.Video do
  use Ecto.Schema
  import Ecto.Changeset
  alias FireStarter.Video


  schema "videos" do
    field :duration, :integer
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(%Video{} = video, attrs) do
    video
    |> cast(attrs, [:title, :duration])
    |> validate_required([:title, :duration])
  end
end
