require 'formula'

class QQueue < Formula
  homepage 'https://github.com/justincampbell/q-queue'
  url 'https://github.com/justincampbell/q-queue/archive/v0.2.2.tar.gz'
  sha1 'f6e8710b2990fa3c55c374dc49a63dbbac3dded2'

  head 'https://github.com/justincampbell/q-queue.git'

  def install
    system 'mkdir', "#{prefix}/bin"
    system 'make', 'install', "PREFIX=#{prefix}"
  end
end
