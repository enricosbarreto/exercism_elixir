defmodule HighSchoolSweetheart do
  def first_letter(name) do
    name
    |> String.trim()
    |> String.at(0)
  end

  def initial(name) do
    firstL =
    name
    |> HighSchoolSweetheart.first_letter()
    |> String.upcase()
    firstL <> "."
  end

  def initials(full_name) do
    first_initial =
    full_name
    |> String.split()
    |> Enum.at(0)
    |> initial()

    second_initial =
    full_name
    |> String.split()
    |> Enum.at(1)
    |> initial()

    "#{first_initial} #{second_initial}"
    
    
  end

  def pair(full_name1, full_name2) do
    
    name_1 = initials(full_name1)
    name_2 = initials(full_name2)

    """
     ❤-------------------❤
     |  #{name_1}  +  #{name_2}  |
     ❤-------------------❤
     """
  end
end
