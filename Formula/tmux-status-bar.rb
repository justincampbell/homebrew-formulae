require 'formula'

class TmuxStatusBar < Formula
  homepage 'https://github.com/justincampbell/tmux-status-bar'
  url 'https://github.com/justincampbell/tmux-status-bar/archive/v0.2.0.tar.gz'
  sha1 '2fcd7cc592abf420d2bab8c7ff92560d41b0505f'

  head 'https://github.com/justincampbell/tmux-status-bar.git'

  def install
    system 'mkdir', "#{prefix}/bin"
    system 'make', 'install', "PREFIX=#{prefix}"
  end
end
