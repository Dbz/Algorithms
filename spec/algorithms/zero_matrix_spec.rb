require_relative '../../algorithms/zero_matrix'

describe 'Matrix#zero_matrix' do
  let(:matrix) do
    Matrix.new(
      [[0, 1, 2, 3, 4],
      [5, 6, 7, 8, 9],
      [1, 0, 3, 4, 5]])
  end
  let(:zeroed_matrix) do
    Matrix.new(
      [[0, 0, 0, 0, 0],
      [0, 0, 7, 8, 9],
      [0, 0, 0, 0, 0]])
  end

  it 'returns a zeroed out matrix' do
    expect(matrix.zero_matrix).to eq zeroed_matrix
  end
end

