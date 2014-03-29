require 'formula'

class RepeatAndRetry < Formula
  homepage 'https://github.com/justincampbell/repeat-and-retry'
  url 'https://github.com/justincampbell/repeat-and-retry/archive/v0.1.0.tar.gz'
  sha1 '488bbcbcb19e4ef5c883983abd66effef69366d4'

  head 'https://github.com/justincampbell/repeat-and-retry.git'

  def install
    system 'mkdir', "#{prefix}/bin"
    system 'make', 'install', "PREFIX=#{prefix}"
  end
end
