require 'formula'

class Rr < Formula
  homepage 'https://github.com/justincampbell/rr'
  url 'https://github.com/justincampbell/rr/archive/v0.2.0.tar.gz'
  sha1 'f9dd90f422bfdce2c0e75057a465bded7050f84e'

  head 'https://github.com/justincampbell/rr.git'

  def install
    system 'mkdir', "#{prefix}/bin"
    system 'make', 'install', "PREFIX=#{prefix}"
  end
end
