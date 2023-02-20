defmodule ListLengthTest do
  use ExUnit.Case

  describe "call/1" do
    test "count list elements" do
      # Given
      list1 = [1, 2, 3, 4, 5, 6]
      list2 = [1, 2]
      list3 = [1, 2, 3, 4]

      # When
      response1 = ListLength.call(list1)
      response2 = ListLength.call(list2)
      response3 = ListLength.call(list3)

      # Then
      assert response1 == 6
      assert response2 == 2
      assert response3 == 4
    end

    test "passing an empty list" do
      # Given
      list = []

      # When
      response = ListLength.call(list)

      # Then
      assert response == 0
    end
  end
end
