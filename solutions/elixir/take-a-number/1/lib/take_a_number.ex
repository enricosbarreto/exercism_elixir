defmodule TakeANumber do
  @doc """
  Inicia a máquina de bilhetes em um novo processo (spawn) 
  com o estado inicial igual a 0.
  """
  def start() do
    spawn(fn -> loop(0) end)
  end

  
  defp loop(state) do
    receive do

      {:report_state, sender_pid} ->
        send(sender_pid, state)
        loop(state)
        
      {:take_a_number, sender_pid} ->
        novo_estado = state + 1
        send(sender_pid, novo_estado)
        loop(novo_estado)
        
      :stop ->
        :ok
      _ ->
        loop(state)
    end
  end
end