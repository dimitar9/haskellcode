a = {}
k = "x"
a[k] = 10
a[20] = "great"
print (a["x"])
k=20
print(a[k])
a["x"] = a["x"] + 1
print(a["x"]) 

function foo(x) return 2*x end

print (foo(3))


network = {
  {name = "grauna",  IP = "210.26.30.34"},
  {name = "arraial", IP = "210.26.30.23"},
  {name = "lua",     IP = "210.26.23.12"},
  {name = "derain",  IP = "210.26.23.20"},
}
--print (network[1].name)
--iterate table: network
for k,v in pairs(network) do print(k,v.name,v.IP) end
print ("\n")

--sort table reversed alphabetic based on name.
table.sort(network, function (a,b)
  return (a.name > b.name)
end)
for k,v in pairs(network) do print(k,v.name,v.IP) end
print ("\n")

-- sort table based on name alphabetic
table.sort(network, function (a,b)
  return (a.name < b.name)
end)
for k,v in pairs(network) do print(k,v.name,v.IP) end
print ("\n")

--sort table based on ip
table.sort(network, function (a,b)
  return (a.IP < b.IP)
end)
for k,v in pairs(network) do print(k,v.name,v.IP) end
print ("\n")