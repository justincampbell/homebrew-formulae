require 'formula'

class Rr < Formula
  homepage 'https://github.com/justincampbell/rr'
  url 'https://github.com/justincampbell/rr/archive/v0.2.1.tar.gz'
  sha1 'b0b5243033e56f701c27bf7701e43a506c32c3fc'

  head 'https://github.com/justincampbell/rr.git'

  def install
    system 'mkdir', "#{prefix}/bin"
    system 'make', 'install', "PREFIX=#{prefix}"
  end
end
