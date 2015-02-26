require 'formula'

class EmojiWeather < Formula
  homepage 'https://github.com/justincampbell/emoji-weather'
  url 'https://github.com/justincampbell/emoji-weather/archive/v0.2.0.tar.gz'
  sha1 '0d454cabd4a6e7c29bb7381ace52f718933cd4ef'
  head 'https://github.com/justincampbell/emoji-weather.git'

  depends_on 'git' => :build
  depends_on 'go' => :build
  depends_on 'hg' => :build

  def install
    ENV["GOPATH"] = buildpath
    ENV["GOBIN"] = "#{prefix}/bin"

    system 'mkdir', ENV['GOBIN']
    system 'make', 'install', "PREFIX=#{prefix}"
  end
end
