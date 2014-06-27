require 'formula'

class Rr < Formula
  homepage 'https://github.com/justincampbell/rr'
  url 'https://github.com/justincampbell/rr/archive/v0.5.1.tar.gz'
  sha1 '7753aa18bed32c3ea43cce1370fdde438f5d34f6'

  head 'https://github.com/justincampbell/rr.git'

  def install
    system 'mkdir', "#{prefix}/bin"
    system 'make', 'install', "PREFIX=#{prefix}"
  end
end
