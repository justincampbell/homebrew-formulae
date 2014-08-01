require 'formula'

class TmuxPomodoro < Formula
  homepage 'https://github.com/justincampbell/tmux-pomodoro'
  url 'https://github.com/justincampbell/tmux-pomodoro/archive/v1.0.1.tar.gz'
  sha1 '22163ffb2da2dde6c067badbd830d45d9fb5196f'
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
