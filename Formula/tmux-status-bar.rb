require 'formula'

class TmuxStatusBar < Formula
  homepage 'https://github.com/justincampbell/tmux-status-bar'
  url 'https://github.com/justincampbell/tmux-status-bar/archive/v0.1.0.tar.gz'
  sha1 '32eb8d159c7873e34fa2abb9cc45c6b817a9f296'

  head 'https://github.com/justincampbell/tmux-status-bar.git'

  def install
    system 'mkdir', "#{prefix}/bin"
    system 'make', 'install', "PREFIX=#{prefix}"
  end
end
