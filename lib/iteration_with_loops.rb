def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  min_array = []
  row_index = 0

  while row_index < src.count do
    element_index = 0
    min_element = src[row_index][0]
    while element_index < src[row_index].count do
      if min_element > src[row_index][element_index]
        min_element = src[row_index][element_index]
      end
      element_index += 1
    end
    min_array << min_element
    row_index += 1
  end
  min_array
end

# def find_min(array)
#   row_index = 0
#   min_array = []
#   while row_index < array.count do
#     element_index = 0
#     while element_index < array[row_index].count do
#       min_element = array[row_index][0]
#       if min_element > array[row_index][element_index]
#         min_element = array[row_index][element_index]
#       end
#       element_index += 1
#     end
#       min_array << min_element
#       row_index += 1
#   end
#   p min_array
# end