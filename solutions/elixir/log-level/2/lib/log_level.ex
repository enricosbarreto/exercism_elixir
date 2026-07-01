defmodule LogLevel do
  def to_label(level, legacy?) do
    cond do
      level == 0 and legacy? -> :unknown
      level == 0 -> :trace
      level == 1 -> :debug
      level == 2 -> :info
      level == 3 -> :warning
      level == 4 -> :error
      level == 5 and legacy? ->:unknown
      level == 5 -> :fatal
      :otherwise -> :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    case LogLevel.to_label(level, legacy?) do
      :error -> :ops
      :fatal -> :ops
      :unknown when legacy? -> :dev1
      :unknown -> :dev2
      _ -> false
    end
  end
end
