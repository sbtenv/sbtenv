sbtenv
======

[![Build Status](https://travis-ci.org/kadaan/sbtenv.png?branch=master)](https://travis-ci.org/kadaan/sbtenv)

Groom your sbt environment.

Do you need [**Play Framework**](http://www.playframework.com) and [**Scala**](http://www.scala-lang.org) version management?  
Please refer to [**playenv**](https://github.com/mazgi/playenv) in the case of use **Play Framework**, and [**scalaenv**](https://github.com/mazgi/scalaenv) in the case of use **Scala**.

### Installation

1. `git clone` sbtenv into `~/.sbtenv`.

    ~~~ sh
    $ git clone git://github.com/kadaan/sbtenv.git ~/.sbtenv
    ~~~

2. Add `~/.sbtenv/bin` to your `$PATH` for access to the `sbtenv` command.

    ~~~ sh
    $ echo 'export PATH="${HOME}/.sbtenv/bin:${PATH}"' >> ~/.zshrc
    ~~~

3. Add `sbtenv init` to your shell to enable shims and autocompletion.  

    ~~~ sh
    $ echo 'eval "$(sbtenv init -)"' >> ~/.zshrc
    ~~~

    **Bash note**: Modify your `~/.bash_profile` file instead of `~/.zshrc`.

4. Restart your shell so that PATH changes take effect. (Opening a new
   terminal tab will usually do it.) Now check if sbtenv was set up:

    ~~~ sh
    $ type sbtenv
    #=> "sbtenv is a shell function"
    ~~~

    *Same as in previous step, use `~/.bash_profile` for Bash.*

5. Install each version of sbt.

    ~~~ sh
    $ sbtenv install sbt-0.13.1
    ~~~

    If show all available version, please use the following command:

    ~~~ sh
    $ sbtenv install -l
    All available versions:
    sbt-0.13.11
    sbt-0.13.12
    sbt-0.13.13
    ...
    ~~~

    If want to install manually, please download sbt archive and extract into `~/.sbtenv/versions/`.

    ~~~ sh
    $ curl -LO http://repo.scala-sbt.org/scalasbt/sbt-native-packages/org/scala-sbt/sbt/0.13.1/sbt.tgz
    $ mkdir -p ~/.sbtenv/versions/sbt-0.13.1
    $ tar xf sbt.tgz -C ~/.sbtenv/versions/sbt-0.13.1/
    ~~~

### Version History

**0.0.12** (Dec 26, 2016)

  * Added *sbt 0.13.13*

**0.0.11** (Aug 24, 2016)

  * Added *sbt 0.13.12*

**0.0.10** (Mar 16, 2016)

  * Added *sbt 0.13.11*

**0.0.9** (Aug 25, 2015)

  * Added *sbt 0.13.6* - *sbt 0.13.9*  
    Many thanks to @alexanderscott

**0.0.8** (Aug 06, 2014)

  * Added recipe for *sbt 0.13.5* to *sbt-install* built-in plugin.

**0.0.7** (May 24, 2014)

  * Improved version management: will apply version, if there is a `build.properties` file.
  * Fixed a bug when run `versions` subcommand.

**0.0.6** (Apr 15, 2014)

  * Added recipe for *sbt 0.13.2* to *sbt-install* built-in plugin.

**0.0.5** (Mar 25, 2014)

  * Improved installation instruction by *sbt-install* built-in plugin.

**0.0.4** (Mar 14, 2014)

  * Added [Travis CI](https://travis-ci.org) status badge on README.
  * Fixed a bug when run `rehash` subcommand.
  * Fixed version string.

**0.0.3** (Mar 06, 2014)

  * Fixed minor bugs.

**0.0.2** (Mar 04, 2014)

  * Added completions for `Z shell` and `Bash`.

**0.0.1** (Jan 30, 2014)

  * Initial public release.

