require 'formula'

class Dotmusic < Formula
  homepage 'https://github.com/justincampbell/dotmusic'
  url 'https://github.com/justincampbell/dotmusic/archive/v0.1.1.tar.gz'
  sha1 'd21c58c43924fad48ca95670d96c48533271f480'

  head 'https://github.com/justincampbell/dotmusic.git'

  def install
    system 'mkdir', "#{prefix}/bin"
    system 'make', 'install', "PREFIX=#{prefix}"
  end
end
