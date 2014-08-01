require 'formula'

class TmuxPomodoro < Formula
  homepage 'https://github.com/justincampbell/tmux-pomodoro'
  url 'https://github.com/justincampbell/tmux-pomodoro/archive/v1.1.0.tar.gz'
  sha1 '327b44ae3f711bd213866dacfb5cedd8b69be454'
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
