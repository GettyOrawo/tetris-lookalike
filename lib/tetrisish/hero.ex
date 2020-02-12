defmodule Tetrisish.Hero do
  defstruct [
    name: :o,
    location: {40, 0},
    state: "alive"
  ]

  #create new struct
  def new do
    __struct__()
  end

  def new_random do
    %Tetrisish.Hero{
      name: random_name(),
      location: {40, 0},
      state: "alive"
    }
  end

  def random_name do
    ~w(l i z o t)a
    |> Enum.shuffle
    |> List.first
  end

  def up(hero) do
     %{hero| location: point_up(hero.location)}
  end

  def down(hero) do
    %{hero| location: point_down(hero.location)}
  end

  def right(hero) do
    %{hero| location: point_right(hero.location)}
  end

  def left(hero) do
    %{hero| location: point_left(hero.location)}
  end

  def point_up({x,y}) do
    {x,y-1}
  end

  def point_down({x,y}) do
    {x,y+1}
  end  

  def point_right({x,y}) do
    {x+1,y}
  end

  def point_left({x,y}) do
    {x-1,y}
  end

end