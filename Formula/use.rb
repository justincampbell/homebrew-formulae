require 'formula'

class Use < Formula
  homepage 'https://github.com/justincampbell/use'
  url 'https://github.com/justincampbell/use/archive/v0.2.1.tar.gz'
  sha1 'd3a7adc558dd690b7b383606928fb3f0edf4eaac'

  head 'https://github.com/justincampbell/use.git'

  def install
    system 'make', 'install', "PREFIX=#{prefix}"
  end

  def caveats; <<-EOS.undent
    Add the following to your `~/.profile`:

        source #{opt_prefix}/share/use/use.sh

    Create a folder in `~/.use`, and then add folders inside for each client:

        ~
          .use/
            me/
            my_company/

    Then in each folder, create a `.profile` file to be sourced when you `use` that profile.

        # ~/.use/me/.profile
        export FOG_DIRECTORY=myname
    EOS
  end
end
