require 'formula'

class Dotmusic < Formula
  homepage 'https://github.com/justincampbell/dotmusic'
  url 'https://github.com/justincampbell/dotmusic/archive/v0.5.0.tar.gz'
  sha1 '319e3d97c1baa52a72a61c561f8e52cf64eac4ec'

  head 'https://github.com/justincampbell/dotmusic.git'

  def install
    system 'mkdir', "#{prefix}/bin"
    system 'make', 'install', "PREFIX=#{prefix}"
  end
end
