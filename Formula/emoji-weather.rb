require 'formula'

class EmojiWeather < Formula
  homepage 'https://github.com/justincampbell/emoji-weather'
  url 'https://github.com/justincampbell/emoji-weather/archive/v0.1.0.tar.gz'
  sha1 'ae54e2bb798a504bcc1d15c11397dda5e49aa00e'
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
