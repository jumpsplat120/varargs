---Iterate over all values passed in. Useful for when you want to iterate over
---`...` and not exclude `nil`, which happens when doing `ipairs({ ... })`.
---@param ... any
---@return fun(): #The iterator function. To be used in `for ... do`
return function(...)
    local args, count
    
    args  = {...}
    count = select("#", ...)

    return coroutine.wrap(function()
        for i = 1, count, 1 do coroutine.yield(i, args[i]) end
    end)
end
