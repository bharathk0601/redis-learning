-- lua test.lua

print("Hello World!");

-- variables
a = 10; -- global variable
print("Hello World!", a);

local b = 10; -- local variable
print("Hello World!", b);

-- data types
print(type(true))

-- operators
-- https://www.tutorialspoint.com/lua/lua_operators.htm

-- while loop
local i = 0;
while (i<=10)
do
    print(i)
    i = i + 1
end

-- for loop
for i=10, 1, -1
do
    print(i)
end

-- break
for i=10, 1, -1
do
    print(i)
    if(i == 5)  then
        break;
    end
end

-- repeat until
i = 0;
repeat
    print(i);
    i = i + 5;
until(i<=5);

-- control statements
i = 10

if(i<0) then
    print("-ve")
elseif (i > 10) then
    print(">10")
else 
    print("+ve")
end;

-- function
function sum(num1, num2)
    return num1 + num2
end

print(sum(1,2))

function sum(...)
    local s = 0;
    for i,v in ipairs({...}) do
        s = s + v;
    end
    return s;
end

print(sum(1,2))

-- arrays
local arr = {1,2,3}
for i,v in pairs(arr) do -- or ipairs
    print(i, v)
end

print(arr[1]) -- array index starts from 1

-- tables (objects or hashmaps)
tb = {1,2,3};
tb["a"] = 1;
for k,v in pairs(tb) do
    print(k, tonumber(v))
end

-- modules
local formatter = require "printFormatter";
formatter.simpleFormat("test");

--redis
redis.call("HSET", "key", "value")

--string
print("hi" .. "hello") -- concatination

-- nil
print(nil); -- null value

-- logical operators
AND OR NOT -- (not && || ~)


