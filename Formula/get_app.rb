class GetApp < Formula
  desc "Get app from app store connect"
  homepage "https://github.com/dikako/homebrew-app-store-connect"
  version "1.0.0"

  url "https://github.com/dikako/homebrew-app-store-connect/archive/refs/tags/1.2.zip", :using => :curl

  def install
    # Install rbenv
    system "brew", "install", "rbenv"

    # Set up rbenv
    system "rbenv", "init", "-"

    # Install a specific version of Ruby using rbenv
    system "rbenv", "install", "3.0.0" # Replace with the desired Ruby version

    # Set the global Ruby version
    system "rbenv", "global", "3.0.0" # Make sure to use the same Ruby version as above

    # Install a required gem using the system's Ruby
    system "gem", "install", "bundler"

    # Install dependencies
    system "bundle", "install"

    bin.install "bin/get_app"
  end
end
