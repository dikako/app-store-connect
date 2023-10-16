class GetApp < Formula
  desc "Get app from app store connect"
  homepage "https://github.com/dikako/homebrew-app-store-connect"
  version "1.4"

  url "https://github.com/dikako/homebrew-app-store-connect/archive/refs/tags/1.4.zip", :using => :curl

  depends_on "ruby@3" # Use Ruby 3 as a dependency

  def install
    # Check if Ruby 3 is not installed
    unless system("#{Formula["ruby@3"].opt_bin}/ruby --version | grep 'ruby 3'")
      opoo "Ruby 3 is not installed. Installing Ruby 3..."
      system "brew install ruby@3"
    end

    bin.install "bin/get_app"
  end

  test do
    system "#{bin}/get_app", "--version"
  end
end
