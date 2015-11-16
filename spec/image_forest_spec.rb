require "spec_helper"

describe Upload::ImageForrest do
  describe ".new" do
    subject { Upload::ImageForrest.new("/path/to/image") }
    it { is_expected.to be_a Upload::ImageForrest }
  end

  describe "#upload" do
    context "image isn't exist" do
      subject { Upload::ImageForrest.new("/path/to/image").upload }
      it { expect(subject).to be_a Upload::Response::Success }
    end
  end
end
