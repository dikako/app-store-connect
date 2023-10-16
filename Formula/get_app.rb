class GetApp < Formula
  desc "Get app from app store connect"
  homepage "https://github.com/dikako/homebrew-app-store-connect"
  version "1.3"

  url "https://github.com/dikako/homebrew-app-store-connect/archive/refs/tags/1.3.zip", :using => :curl

  def install
    ruby_version = system("ruby -v")
    if ruby_version.nil?
      # Install rbenv
      system("echo 'install rbenv and ruby-3.0.0'")
      system("git clone https://github.com/rbenv/rbenv.git ~/.rbenv")
      system("echo 'eval \"$(~/.rbenv/bin/rbenv init - zsh)\"' >> ~/.zshrc")
      system("rbenv install 3.0.0")
      system("rbenv global 3.1.2")
      system("gem install bundler")
      system("bundle install")
    else
      system("echo 'Already install #{ruby_version}'")
      unless ruby_version =~ "3"
        system("echo 'install rbenv and ruby-3.0.0'")
        system("git clone https://github.com/rbenv/rbenv.git ~/.rbenv")
        system("echo 'eval \"$(~/.rbenv/bin/rbenv init - zsh)\"' >> ~/.zshrc")
        system("rbenv install 3.0.0")
        system("rbenv global 3.1.2")
        system("gem install bundler")
        system("bundle install")
      end
    end

    bin.install "bin/get_app"
  end
end
