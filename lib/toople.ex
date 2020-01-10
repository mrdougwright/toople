defmodule Toople do
  @doc """
  Gets the element at the zero-based index in tuple.

  It raises ArgumentError when index is negative or it is out of range of the
  tuple elements.

  ## Examples

      iex> tuple = {:foo, :bar, 3}
      iex> Toople.get_at(tuple, 1)
      :bar

      iex> Toople.get_at({}, 0)
      ** (ArgumentError) argument error

      iex> Toople.get_at({:foo, :bar}, 2)
      ** (ArgumentError) argument error
  """
  @spec get_at(tuple(), non_neg_integer()) :: term()
  def get_at(tuple, index) do
    Kernel.elem(tuple, index)
  end

  @doc """

    Returns the size of a tuple.

    ## Examples

        iex> Toople.size({:a, :b, :c})
        3
  """
  @spec size(tuple()) :: non_neg_integer()
  def size(tuple) do
    Kernel.tuple_size(tuple)
  end
end
