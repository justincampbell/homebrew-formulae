require 'formula'

class Dotmusic < Formula
  homepage 'https://github.com/justincampbell/dotmusic'
  url 'https://github.com/justincampbell/dotmusic/archive/v0.1.0.tar.gz'
  sha1 '2e58418a1a116653d97ddfa479faf52cce7324f2'

  head 'https://github.com/justincampbell/dotmusic.git'

  def install
    system 'mkdir', "#{prefix}/bin"
    system 'make', 'install', "PREFIX=#{prefix}"
  end
end
