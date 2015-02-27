require 'formula'

class EmojiWeather < Formula
  homepage 'https://github.com/justincampbell/emoji-weather'
  url 'https://github.com/justincampbell/emoji-weather/archive/v0.2.1.tar.gz'
  sha1 '4b8f7e3012bf27e1e19ee6ac92fbf3171aaea472'
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
