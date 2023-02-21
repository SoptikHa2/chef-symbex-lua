require "symtc"

function number_test(provider)
    local num = provider:getint(42, "num")
    if num > 4 then
        return nil
    else
        return 1
    end
end

if type(arg[1]) == "number" then
    symtc.replay_time_out = 1
    symtc.replay(arg[1], number_test)
else
    symtc.execute(arg[1], number_test)
end