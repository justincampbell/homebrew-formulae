require 'formula'

class Use < Formula
  homepage 'https://github.com/justincampbell/use'
  url 'https://github.com/justincampbell/use/archive/v0.2.4.tar.gz'
  sha1 '1fc9b6d927078c7e482ebd277046e5211516dc82'

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
