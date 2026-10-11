git tips

# Check ssh keys
    # Does GitHub recognise your keys?
    ssh git@github.com


# Install "git lfs" non root
    - COMMANDS
        - (when downloading a repo with lfs large files)
        git lfs install
        g lfs fetch
        g lfs checkout


    - HOWTO INSTALL
        - go to https://github.com/git-lfs/git-lfs/releases
        - find tar file from 'Assets'
            wget https://github.com/git-lfs/git-lfs/releases/download/v3.4.0/git-lfs-linux-amd64-v3.4.0.tar.gz
        - untar the file
        - tar -xvf git-lfs-3.4.0.tar.gz

        - go to the extracted folder
        - cd git-lfs-3.4.0 

        - setup 'git-lfs' file by typing the following
            - install git-lfs ~/.local/bin/git-lfs

        - add path
            export PATH="${PATH}:~/.local/bin/"

@mjoyceGR mjoyceGR mentioned this issue Sep 20, 2023
unnecessary (?) installation failure when git lfs detects "short" files MESAHub/mesa#587
Open
to join this conversation on GitHub. Already have an account? Sign in to comment
Assignees
No one assigned
Labels
None yet
Projects
None yet
Milestone
No milestone
Development

No branches or pull requests
4 participants
@slitvinov
@bk2204
@emjay73

# inside corporate proxy
    # Was getting warning message
    #   warning: auto-detection of host provider took too long (>2000ms)
    #   warning: see https://aka.ms/gcm/autodetect for more information.

    #   - So explicitly tell git to authenticate against bitbucket
    #   - see also https://github.com/GitCredentialManager/git-credential-manager/blob/main/docs/autodetect.md#manual-configuration
        git config --global credential.https://bitbucket.org.provider bitbucket
    # but that didn't work... so I just disabled all this probing
        git config --global credential.autoDetectTimeout -1

# git exclude
    - This is my favourite feature of gitignores. Everytime I need "drafts",
    sample code, etc, in a repo, I create a folder in that repo, but then I have
    to remember to not add it to commits, and I dont want to add it to the
    .gitignore that is versioned, so I do
    "mkdir drafts && echo '*' > ./drafts/.gitignore",
    and it ignores my drafts without having to add a new
    ignored dir in the versioned .gitignores.

    - And obviously, it also "ignores" the .gitignore itself because it matches
    "*", while still taking it into account, which is what I need.

    - Do you know about .git/info/exclude? It only exists in your local git file
    so it isn’t shared with a remote repo and achieves this same purpose.

# svn to git
    - https://stackoverflow.com/questions/79165/how-do-i-migrate-an-svn-repository-with-history-to-a-new-git-repository

    - Cleanly Migrate Your Subversion Repository To a Git Repository. First you
    have to create a file that maps your Subversion commit author names to Git
    commiters, say ~/authors.txt:
        - jmaddox = Jon Maddox <jon@gmail.com>
        - bigpappa = Brian Biggs <bigpappa@gmail.com>

    - Then you can download the Subversion data into a Git repository:
       - mkdir repo && cd repo
       - git svn init http://subversion/repo --no-metadata
       - git config svn.authorsfile ~/authors.txt
       - git svn fetch

# Push to 2 Remotes
    # If repo like:
        git remote add github git@github.com:muccg/my-project.git
        git remote add bb     git@bitbucket.org:ccgmurdoch/my-project.git

    # The origin remote probably points to ONE of these URLs.
    # To set up the push URLs do this:
        git remote set-url --add --push origin git@github.com:muccg/my-project.git
        git remote set-url --add --push origin git@bitbucket.org:ccgmurdoch/my-project.git

    # It will change the remote.origin.pushurl config entry. Now pushes will
    # send to both of these destinations, rather than the fetch URL.
    # Check:
        git remote show origin


# Github command line cli: "gh"
    # config
        ~/.config/gh/config.yml
        ~/.config/gh/hosts.yml
        ~/.config/gh/state.yml
    # setup
        gh auth login
        gh config set editor vim
        gh config set git_protocol ssh
        # or
            gh config set git_protocol https
    # handy
        gh auth status
        gh repo clone <name>

# Disable "push" to remote
    git remote set-url --push origin DISABLE

# Ignore temp Word files
    # Add to .gitignore
    ~$*

# compare two folders
    git diff --no-index --stat folder1 folder2

# disable pushing
    git remote set-url --push origin no_push

# cannot "fast-forward" pull
    # do instead:
    g pull --rebase

# more info (e.g. config settings)
    - ./misc/git-extra.md
	- show all (effective) settings
        git config --list
        git config --show-origin --list
        git config --get core.autocrlf



# create a '.gitkeep' in each sub-folder
    find . -type d  -not -path "./.git/*" -exec touch {}/.gitkeep \;

# view changes to a single file
        tig [FILENAME]

# handy per-repo customisation (handy for line endings?)
    ~/.gitattributes
    * -crlf

    - '.gitattributes': configure line-endings on a per-repository basis

    - It overrides the main 'core.autocrlf' setting, ensuring consistent
    behavior for all users.

    - The advantage is your line configurations are associated with your
    repository. No probs if your collaborators have different line endings.


## show work
    git whatchanged
    git log --stat | grep -i "|"

## rollback a [specific] file
    git checkout [HASH] myfile.py

## git branch commands
    # create
        git checkout -b my-new-branch
    # show all branches, include remotes
        git branch -a
    # delete branch
        git branch -d ANGRY_MONKEY
    ## delete branch REMOTE (2 syntax options)
        git push origin --delete <branchName>
        git push origin :<branchName>
    # rename branch
        git branch -m old_name new_name

## compare 2 branches starting from their last common ancestor (3 dots!)
    git diff <branch1>...<branch2>

## compare file on 2 different branches
    git diff <branch1> <branch2> filename

## list all files added in the new branch
    git diff --name-only [newbranch] master

## show all files in branch r2223
    git ls-tree -r --name-only r2223

## start a branch from a few commits ago
    git checkout <HASH CODE> ..... {detached HEAD state}
    git branch yesterday <HASH CODE>

## merge in all changes to master in one commit
  git merge --squash <feature_branch>

# merge in a file from another branch
    # i.e. merge "myfile" from {branch B} into "myfile" {Branch A}
    git checkout A
    git checkout --patch B myfile

# get file from another branch
    git checkout {other_branch} -- {other_file}

# grab a specific *commit* from another branch
    git cherry-pick <HASH>

# multi line commit messages
    If you want a head line and a content line:
    git commit -m "My head line" -m "My content line."


## overwrite current branch with contents of another branch
    git reset --hard <other_branch_name>

## undo last commit (before push)
    git reset --soft HEAD~1

## go back or undo/reverse last "public" commit (after push)
    git revert HEAD

## revert entire repo state back to a previous commit
    - You could also make a new commit that signifies exactly the same state of
    the venture as f414f31. This will keep the history the same, and it will not
    change the record of the branch’s history. You can do that using the steps
    these suggested steps:

    git reset –hard f414f31
    git reset –soft HEAD@{1}
    git commit -m “Reverting to the state of the project at f414f31”

## revert a single specifc commit
    -n = --no-commit
    git revert -n <HASH>

## create patch
    against branch [master]:
        git format-patch master --stdout > add_keys_jk.patch
    against specific commit:
        git format-patch -1 <sha>
        git format-patch -1 HEAD

## check patch contents
    git apply --check --stat rob_mag_fix.patch

## apply the patch!
    # 'am' - apply patches from 'mailbox'!
    git am < rob_mag_fix.patch
    git apply ~/*.patch


# edit changed files only
    vim -p $(git diff --name-only)

# merge
    git merge --abort
    must check this!

# fix/edit/change/undo previous last commit message and/or files
    # 1. assume you havent pushed yet
    # 2. assume you forgot to add some files
        g aa
        g commit --amend
    # amend message if you HAVE pushed
        git commit --amend -m "New message"
        git push --force-with-lease origin {branch-name}
        # or less safe
            git push --force origin {branch-name}

# jakevdp tip
    - Nice @github trick
    - In .git/config under "origin"
    - add: fetch = +refs/pull/*/head:refs/remotes/origin/pr/*
    - Then do, e.g. $ git checkout pr/25

# hacker news
    git config --global alias.history "log --stat --patch --"
    (I just use: git la -- [somefile])

# force a https timeout
    # abort transfer if speed
    # less than 'lowSpeedLimit' for longer than 'lowSpeedTime'
    git config --global http.lowSpeedLimit 1000
    git config --global http.lowSpeedTime 600

# commits between two branches
    git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative master..[branch-X]

# overwrite master branch
    git branch -m master master-old   # rename master on local
    git push origin :master           # delete master on remote
    git push origin master-old        # create master-old on remote
    git checkout -b master seotweaks  # create a new local master on top of seotweaks
    git push origin master            # create master on remote

# download github *STARS*
    # method 01:
        https://github.com/maguowei/starred
        pip install starred
        starred --username egf25 --sort > github-stars.md

    # method 02:
        https://kirtan403.github.io/bookmark-github-stars/

# speedup git on windows
    git config --global core.preloadindex true
    git config --global core.fscache true
    git config --global gc.auto 256

    - Autocomplete runs faster for many
    commands by setting 'core.fscache' true.
    ('add' and 'diff' but not 'rm')

# quick git prompt bash ps1
    function show_git_marker {
        # Display simple marker if inside GIT directory.
        git rev-parse --git-dir &> /dev/null && echo "(git) "
    }

# git 'skip'!!
    - Sadly 'assume-unchanged' and 'skip-worktree' communicate their intent very
    badly, most of the time 'skip-worktree' is the correct solution.

    - git update-index --assume-unchaged intends to avoid issues when your file
    system has an inefficient lstat(2). Its goal is to improve performance;
    --assume-unchanged doesnt intend to protect the file from upstream changes
    or hard resets.

    What youre looking for is 'git update-index --skip-worktree'. While the
    documentation isnt obvious, skip-worktree should be used when you have files
    which should be changed locally *while* avoiding to commit this changes to
    the repository.

        is it possible to also prevent safe changes? From the docs: Note that
        Git can update working directory file, that is marked skip-worktree, if
        it is safe to do so. – user1978011

        @user1978011 AFAIK no, it isnt. But if thats what you want, why tracking
        the file in the first place? Maybe it makes more sense to use a default
        file, and copy it locally. For example if you have an .env file your
        application requires, you could add .env to your .gitignore *while*
        tracking a file named '.env.default' which contains sensible defaults.
        – Zeeker

### trace errors with (http) credentials
    git config credential.writelog true

## tags: heavyweight tag (tag object)
    git tag -a <TAGNAME>
        - gets a SHA1 Hash code and written to the DAG
        - prompted for a commit message
        - not pushed automatically, but auto-fetched down
        - i.e. tag "publish" is not explicit

## tags: lightweight tagging (default)
    git tag <TAGNAME>
        - HEAD is a lightweight tag really
        - not pushed automatically, but auto-fetched down

## push Tags
    git push --tags

# delete tag
    git tag -d verified
    git push origin :refs/tags/verified

## git LIST tags
    git tag

# checkout specific tag 1
    git fetch origin tag v8.2.3384 --no-tags

# checkout specific tag 2
    git clone --depth 1 https://github.com/vim/vim.git
    cd vim
    g tag -l
    g fetch --tags
    g tag
    g co tags/v7.4.2367 -b v7.4.2367

# safety feature!
    # One thing I do whenever I attempt some stunt in git:
    # I assign *temporary tags* to important changesets...
    git tag tmp
    git perform-stunt

# good cross-platform git client
    smartgit

# update local branch with remote branch
    but *dont* checkout local branch first!

    e.g. Im on branch 'foo' and I want to
    update branch 'master'

    fast-forward only:
        git fetch origin  master:master

    allow non fast-forward updates:
        git fetch origin +master:master

# handy gitignore files
    https://github.com/github/gitignore

# retrieve any submodules (e.g. vim vundle)
    git submodule update --init

## remove untracked files (but not .gitignore files)
    git clean
    git clean -n        {dry run}
    git clean -f        {force}
    git clean -f -d     {remove directories too}

# github markdown link images
    ![Bilby Stampede](http://example.com/images/logo.png)

# incoming (upstream)
    git log HEAD..@{u}

# get history of a file even if renamed
    tig --follow diffgeom.py

# clone shallow (e.g. depth 1)
    gh clone --depth 1 user/repno

# merge conflicts
    g mergetool

    * LOCAL   – the file from the current branch
    * BASE    – common ancestor, how file looked before both changes
    * REMOTE  – file you are merging *into* your branch
    * MERGED  – merge result, this gets saved in the repo

    :diffg RE   (get from REMOTE)
    :diffg BA   (get from BASE)
    :diffg LO   (get from LOCAL)

# online repos quick search
  bitbucket: hit "f" in any repo
  github:    hit "t" in any repo

# ignore local file mode (chmod) changes
    # in repo
        git config core.fileMode false
        this changes {repo}/.git/config

    # global filemode (~/.gitconfig)
        doesnt really work
        git always probes the file-system anyway

# reset v revert
    revert  - adds a new commit and DOESNT lose history
    reset   - jumps back from current commit and LOSES history

# mobaXterm changes
    .gitconfig file
    [core]
        pager = cat

# show (reversed) white space in git-diff
    git diff -R
    because with 'git diff', whitespace errors are only highlighted in
    the lines that are INTRODUCED, not those that are REMOVED.

# Add upstream repo without write access
    cd astropy

    git remote add upstream git://github.com/astropy/astropy.git
    upstream is just the arbitrary name were using to refer
    to the main Astropy repository.

    Note that weve used git:// for the URL rather than
    git@. 'The git:// URL is read only.' This means that we
    cant accidentally (or deliberately) write to the
    upstream repo, and we are only going to use it to merge
    into our own code.

# trying to GIT clone a mercurial HG repo!
    Cloning into 'privoxy-config'...
    fatal: https://bitbucket.org/ZyX_I/privoxy-config/info/refs not found:
    did you run git update-server-info on the server?

# Jakevdp adds the following to his gitconfig
  [credential]
        helper = cache --timeout=7200

# get less to preserve color!
    git status | less -R

# git alias accepts arguments
    You can pass using bash function:
    git config alias.pushall '!f() { git push origin $1 && git push github $1; }; f'

# push all branches
    git push --all origin

## fatal: Unable to find remote helper for 'https'
    $ git clone https://github.com/nvie/gitflow.git

    It looks like not having (lib)curl-devel installed when
    you install git can cause this.

    If you install (lib)curl-devel, and then rebuild
    / install git, this should solve the problem:

## undo before very FIRST commit
    git rm -r --cached .

## when creating a new dotfiles directory
    force add vundle as a submodule (cos 'bundle' directory is gitignored)
    git submodule add -f https://github.com/gmarik/Vundle.vim.git vim/bundle/vundle

## repo nagging about submodules
    git submodule update

## submodules quirk
    when you checkout a submodule it points to a particular
    SHA hash commit, NOT a particular branch.... (!!!)

## update my side-feature branch with master
    g co ngts
    g rebase master

## show what sha HEAD is pointing to
    git rev-parse --short HEAD

## New branch to repo
    Ive created a new local branch,
    How do I make the remote aware of it?
    git push -u origin <new_local_branch>

## show difference between staged (index) and most recent commit
    git diff --staged
    git diff --cached (old way)

## show FILES ONLY that have changed between branches
    git diff --name-status  <branch1>..<branch2>
    git diff --stat --color <branch1>..<branch2>

## find deleted files and restore them
    git rev-list -n 1 HEAD -- <file_path>
    git checkout <deleting_commit>^ -- <file_path>

    or in one command:
        git checkout $(git rev-list -n 1 HEAD -- "$file")^ -- "$file"

## show when a file was deleted
    git log --diff-filter=D --summary


## Stashing
    git stash
    git stash list
    git stash apply
    git stash apply stash@{2}
    git stash apply --index

    git stash drop
    git stash pop

## show whats in a stash
    git stash show -p

## See commits AND changes affecting a specific file
    # i.e. show patches
        git log -p <FILENAME>

    # renames:
        git log --follow -p <FILENAME>

    # graphical:
        gitk <FILENAME>

    # console graphical: (curses based)
        sudo apt-get install tig
        tig <FILENAME>

## submodule is empty!
    With version 1.6.5 of Git and later, you can use:
        git clone --recursive git://github.com/foo/bar.git
        cd bar

    # For older Git versions, just use:
        git clone git://github.com/foo/bar.git
        cd bar
        git submodule update --init

## https remember password
    # store password in memory (default 15 mins)
        git config credential.helper cache
        git config credential.helper 'cache --timeout=3600'

    # store password in directory ~/.git-credential-cache/
        git config credential.helper store

    # stop using stored credentials
        git config --unset credential.helper

## create "centralised" repo on network drive
    # (without working tree)
    cd \path\to\central_repo.git\
    git --bare init

## get colors in windows console (cmd.exe)
    add SYSTEM (not user!) environment variable
    TERM=msys

## location of --global .gitconfig in Windows 7
    c:\user\<username>\.gitconfig

## Update blank author on old commits
    git --ammend --reset-author -m "some commit message"

## gitolite
    a local alternative to github?

## stage only some changes in a file
    git add . -p

## Github wrapper
    "hub" is a command line tool that wraps git to provide
    extra commands that make working with GitHub easier
    hub clone hellogitworld

## git extras
    suite of commands such as "deploy branch"

## add empty directories to repo
    mkdir <directory_name>
    cd <directory_name>
    touch .gitignore
    (on a deep directory tree, add a
    .gitignore deep in the bottom tree)

## add "sticky note" to a commit
    git notes add [opens the editor...]
    git notes add <treeish>
    (creates a disconnected graph in parallel with references to the DAG proper)
    (future version should have "git push --notes")

## git pull origin +master:master matthewsidea
    "force your local master to look like the remote repo"????

## git fetch
    takes down a copy but doesnt merge it into current branch.
    must specifically ask do "git merge"

## subtle point about "push"
    git push
    # - pushes ALL commits on ALL branches
    git push <remote> <branchname>
    # only concentrates on specified branch
    set push=upstream or push=current in .gitconfig

## git diff:
    Show differences between your working directory and the
    index.

## git diff –cached:
    Show differences between the index and the most recent
    commit.

## git diff HEAD:
    differences between your working directory and the most
    recent commit.

## tidy up and prune a git repo (calls git prune)
    git gc

## diffing two branches;
    git diff <BRANCH1> <BRANCH2>
    git diff <local branch> <remote branch>
    git diff timsidea origin/timsidea

## difference fetch and pull
    "pull" performs a fetch AND THEN merges

## make your git repository available
    (owner)                 git serve tim
    (person who wants it)   git remote add tim git://timsbox/repo1.git

## Patch format: shows actual file content changes for a range of commits
    git log HEAD^^^..HEAD -p

## refer to a RANGE of commits
    git log <earlier>..<later>
    git log 458fb..7ee83
    git log 458fb^^^..
    git log HEAD^^^..HEAD

## refer to hashes "treeish"
## these shortcuts can be used on branches aswell
    HEAD    last thing committed
    HEAD^   commit previous to HEAD
    HEAD~3  three commits before HEAD

## Roll back to a certain commit
    git reset --hard <old-commit-id>
    git push -f

## Never Commit Changed Files (But still keep original revisioned.)
## And also the command to reverse this
    git update-index --assume-unchanged <file>
    git update-index --no-assume-unchanged <file>

## Viewing Unpushed Git Commits
## If you want to see all commits on all branches that arent pushed yet,
    git log --branches --not --remotes

## see whats different on 'local' compared with remote 'origin'
    git log --branches --not --remotes=origin

## show most recent commit on each branch,
## and the branch names
    git log --branches --not --remotes --simplify-by-decoration --decorate --oneline

## unstage a file
    git reset <filename>
    git reset HEAD <filename>

## stage new files
    git add .         stages new and updated, but not rm actions
    git add -u        stages tracked files only - both updated and removed
    git add -A        stages All - new,updated,rm

## remove file from index
    git rm --cache <filename>
    **Warning** this stages the removal of the file from the repo aswell??!!!

## rename a file
    git mv filename.c newfilename.c

## git error: permission denied
    fatal: cannot exec 'git-aa': Permission denied
    means you have an invalid directory in your $PATH in .bashrc !!

# git error: unable to mark file
    - update-index --assume-unchanged [myfile]
        - fatal: Unable to mark file [myfile]
    - you may have TWO FILES with the:
        - same name
        - but different cases
    - This happended with CompaRNA, did a checkout in Windows GitBash,
    - but the original code-base was created on Linux
        - Windows cant handle case insensitve files on git
        - ./contextfold.gif
        - ./ContextFold.gif


# my old github repos:
    - intnull/sage-physics
    - coolwanglu/guake-colors-solarized
    - mnielsen/tiddlylisp
    - chris-taylor/Classical-Mechanics
    - omnidan/python-latex
    - jtauber/functional-differential-geometry
    - CatherineH/pyglet_helper
    - uwescience/datasci_course_materials
    - jdwittenauer/ipython-notebooks
    - chrislgarry/Apollo-11
    - hplgit/prog4comp
    - pcatach/sicm-solutions
    - hplgit/scipro-primer
    - jakevdp/PythonDataScienceHandbook
    - earthquakesan/hdfs-spark-hive-dev-setup
    - hplgit/bumpy
    - asadoughi/stat-learning
    - sympy/scipy-2016-tutorial
    - Muladhara/samizdata
    - aloctavodia/Doing_bayesian_data_analysis
    - dariober/sympy-books
    - ystael/chicago-ug-math-bib
    - pydy/pydy
    - caiorss/Functional-Programming
    - pdelong42/SICM
    - com-py/compy
    - astrofrog/python4vienna
    - ULAFF/notebooks
    - atitus/PHY3110
    - hnarayanan/sicm

# Git workflow: WIP
    - Heres something I try:
        1. Always branch and commit.
        2. Push branch as a work in progress.
        3. When branch seems ready to merge, make a new branch from that branch.
        4. In the new branch, go crazy. Squash, reorder, whatever the heck.
        5. If you screw something up royally in '#4', delete that new branch and go back to step '#3.'
        6. If CI succeeded for new branch, merge new branch.
        7. Delete work-in-progress branch.
        - What kind of situations arent covered by this approach?

    Specifically, for step '#5':
        - git reset .
        - git clean -df
        - git checkout -f wip
        - git branch -D final

# old github cli: "hub" credentials
    source "/usr/local/bin/hubpass.sh"
    because hub doesnt store my credentials
    export GITHUB_USER=xxx
    export GITHUB_PASSWORD=xxxxxx

# old github cli: "hub"
    hub remote add -p {github user name}
    -p  use git protocol


# Pro Git (Scott Chacon)
    - Added on Sunday, August 19, 2012, 03:48 AM

    - It’s important to note that git diff by itself doesn’t show all changes
    made since your last commit — only changes that are still UNSTAGED.
    - This can be confusing, because if you’ve staged all of your changes, git
    diff will give you no output.

    - Every time you perform a commit, you’re recording a snapshot of your
    project that you can revert to or compare to later.


# Links
    - Github cli                                 https://github.com/cli/cli
    - Microsoft Git / Scalar for monorepos       https://github.com/microsoft/git
    - HN: GitVFS                                 https://news.ycombinator.com/item?id=28263356
    - HN: gitignore tricks (good)                https://news.ycombinator.com/item?id=31420268
    - good: Setup Gitlab                         https://www.youtube.com/watch?v=CskVg8ZCbKw
    - good: explanation of git pointers HEAD etc https://news.ycombinator.com/item?id=38112951
