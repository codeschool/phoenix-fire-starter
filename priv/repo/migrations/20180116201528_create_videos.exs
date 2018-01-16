defmodule FireStarter.Repo.Migrations.CreateVideos do
  use Ecto.Migration

  def change do
    create table(:videos) do
      add :title, :text
      add :duration, :integer

      timestamps()
    end

  end
end
