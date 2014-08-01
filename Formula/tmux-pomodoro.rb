require 'formula'

class TmuxPomodoro < Formula
  homepage 'https://github.com/justincampbell/tmux-pomodoro'
  url 'https://github.com/justincampbell/tmux-pomodoro/archive/v1.1.1.tar.gz'
  sha1 'cad7586ef263629df1e27cade690277244a085dc'
  head 'https://github.com/justincampbell/tmux-pomodoro.git'

  depends_on 'git' => :build
  depends_on 'go' => :build
  depends_on 'hg' => :build

  def install
    ENV["GOPATH"] = buildpath
    ENV["GOBIN"] = "#{prefix}/bin"

    system 'mkdir', ENV['GOBIN']
    system 'make', 'install', "PREFIX=#{prefix}"
  end
end
