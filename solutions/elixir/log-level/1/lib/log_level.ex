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
      true -> :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    log = LogLevel.to_label(level, legacy?)
    cond do
      log == :error or log == :fatal -> :ops
      log == :unknown and legacy? -> :dev1
      log == :unknown -> :dev2
      true -> false
    end
  end
end
