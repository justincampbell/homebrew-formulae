require 'formula'

class TmuxStatusBar < Formula
  homepage 'https://github.com/justincampbell/tmux-status-bar'
  url 'https://github.com/justincampbell/tmux-status-bar/archive/v0.2.1.tar.gz'
  sha1 'a735da836f2b9aa54eaf13cb9a43468ff710393a'

  head 'https://github.com/justincampbell/tmux-status-bar.git'

  def install
    system 'mkdir', "#{prefix}/bin"
    system 'make', 'install', "PREFIX=#{prefix}"
  end
end
