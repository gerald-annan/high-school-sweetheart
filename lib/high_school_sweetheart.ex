defmodule HighSchoolSweetheart do
  def first_letter(name) do
    # Please implement the first_letter/1 function
    String.trim(name)
    |> String.at(0)
  end

  def initial(name) do
    # Please implement the initial/1 function
    "#{first_letter(name) |> String.upcase()}."
  end

  def initials(full_name) do
    # Please implement the initials/1 function
    Enum.map(String.split(full_name), &initial(&1))
    |> Enum.join(" ")
  end

  def pair(full_name1, full_name2) do
    #      ******       ******
    #    **      **   **      **
    #  **         ** **         **
    # **            *            **
    # **                         **
    # **     X. X.  +  X. X.     **
    #  **                       **
    #    **                   **
    #      **               **
    #        **           **
    #          **       **
    #            **   **
    #              ***
    #               *

    # Please implement the pair/2 function
    love = "#{initials(full_name1)}  +  #{initials(full_name2)}"

    """
         ******       ******
       **      **   **      **
     **         ** **         **
    **            *            **
    **                         **
    **     #{love}     **
     **                       **
       **                   **
         **               **
           **           **
             **       **
               **   **
                 ***
                  *
    """
  end
end
