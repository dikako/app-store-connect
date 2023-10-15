class GetApp < Formula
  desc "render a random joke about Chuck Norris"
  homepage "https://github.com/dikako/homebrew-app-store-connect"
  version "1.0.0"

  url "https://github.com/dikako/homebrew-app-store-connect/archive/main.zip", :using => :curl

  def install
    bin.install "bin/get_app"
  end
end