require 'formula'

class TmuxPomodoro < Formula
  homepage 'https://github.com/justincampbell/tmux-pomodoro'
  url 'https://github.com/justincampbell/tmux-pomodoro/archive/v1.2.0.tar.gz'
  sha1 'bdb9e80cd597adc021294466866a8e000f3174dd'
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
