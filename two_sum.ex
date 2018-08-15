defmodule TwoSum do
    a = IO.gets("") |> String.trim |> String.to_integer
    # 标准输入的若不是 整数 ,会发生错误.
    b = IO.gets("") |> String.trim |> String.to_integer
    # |> 管道符号,左边的变量作为右边的输入

    sum = a + b
    IO.puts sum
end
