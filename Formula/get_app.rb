class GetApp < Formula
  desc "Get app from app store connect"
  homepage "https://github.com/dikako/homebrew-app-store-connect"
  version "1.8.2"

  url "https://github.com/dikako/homebrew-app-store-connect/archive/refs/tags/1.8.2.zip", :using => :curl

  depends_on "ruby@3" # Use Ruby 3 as a dependency

  def install
    bin.install "bin/get_app"
  end
end
