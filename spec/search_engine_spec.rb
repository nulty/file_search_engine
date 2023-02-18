require 'spec_helper'

RSpec.describe SearchEngine do
  let(:dir) { 'spec/fixtures/files' }
  subject { described_class.new(dir) }

  it 'finds the files in the directory' do
    files = Dir.glob("#{dir}/*")
    expect(files).to include(dir << '/file_1.txt')
  end

  it 'finds the files the search term is in' do
    subject.build_index
    expect(subject.search('carry')).to include('spec/fixtures/files/file_1.txt')
    expect(subject.search('awakened')).to include('spec/fixtures/files/file_2.txt')
  end
end
