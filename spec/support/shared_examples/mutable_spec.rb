# define subject, original, additional, and full
shared_examples Mutable do
  it 'retains its original identity' do
    expect(subject.original).to eq(original)
  end

  it 'allows access to the working copy' do
    expect(subject.self).to eq(full)
  end

  describe '#revert!' do
    it 'sets it back to its original form' do
      subject.revert!
      expect(subject.self).to eq(original)
    end
  end

  describe 'delegated methods' do
    it 'delegates to @self' do
      expect(subject.to_s).to eq(subject.self.to_s)   # to_s
      expect(subject).to be_a subject.self.class      # is_a?, kind_of?
      expect(subject).to eq(full)                     # ==, ===
    end
  end
end
