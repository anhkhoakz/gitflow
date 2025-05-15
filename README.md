# Gitflow

Git extensions to provide high-level repository operations for Vincent
Driessen\'s branching model, with modifications.
:::

[Download
.zip](https://github.com/petervanderdoes/gitflow/zipball/master){.button
aria-label="Download zip file"} [Download
.tar.gz](https://github.com/petervanderdoes/gitflow/tarball/master){.button
aria-label="Download tar.gz file"} [View on
GitHub](https://github.com/petervanderdoes/gitflow){.button
aria-label="View on GitHub"}

------------------------------------------------------------------------

## git-flow

A collection of Git extensions to provide high-level repository
operations for Vincent Driessen\'s [branching
model](https://nvie.com/git-model "original blog post"). This fork adds
functionality not added to the original branch.

::: {.section .getting-started}

## Getting started

For the best introduction to get started with `git flow`, please read
Jeff Kreeftmeijer\'s blog post:

<https://jeffkreeftmeijer.com/git-flow/>

Or have a look at one of these screen casts:

- [How to use a scalable Git branching model called
  git-flow](https://buildamodule.com/video/change-management-and-version-control-deploying-releases-features-and-fixes-with-git-how-to-use-a-scalable-git-branching-model-called-gitflow)
  (by Build a Module)
- [A short introduction to git-flow](https://vimeo.com/16018419) (by
  Mark Derricutt)
- [On the path with
  git-flow](https://codesherpas.com/screencasts/on_the_path_gitflow.mov)
  (by Dave Bock)
:::

## Installing git-flow

See the Wiki for up-to-date [Installation
Instructions](https://github.com/petervanderdoes/gitflow/wiki/Installation).

## Integration with your shell

For those who use the [Bash](https://www.gnu.org/software/bash/) or
[ZSH](https://www.zsh.org) shell, please check out the excellent work on
the
[git-flow-completion](https://github.com/bobthecow/git-flow-completion)
project by [bobthecow](https://github.com/bobthecow). It offers
tab-completion for all git-flow subcommands and branch names.

## FAQ

- See the [FAQ](https://github.com/petervanderdoes/gitflow/wiki/FAQ)
  section of the project Wiki.
- Version Numbering Scheme.\
  Starting with version 1.0, the project uses the following scheme:
  \<MAJOR\>.\<MINOR\>.\<REVISION\>-avh

## Please help out

This project is still under development. Feedback and suggestions are
very welcome and I encourage you to use the [Issues
list](https://github.com/petervanderdoes/gitflow/issues) on Github to
provide that feedback.

Feel free to fork this repo and to commit your additions. For a list of
all contributors, please see the [AUTHORS](AUTHORS) file.

Any questions, tips, or general discussion can be posted to our Google
group: <https://groups.google.com/group/gitflow-users> This is the
original group set up to support the nvie branch, but I am monitoring
the list as well for any questions related to my version. When you do
post a question on the list please indicate which version you are, using
the complete version number.

## Contributing

Fork the repository. Then, run:

``` {lang="shell"}
git clone git@github.com:<username>/gitflow.git
cd gitflow
```

Install the git-flow software by running make.

``` {lang="shell"}
git flow init -d
git flow feature start <your feature>
```

Then, do work and commit your changes.

``` {lang="shell"}
git flow feature publish <your feature>
```

When done, open a pull request to your feature branch.

## License terms

git-flow is published under the FreeBSD License, see the
[LICENSE](LICENSE) file. Although the FreeBSD License does not require
you to share any modifications you make to the source code, you are very
much encouraged and invited to contribute back your modifications to the
community, preferably in a Github fork, of course.

:::: {.section .usage}

## git flow usage

::: {.section .initialization}

### Initialization

To initialize a new repo with the basic branch structure, use:

```sh
    git flow init [-d]
```

This will then interactively prompt you with some questions on which
branches you would like to use as development and production branches,
and how you would like your prefixes be named. You may simply press
Return on any of those questions to accept the (sane) default
suggestions.

The `-d` flag will accept all defaults.
:::

### Creating feature/release/hotfix/support branches

- To list/start/finish/delete feature branches, use:

```sh
    git flow feature
    git flow feature start <name> [<base>]
    git flow feature finish <name>
    git flow feature delete <name>
```

  For feature branches, the `<base>` arg must be a commit on `develop`.

- To push/pull a feature branch to the remote repository, use:

```sh
    git flow feature publish <name>
    git flow feature pull <remote> <name>
```

- To list/start/finish/delete release branches, use:

```sh
    git flow release
    git flow release start <release> [<base>]
    git flow release finish <release>
    git flow release delete <release>
```

  For release branches, the `<base>` arg must be a commit on `develop`.

- To list/start/finish/delete hotfix branches, use:

```sh
    git flow hotfix
    git flow hotfix start <release> [<base>]
    git flow hotfix finish <release>
    git flow hotfix delete <release>
```

  For hotfix branches, the `<base>` arg must be a commit on `master`.

- To list/start support branches, use:

```sh
    git flow support
    git flow support start <release> <base>
```

  For support branches, the `<base>` arg must be a commit on `master`.

## Showing your appreciation

Of course, the best way to show your appreciation for the git-flow tool
itself remains contributing to the community. If you\'d like to show
your appreciation in another way, however, consider donating through
PayPal:

[![Donate with PayPal (Currently
Disabled)](https://www.paypalobjects.com/en_US/i/btn/btn_donate_SM.gif){width="62"
height="26"}](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=S85FXJ9EBHAF2&lc=US&item_name=gitflow&item_number=gitflow&no_note=0&cn=Add%20special%20instructions%20to%20the%20seller&no_shipping=1&rm=1&return=https%3a%2f%2fgithub%2ecom%2fpetervanderdoes%2fgitflow&cancel_return=https%3a%2f%2fgithub%2ecom%2fpetervanderdoes%2fgitflow&currency_code=USD&bn=PP%2dDonationsBF%3abtn_donate_SM%2egif%3aNonHosted){aria-disabled="true"
style="pointer-events: none; opacity: 0.5;"}
:::

Gitflow is maintained by
[petervanderdoes](https://github.com/petervanderdoes)

This page was generated by [GitHub Pages](https://pages.github.com).
Tactile theme by [Jason Long](https://twitter.com/jasonlong).
