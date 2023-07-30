# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Sintonia.Repo.insert!(%Sintonia.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Sintonia.Accounts.User

Sintonia.Repo.insert! %User{
  email: "admin@sintonia.com",
  hashed_password: Bcrypt.Base.hash_password("123", Bcrypt.Base.gen_salt(12, true)),
}
