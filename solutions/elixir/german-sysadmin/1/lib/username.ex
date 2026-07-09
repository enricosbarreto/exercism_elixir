defmodule Username do
  @doc """
  If it receives a empty list, it return a empty list, and Modify the charlist to a new one with only lowercase letters and _, feature: Now convert non-latin character into same-sound latin character
  """
  @spec sanitize(charlist()) :: charlist()
  def sanitize([]), do: []

  def sanitize([caracter | tail]) do
      case caracter do
        char when char == ?ä -> ~c"ae" ++ sanitize(tail)
        char when char == ?ö -> ~c"oe" ++ sanitize(tail)
        char when char == ?ü -> ~c"ue" ++ sanitize(tail)
        char when char == ?ß -> ~c"ss" ++ sanitize(tail)
        char when char >= ?a and char <= ?z or char == ?_ -> [char | sanitize(tail)]
        _number_or_upcase -> sanitize(tail)
      end  
      
   
    
    
    # ä becomes ae
    # ö becomes oe
    # ü becomes ue
    # ß becomes ss
  
    # Please implement the sanitize/1 function
  end
end
