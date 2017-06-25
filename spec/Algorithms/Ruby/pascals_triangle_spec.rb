require_relative '../../../Algorithms/Ruby/ls_triangle'

describe 'PascalsTriangle' do
  it 'returns the first four rows' do
    four_rows = [[1], [1, 1], [1, 2, 1], [1, 3, 3, 1]]

    expect(pascals_triangle(4)).to eq(four_rows)
  end
end
