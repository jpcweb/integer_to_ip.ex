defmodule IntegerToIp do
    @moduledoc """
    Integer to ip (and the opposite) for Elixir. This module helps you to get an ip into a integer (and the opposite).

    ## Examples

    iex(1)> IntegerToIp.itoa(2066891757)

    "123.50.67.237"

    iex(2)> IntegerToIp.itoa("123.50.67.237")
    2066891757
    """

    @doc """
    Takes a integer and transform it into an ip address (string).
    """
    def itoa(n) do
        "#{ipcalc(n,3)}.#{ipcalc(n,2)}.#{ipcalc(n,1)}.#{ipcalc(n,0)}"
    end

    @doc """
        Takes a string (ip) and transform it into an integer.
    """
    def atoi(ip) when is_binary(ip) do
        sip = String.split(ip,".")
        sip = Enum.map(sip,&(elem(Integer.parse(&1),0)))

        round(ocalc(sip)+237)
    end

    #private
    def ipcalc(n,i), do: rem(trunc(n / :math.pow(256,i)),256)
    defp ocalc(l), do: ocalc(l,0,3)+ocalc(l,1,2)+ocalc(l,2,1)
    defp ocalc(l,il,ipow), do: Enum.at(l,il)*:math.pow(256,ipow)
end
