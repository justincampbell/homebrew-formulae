require 'formula'

class Dotmusic < Formula
  homepage 'https://github.com/justincampbell/dotmusic'
  url 'https://github.com/justincampbell/dotmusic/archive/v0.3.0.tar.gz'
  sha1 '72f2c241cbfda0f298389e14892813c6f9ecf03f'

  head 'https://github.com/justincampbell/dotmusic.git'

  def install
    system 'mkdir', "#{prefix}/bin"
    system 'make', 'install', "PREFIX=#{prefix}"
  end
end
