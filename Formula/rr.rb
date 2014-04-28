require 'formula'

class Rr < Formula
  homepage 'https://github.com/justincampbell/rr'
  url 'https://github.com/justincampbell/rr/archive/v0.5.0.tar.gz'
  sha1 '7c198879b28ab38378a0f017412b244447e88946'

  head 'https://github.com/justincampbell/rr.git'

  def install
    system 'mkdir', "#{prefix}/bin"
    system 'make', 'install', "PREFIX=#{prefix}"
  end
end
