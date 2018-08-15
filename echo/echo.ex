defmodule Client do
  @moduledoc """
  how to user ?
  1. c "echo.ex"
  2. iex> Server.start
  3. iex> server = v()
  4. Client.get_price
  """

  @doc """
  get price from server
  """
  def get_price(server,thing) do
    send(server,{:get_price,self,thing})
    IO.puts("Request has been sent")

    receive do
      {:price,result} ->
        IO.puts(result)
    end
  end
end


defmodule Server do
  def start do
    spawn(&loop/0)
  end

  def loop do
    receive do
      {:get_price,from,thing} ->
        # IO.puts("测试一下", from,thing)
        send(from, {:price,query_price(thing)})
    end
    loop
  end

  defp query_price(thing) do
    :timer.sleep(2000)
    "#{thing} 的价格是999RMB"
  end
end
