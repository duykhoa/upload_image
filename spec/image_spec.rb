require "spec_helper"

describe Upload::Image do
  describe ".new" do
    let(:path) { '/path/to/st' }
    subject { Upload::Image.new(path) }
    it { is_expected.to be_a Upload::Image }
  end

  describe "#exist" do
    subject { Upload::Image.new(path).exist? }
    let(:path) { '/weird/path/no/exist' }

    context "file isn't exist" do
      it { is_expected.to be false }
    end

    context "file is exist" do
      before { allow(File).to receive(:file?).and_return(true) }
      it { is_expected.to be true }
    end
  end
end
