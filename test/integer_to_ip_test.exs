defmodule IntegerToIpTest do
  use ExUnit.Case
  doctest IntegerToIp

  test "some itoa" do
    list = [{2066891757,"123.50.67.237"},{3726754030,"222.33.192.238"},{2016692578,"120.52.73.98"}]
    Enum.each(list, &(assert IntegerToIp.itoa(elem(&1,0))==elem(&1,1)))
  end
end
