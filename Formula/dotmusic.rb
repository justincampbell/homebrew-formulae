require 'formula'

class Dotmusic < Formula
  homepage 'https://github.com/justincampbell/dotmusic'
  url 'https://github.com/justincampbell/dotmusic/archive/v0.2.0.tar.gz'
  sha1 '438e8f5202a197e0a1c18289035d7f423f713428'

  head 'https://github.com/justincampbell/dotmusic.git'

  def install
    system 'mkdir', "#{prefix}/bin"
    system 'make', 'install', "PREFIX=#{prefix}"
  end
end
