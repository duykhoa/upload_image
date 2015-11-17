require "spec_helper"

describe Upload::ImageForrest do
  describe ".new" do
    subject { Upload::ImageForrest.new("/path/to/image") }
    it { is_expected.to be_a Upload::ImageForrest }
  end

  describe "#upload" do
    subject { Upload::ImageForrest.new("/path/to/image").upload }

    context "image isn't exist" do
      subject { Upload::ImageForrest.new("/path/to/image").upload }
      it { expect(subject).to be_a Upload::Response::Failure }
      it { expect(subject.message).to eq "File is not exist"}
    end

    context "image exist" do
      let(:response) { double("Response") }

      before do
        allow(RestClient).to receive(:post).and_return(response)
      end

      context "response code is 200" do
        pending
      end

      context "response code is not 200" do
      end
    end
  end
end
