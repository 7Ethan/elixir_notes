take_coffee = fn(n) ->
    :timer.sleep 1000   # 引用erlang的计时器
    IO.puts "#{n} coffee for U"
end

Enum.each(1..6,&take_coffee.(&1)) #输出 1到 6,与rust不一样

super_take_coffee = fn(n) ->
    spawn(fn->
        :timer.sleep(2000)
        IO.puts("#{n} coffee for you")
    end)
end

Enum.each(1..10, &super_take_coffee.(&1))
