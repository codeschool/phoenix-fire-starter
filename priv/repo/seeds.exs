alias FireStarter.{Repo,Video}

Repo.delete_all(Video)

elixir = %Video{title: "Elixir 101", duration: 120}
javascript = %Video{title: "Advanced JS", duration: 300}

Enum.each([elixir, javascript], &( Repo.insert(&1) ))
