# varargs
 Iterate over everything.

## Usage

Functions like `ipairs` tend to stop when encountering a `nil` value. But in some cases, you don't want that to happen. `varargs` lets you iterate through all values, including `nil` values. Simply use like in the following example:

```lua
local varg = require("varargs")

for _, v in varg(1, nil, true, "hello") do
  print(v)
end
```
