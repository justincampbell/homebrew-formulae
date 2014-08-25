require 'formula'

class QQueue < Formula
  homepage 'https://github.com/justincampbell/q-queue'
  url 'https://github.com/justincampbell/q-queue/archive/v0.2.1.tar.gz'
  sha1 '7a3ef61af8dc9082fe9c96ebe4b672bf953b17d6'

  head 'https://github.com/justincampbell/q-queue.git'

  def install
    system 'mkdir', "#{prefix}/bin"
    system 'make', 'install', "PREFIX=#{prefix}"
  end
end
