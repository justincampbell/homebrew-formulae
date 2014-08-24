require 'formula'

class QQueue < Formula
  homepage 'https://github.com/justincampbell/q-queue'
  url 'https://github.com/justincampbell/q-queue/archive/v0.2.0.tar.gz'
  sha1 '0a77099cd91edeb3049a889c7d34b3ac34008b5e'

  head 'https://github.com/justincampbell/q-queue.git'

  def install
    system 'mkdir', "#{prefix}/bin"
    system 'make', 'install', "PREFIX=#{prefix}"
  end
end
