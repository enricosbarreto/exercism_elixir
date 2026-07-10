defmodule RPG.CharacterSheet do
@moduledoc """
  Helps to create an RPG character Sheet 
"""

  @doc """
  Create a Welcome message
  """
  @spec welcome() :: String.t()
  def welcome() do
    IO.puts("Welcome! Let's fill out your character sheet together.")
  end

  @doc """
  Define the name of the character
  """
  @spec ask_name() :: String.t()
  def ask_name() do
    IO.gets("What is your character's name?\n")
    |> String.trim()
  end

  @doc """
  Define the character's class
  """
  @spec ask_class() :: String.t()
  def ask_class() do
    IO.gets("What is your character's class?\n")
    |> String.trim()
  end

  @doc """
  Define character's level
  """
  @spec ask_level() :: :ok
  def ask_level() do
    IO.gets("What is your character's level?\n")
    |> String.trim()
    |> String.to_integer()

  end

  @doc """
  ask for character name, class and level, and return map with the infos
  """
  @spec run() :: map()
  def run() do
    welcome()
    name = ask_name()
    class = ask_class()
    level = ask_level()
    IO.inspect( %{class: class, level: level, name: name}, label: "Your character" )
  end
end
