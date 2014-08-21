require 'formula'

class Qqueue < Formula
  homepage 'https://github.com/justincampbell/q-queue'
  url 'https://github.com/justincampbell/q-queue/archive/v0.1.1.tar.gz'
  sha1 '92567c5c4a472dad3139a14cd35b9679d68f5746'

  head 'https://github.com/justincampbell/q-queue.git'

  def install
    system 'mkdir', "#{prefix}/bin"
    system 'make', 'install', "PREFIX=#{prefix}"
  end
end
