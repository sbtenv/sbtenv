sbtenv
======

Groom your sbt environment.

### Installation

1. `git clone` sbtenv into `~/.sbtenv`.

    ~~~ sh
    $ git clone git://github.com/mazgi/sbtenv.git ~/.sbtenv
    ~~~

2. Add `~/.sbtenv/bin` to your `$PATH` for access to the `sbtenv` command.

    ~~~ sh
    $ echo 'export PATH="${HOME}/.sbtenv/bin:${PATH}"' >> ~/.zshrc
    ~~~

3. Add `sbtenv init` to your shell to enable shims and **autocompletion**.  

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

5. Download sbt archive and extract into `~/.sbtenv/versions/`.

    ~~~ sh
    $ curl -LO http://repo.scala-sbt.org/scalasbt/sbt-native-packages/org/scala-sbt/sbt/0.13.1/sbt.tgz
    $ mkdir -p ~/.sbtenv/versions/sbt-0.13.1
    $ tar xf sbt.tgz -C ~/.sbtenv/versions/sbt-0.13.1/
    ~~~

    *It is only way at present.*

### Version History

**0.0.3** (Mar 06, 2014)

  * Fixed minor bugs.

**0.0.2** (Mar 04, 2014)

  * Added completions for `Z shell` and `Bash`.

**0.0.1** (Jan 30, 2014)

  * Initial public release.

