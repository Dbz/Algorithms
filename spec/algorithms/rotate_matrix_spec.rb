require_relative '../../algorithms/rotate_matrix'

describe 'Matrix rotation' do
  let(:matrix) do
    Matrix.new(
      [[0, 1, 2, 3],
      [4, 5, 6, 7],
      [8, 9, 10, 11],
      [12, 13, 14, 15]])
  end
  let(:rotated_matrix) do
    Matrix.new(
      [[12, 8, 4, 0],
      [13, 9, 5, 1],
      [14, 10, 6, 2],
      [15, 11, 7, 3]])
  end

  context '#rotate_matrix' do
    it 'rotates a matrix 90 degrees clockwise' do
      expect(matrix.rotate_matrix).to eq rotated_matrix
    end
  end

  context '#rotate_matrix_in_place' do
    it 'rotates a matrix 90 degrees clockwise in place' do
      expect(matrix.rotate_matrix_in_place).to eq rotated_matrix
    end
  end
end

