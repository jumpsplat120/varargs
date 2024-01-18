---Iterate over any and all parameters, including nil.
---@param ... any
---@return fun()
return function(...)
    local args, count
    
    args  = {...}
    count = select("#", ...)

    return coroutine.wrap(function()
        for i = 1, count, 1 do coroutine.yield(i, args[i]) end
    end)
end
