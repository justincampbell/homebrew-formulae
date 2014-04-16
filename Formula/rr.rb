require 'formula'

class Rr < Formula
  homepage 'https://github.com/justincampbell/rr'
  url 'https://github.com/justincampbell/rr/archive/v0.3.0.tar.gz'
  sha1 '70d1ec02569041feb196f31d8267d3ff03533a93'

  head 'https://github.com/justincampbell/rr.git'

  def install
    system 'mkdir', "#{prefix}/bin"
    system 'make', 'install', "PREFIX=#{prefix}"
  end
end
