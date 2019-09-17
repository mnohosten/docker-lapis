lapis = require("lapis")
local app = lapis.Application()

app:get("/", function(self)
  return "Hello World!"
end)

app:get("/welcome/:name", function(self)
  return "Welcome to  " .. (self.params.name:gsub("^%l", string.upper)) .. "."
end)

return app
