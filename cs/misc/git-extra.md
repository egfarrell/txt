
### git storage
    https://codewords.recurse.com/issues/three/unpacking-git-packfiles
    .git/objects
    .git/objects/pack  (has index 'idx' and pack file)

    - packfiles reduce network traffic

git advanced 02 - config
------------------------

Three config "layers":

		HOST
            - `git config --system`
			- saves to /etc/gitconfig
			- "corporate like settings"
			- "not used often"

		USER
			- `git config --global`
			- saves to ~/.gitconfig
			- user accounts

		REPO
			- `git config --local`
			- saves to <REPO_DIRECTORY>/.git/config
			- down at repo level

git config --list
	show all (effective) settings

query a single key
	git config section.key
	git config section.subsection.key

query a single key BY LAYER
	git config --system section.key

config file layout
	[section "subsection"]
		key = value

	[branch "master"]
		remote = origin
		merge = refs/heads/master

add a key from command line
	git config fake.money angry
	git config fake.something.monkey happy
	(if no layer specified, then local layer is default)


  My original SETUP notes
	git config --global github.user "foxe25"
	git config --global github.token   ....something here

	git config --global user.name "EF"
	git config --global user.email username@mail.com
	git config --global core.editor sublime_text
	git config --global color.ui true


git advanced 03 - pull
---------------------

rebase
	rebase pulls really simplify the history graphs,
	kind of clumps each developers changes together.

default behaviour for "pull" is merge.
	Can change this to "rebase" instead.

Manually specify a rebase pull
	git pull --rebase

set rebase pulls for all branches
	git config branch.autosetuprebase always

set rebase for a specific branch
	git branch.feature_division.rebase true


git behind proxy
---------------------

Add to .gitconfig

[http]
    proxy = http://wwwcache.open.ac.uk:80


git config --global http.proxy http://proxyuser:proxypwd@proxy.server.com:8080

change proxyuser by your proxy user

change proxypwd by your prxy password

change proxy.server.com by proxy server url

change 8080 by proxy port

If you what at any time to reset this proxy and work without (no proxy) :

Command to use :
    `git config --global http.proxy ""`



git branches versus tags
---------------------

tags
	are symbolic names for a given revision.
	They always point to the same object (usually: to the same revision);
	they do not change.

branches
	are symbolic names for line of development. New commits are created on top of branch.
	The branch pointer naturally advances, pointing to newer and newer commits.


A tag represents a version of a particular branch at a moment in time.
A branch represents a separate thread of development that may run
concurrently with other development efforts on the same code base.
Changes to a branch may eventually be merged back into another branch
to unify them.

Usually you'll tag a particular version so that you can recreate it,
e.g., this is the version we shipped to XYZ Corp. A branch is more of
a strategy to provide on-going updates on a particular version of the
code while continuing to do development on it. You'll make a branch of
the delivered version, continue development on the main line, but make
bug fixes to the branch that represents the delivered version.

Eventually, you'll merge these bug fixes back into the main line.
Often you'll use both branching and tagging together. You'll have
various tags that may apply both to the main line and it's branches
marking particular versions (those delivered to customers, for
instance) along each branch that you may want to recreate -- for
delivery, bug diagnosis, etc.

git colors
---------------------

If two colours are given
	FIRST is the foreground
	SECOND is the background.

The accepted values are two of
	normal,
	black,
	red,
	green,
	yellow,
	blue,
	magenta,
	cyan,
	white

and optionally one of
	bold,
	dim,
	ul,
	blink
	reverse

git compile
---------------------

compile source
    git clone git://git.kernel.org/pub/scm/git/git.git
    ./configure --prefix=/home/physastro/efox/apps/git_run
    make prefix=/home/physastro/efox/apps/git_run
    make install

alias git
    alias git="/home/physastro/efox/apps/git_run/bin/git"



git diff whitespace blank lines
---------------------

Git version <= 1.8.3.4:
    git diff --ignore-space-at-eol -b -w [commit] ...

Git version >= 1.8.4:
    git diff --ignore-space-at-eol -b -w --ignore-blank-lines [commit] ...


--ignore-space-at-eol
        Ignore changes in whitespace at EOL.


-b --ignore-space-change
        Ignore changes in amount of whitespace. This ignores whitespace at
        line end, and considers all other sequences of one or more
        whitespace characters to be equivalent.


-w --ignore-all-space
        Ignore whitespace when comparing lines. This ignores differences
        even if one line has whitespace where the other line has none.


[git version 1.8.4+]
        --ignore-blank-lines
        Ignore changes whose lines are all blank.


git branches list
---------------------

Take a clone of a remote repository and run
`git branch -a`
(to show all the branches git knows about).
It will probably look something like this:

    > * master
    > remotes/origin/HEAD -> origin/master
    > remotes/origin/master

- `master`:
    is a branch in the local repository.

- `remotes/origin/master`
	is a branch named master on the remote named origin.
	You can refer to this as either:
		"origin/master"
		"remotes/origin/master"

- `git diff origin/master..master`
- `git diff remotes/origin/master..master`
	Both these commands are identical.
	(incidentally, both of these commands mean "show me the changes
	between the remote master branch and my master branch).

`remotes/origin/HEAD`
	is the default _branch_ for the remote named origin.
	This lets you simply say origin instead of origin/master.


github lecture
---------------------

- add `.diff` or `.patch` to URLs

- add `?w=1` to any diff url

- can use Subversion on Github!
	svn checkout github.com/holman/boom

- Github default is HTTP now (instead of SSH)
	uses smart HTTP
	better for corporate firewalls
	no ssh key generation
	credential caching will stop continuous password prompts
	if you choose SSH on github, it will remember that

- clone without ".git" at the end
	git clone https://github.com/holman/boom.git
	git clone https://github.com/holman/boom

- github url shortner
	gitio <url> <name>
	http://git.io/nxVVig

- gists
	are full repositories
	public clone url: git://gist.github.com/2720312.git

- gem in a gist
	gem 'test-spec-mini',
	:git => 'git://gist.github.com/1806986.git'
	see git.io/mini

- github images
	can compare (pixel) changes in images?

- hub multi pushes
	hub push origin, staging

- hub pull request to an issue
	hub pull-request -i <issue>

- automatically use hub!
	alias git=hub
	hub is a superset of git


- keyboard shortcuts
	w branch selector
	s search
	? commands

- subscribe someone to an issue
	/cc @rsanheim, @kneath

- subscribe group to an issue
	@org/team
	@github/designers

- github markdown
	autolinks SHA's and ISSUES

- github markdown
	fenced code highlighting
	```ruby
	require 'redcarpet'
	markdown = Redcarpet.new("Hello World")
	puts markdown.to_html
	```

- commits history by author
	?author=holman

- emoji
	http://www.emoji-cheat-sheet.com/
	:smiley:

- line linking
	also accepts ranges #L16-25

- compare view
	github.com/user/repo/compare/{range}
	{range} = MASTER...MY-BRANCH
	{range} = MASTER@{1.day.ago}...MASTER
	{range} = MASTER@{yesterday}...MASTER
	{range} = MASTER@{2012-10-4}...MASTER

- commitless commmits
	git commit -m "look at me" --allow-empty

- commit stage hunks
	git add -p
	(small, logical commit sets)

- search git log
	git show :/query
	git show :/stupid

- switch to previous branch
	this is like "cd -" for bash!
	git checkout -

- git branch --merged
	show branches that have been merged
	into the one youre currently on
	also (git branch --no-merged)

- git branch --contains 838ad46
	which branch contains a particular SHA

- git checkout BRANCH -- path/to/file.rb
	copies file.rb AT BRANCH
	without switching branches

- git log branchA ^branchB
	show commits in branchA that arent in branchB

- git fsck --lost-found
	finding lost commits

- git blame -w
	handles white space when tracking down who changed what

    git blame -M	# gets around the prob of lines being moved
    git blame -C	# look at other files in the same commit
    git blame -CC	# also looks at commit file was created in
    git blame -CCC

- git status -sb
	neater version of git status

- alias git-undo
	git reset --soft HEAD^
	(retains commit as staged)

- alias git-count
	git shortlog -sn




git ls-files
---------------------

Aim
	I want to know what files I specifically ignored,
	i.e. not just files handled by the .gitignore..
	i.e. files marked by my alias "g ignore"

- H 	cached
- S 	skip-worktree
- M 	unmerged
- R 	removed/deleted
- C 	modified/changed
- K 	to be killed
- ? 	other


git ls-files -v
	so if I've specified the file to be ignored
	it will be lised with a lower-case "h",
	instead of an uppercase "H"
	(if its in the cache)

-v
	Similar to -t, but use LOWERCASE LETTERS for
	files that are marked as ASSUME UNCHANGED
	(see git-update-index(1)).



git merge
---------------------
    git checkout master
    git merge myfeaturebranch

    git checkout --theirs -- another.txt
    git checkout --ours -- another.txt---------------------
    git plumbing
    porcelain is comprised of plumbing

    other VCS's are
        delta storage - storage of CHANGES in files
        delta storage - slower as history gets bigger

    git is
        directed (a-cyclical) graph (DAG) - doesn't cycle back
        store a complete copy of tree at each commit

        what was something like at "version 4" say? -
        just move "read head" back to version 4.
        so no calculations for looking for history

    efficiency
        zlib deflates blobs
        hard links to identical copies of the data

    commit hashes
        SHA-1 Hash returns 40 character Hex
        first 5 or 6 characters give unique handles for about 6 months work
        However if collision (5 or 6 chars not enough), Git will say "ambiguous"
        "treeish" - symbolic way to refer to hash codes

    commit components
        "blob" - 		any file, basically (sparse) array of bytes
        "tree" - 		folder, stores pointers to trees/blobs
        "commit" - 		holds pointer to top level project tree,
                        also has parent(s)
                        Very first commit has "nil" parent
        "tag" - 		e.g. "Release 1.0", "HEAD"

    .git folder
        HEAD txt file stores path to latest HEAD
        e.g. ref: /refs/heads/master
        where master is a text file holding the hash of (latest) head commit

    switch branches?
        change HEAD reference to point to a different commit object

    branches,tags
        really just a human readable pointer to a specific commit Hash code



git rebase
---------------------
    rebase: take turns coding!

    rationale:
        keep your own code base fairly clean and up-to-date and
        be in a good position to merge with colleagues

    taking turns working
        think of an inefficient way of avoiding code merge conflicts.
        Each team member holds a "token" and everyone must stop development
        until the token gets passed to the next team member.
        So no merge problems but not very productive!
        Rebase aims to mimic this approach

    only local!
        "when I rebase it has to be on local commits I never shared with anyone else"

    Syntax - reverse idea to merging
        (we're changing the thing off on the side, not the mainline)
        git checkout <myfeaturebranch>
        git rebase master

    When you started working on your feature, master was a certain way.
    As you worked on feature, the master was changing on other machines.
    You then pull the latest master changes, and then REBASE your feature
    on the new updated master.

    Want to clean up my own branch (interactively)
        i.e. rewrite history
        git rebase HEAD^^^ -i
            make loads of changes in a special text file
            e.g. pick, reword, squash, edit

        now keep repeating the following sequence:
        1. git status
        2. get index in good state
        3. git rebase --continue (will commit for you)

        when you're finished you'll have to
        "force" push cos you rewrote history
        git push -f



git undo revert reset
---------------------
    amend
        REIMPLEMENTS the last commit

    e.g. Change the last commit msg
        git commit --amend

    e.g. add another  file to the last commit
        make the staging area look like what you want the commit to be then type
        git commit -m "some commit"
        git add some.txt
        git commit --amend


    REVERT
        negates one or more commits

    e.g. git revert AG32345
        surgically remove one particular commit
        This will write a new commit into the history
        so a record that you're "reverting" will exist.
        i.e. It makes it like the commit didn't happen
        by PATCHING	things...

    e.g. revert a range of commits
        git revert HEAD^^^^^..HEAD


    RESET
        get rid of local changes. Moves the pointer.
        will result in orphan commit objects that will be cleaned up

    e.g. git reset --hard
        take local directory structure and make it look like last commit
        i.e. go back to "HEAD"


    e.g. git reset --hard HEAD^^


    "Stashing"
        git stash
            takes local changes and puts them in a numbered unnamed branch

        git checkout <someotherbranch>
            now switch to another branch

        git stash apply
            copies in stashed changes from (numbered) stash branch
            but leaves them on the (numbered) stash branch aswell
            So you can "apply" a stash to several branches (unusual workflow)

        git stash pop
            copies in the stashed changes and remove from (numbered) stash branch
            (i.e. remove and apply in one step)
