sbtenv
<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/all_contributors-16-orange.svg?style=flat-square)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->
======

[![Build Status](https://travis-ci.org/sbtenv/sbtenv.svg?branch=master)](https://travis-ci.org/sbtenv/sbtenv)

Groom your sbt environment.

Do you need [**Scala**](http://www.scala-lang.org) version management?  
Please refer to [**scalaenv**](https://github.com/scalaenv/scalaenv) in the case of use **Scala**.

### Installation

1. `git clone` sbtenv into `~/.sbtenv`.

    ~~~ sh
    $ git clone git://github.com/sbtenv/sbtenv.git ~/.sbtenv
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
    sbt-0.12.1
    sbt-0.12.2
    sbt-0.12.3
    ...
    ~~~

    If want to install manually, please download sbt archive and extract into `~/.sbtenv/versions/`.

    ~~~ sh
    $ curl -LO http://repo.scala-sbt.org/scalasbt/sbt-native-packages/org/scala-sbt/sbt/0.13.1/sbt.tgz
    $ mkdir -p ~/.sbtenv/versions/sbt-0.13.1
    $ tar xf sbt.tgz -C ~/.sbtenv/versions/sbt-0.13.1/
    ~~~

### Version History

**0.0.15** (Jul 11, 2018)

  - Support fish shell by [@ikuo-suyama](https://github.com/ikuo-suyama)
    - [#37](https://github.com/sbtenv/sbtenv/pull/37)

**0.0.14** (Mar 03, 2018)

  - Added *sbt 1.0.0* - *sbt 1.1.1*
    - [#31](https://github.com/sbtenv/sbtenv/pull/31), [#32](https://github.com/sbtenv/sbtenv/pull/32), [#33](https://github.com/sbtenv/sbtenv/pull/33), [#35](https://github.com/sbtenv/sbtenv/pull/35)
  - Added *sbt 0.13.16* - *sbt 0.13.17*
    - [#34](https://github.com/sbtenv/sbtenv/pull/34)

**0.0.13** (Jun 27, 2017)

  * Added *sbt 0.13.15*
  * Added *sbt 0.13.14*
  * Fixed an issue with sbt distributions with non-standard folders ( Thanks @j1mr10rd4n )

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


## Contributors ✨

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tr>
    <td align="center"><a href="https://mazgi.github.io/"><img src="https://avatars2.githubusercontent.com/u/194222?v=4" width="100px;" alt=""/><br /><sub><b>Matsuki, Hidenori</b></sub></a><br /><a href="#maintenance-mazgi" title="Maintenance">🚧</a> <a href="https://github.com/sbtenv/sbtenv/commits?author=mazgi" title="Code">💻</a></td>
    <td align="center"><a href="https://www.zaneli.com/"><img src="https://avatars2.githubusercontent.com/u/379820?v=4" width="100px;" alt=""/><br /><sub><b>Shunsuke Otani</b></sub></a><br /><a href="https://github.com/sbtenv/sbtenv/commits?author=zaneli" title="Code">💻</a></td>
    <td align="center"><a href="https://ehrns.com"><img src="https://avatars2.githubusercontent.com/u/2118299?v=4" width="100px;" alt=""/><br /><sub><b>Alex Ehrnschwender</b></sub></a><br /><a href="https://github.com/sbtenv/sbtenv/commits?author=alexanderscott" title="Code">💻</a></td>
    <td align="center"><a href="https://github.com/TomRegan"><img src="https://avatars3.githubusercontent.com/u/235364?v=4" width="100px;" alt=""/><br /><sub><b>Tom Regan</b></sub></a><br /><a href="https://github.com/sbtenv/sbtenv/commits?author=TomRegan" title="Code">💻</a></td>
    <td align="center"><a href="https://github.com/sungkmi"><img src="https://avatars0.githubusercontent.com/u/3403684?v=4" width="100px;" alt=""/><br /><sub><b>sungkmi</b></sub></a><br /><a href="https://github.com/sbtenv/sbtenv/commits?author=sungkmi" title="Code">💻</a></td>
    <td align="center"><a href="https://github.com/j1mr10rd4n"><img src="https://avatars2.githubusercontent.com/u/946427?v=4" width="100px;" alt=""/><br /><sub><b>Jim Riordan</b></sub></a><br /><a href="https://github.com/sbtenv/sbtenv/commits?author=j1mr10rd4n" title="Code">💻</a></td>
    <td align="center"><a href="https://github.com/jeffwilde"><img src="https://avatars0.githubusercontent.com/u/6980603?v=4" width="100px;" alt=""/><br /><sub><b>Jeff Wilde</b></sub></a><br /><a href="https://github.com/sbtenv/sbtenv/commits?author=jeffwilde" title="Code">💻</a></td>
  </tr>
  <tr>
    <td align="center"><a href="https://www.sslife.tech/"><img src="https://avatars3.githubusercontent.com/u/21254456?v=4" width="100px;" alt=""/><br /><sub><b>sawadashota</b></sub></a><br /><a href="https://github.com/sbtenv/sbtenv/commits?author=sawadashota" title="Code">💻</a></td>
    <td align="center"><a href="https://github.com/sworisbreathing"><img src="https://avatars2.githubusercontent.com/u/1486524?v=4" width="100px;" alt=""/><br /><sub><b>Steven Swor</b></sub></a><br /><a href="https://github.com/sbtenv/sbtenv/commits?author=sworisbreathing" title="Code">💻</a></td>
    <td align="center"><a href="https://github.com/josjos7"><img src="https://avatars3.githubusercontent.com/u/24371141?v=4" width="100px;" alt=""/><br /><sub><b>T.A</b></sub></a><br /><a href="https://github.com/sbtenv/sbtenv/commits?author=josjos7" title="Code">💻</a></td>
    <td align="center"><a href="https://github.com/ikuo-suyama"><img src="https://avatars2.githubusercontent.com/u/13306175?v=4" width="100px;" alt=""/><br /><sub><b>Ikuo Suyama</b></sub></a><br /><a href="https://github.com/sbtenv/sbtenv/commits?author=ikuo-suyama" title="Code">💻</a></td>
    <td align="center"><a href="https://kemuridama.jp"><img src="https://avatars2.githubusercontent.com/u/10277857?v=4" width="100px;" alt=""/><br /><sub><b>Ryo Ochiai</b></sub></a><br /><a href="https://github.com/sbtenv/sbtenv/commits?author=kemuridama" title="Code">💻</a></td>
    <td align="center"><a href="http://twitter.com/bussorenre"><img src="https://avatars2.githubusercontent.com/u/1981389?v=4" width="100px;" alt=""/><br /><sub><b>Ryo Matsumoto</b></sub></a><br /><a href="https://github.com/sbtenv/sbtenv/commits?author=bussorenre" title="Code">💻</a></td>
    <td align="center"><a href="https://kaave.github.io/"><img src="https://avatars1.githubusercontent.com/u/16093318?v=4" width="100px;" alt=""/><br /><sub><b>Kyousuke Abe</b></sub></a><br /><a href="https://github.com/sbtenv/sbtenv/commits?author=kaave" title="Code">💻</a></td>
  </tr>
  <tr>
    <td align="center"><a href="https://github.com/zerosum"><img src="https://avatars1.githubusercontent.com/u/345161?v=4" width="100px;" alt=""/><br /><sub><b>TAKAHASHI Osamu</b></sub></a><br /><a href="https://github.com/sbtenv/sbtenv/commits?author=zerosum" title="Code">💻</a></td>
    <td align="center"><a href="https://pthariensflame.wordpress.com"><img src="https://avatars1.githubusercontent.com/u/1847577?v=4" width="100px;" alt=""/><br /><sub><b>Alexander Ronald Altman</b></sub></a><br /><a href="https://github.com/sbtenv/sbtenv/commits?author=pthariensflame" title="Code">💻</a></td>
  </tr>
</table>

<!-- markdownlint-enable -->
<!-- prettier-ignore-end -->
<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!