# Git Extend
GIT_HELP_MESSAGE="

    This is a helper showing all your Git custom commands.


    Usage: g [option] [parameter]

\033[1m
    Options:                    Description:
\033[0m

    a                           Alias for add
    b                           Alias for branch
    bd, branch-delete           Delete a branch locally and remotely
    bg, branch-generate         Generate a branch name with a timestamp included
    c                           Alias for commit
    co                          Alias for checkout
    d                           Alias for diff
    dt                          Alias for difftool
    g, go                       Instantly add, commit and push
    graph                       Show graph of branches
    h, help                     Show the list of custom Git commands
    lg                          Show log (Changes on all commits)
    lol                         Show log (Single line presentation)
    ls                          Alias for ls-files
    pl                          Alias for pull
    ps                          Alias for push
    r, rework                   Stash and clean the extra files
    re                          Alias for reset
    rl                          List versions
    s                           Alias for status
    so, set-origin              Set the origin path
    st                          Alias for stash
    t, tag                      Tag and push
    w, wtf                      Commit with an automated message

"
g() {
  if [ "$1" = "h" ] || [ "$1" = "help" ]; then
    figlet 'Save time!' && echo -e $GIT_HELP_MESSAGE
  elif [ "$1" = "r" ] || [ "$1" = "rework" ]; then
    git stash
    git clean -fd
  elif [ "$1" = "g" ] || [ "$1" = "go" ]; then
    git add .
    if [ -z "$2" ]; then
      git commit -m "[AUTO] $(curl -s http://whatthecommit.com/index.txt)"
    else
      git commit -m "$2"
    fi
    git push -u origin HEAD
  elif [ "$1" = "w" ] || [ "$1" = "wtf" ]; then
    git commit -m "[AUTO] $(curl -s http://whatthecommit.com/index.txt)"
  elif [ "$1" = "bg" ] || [ "$1" = "branch-generate" ]; then
    if [ -z "$2" ]; then
      echo "Please specify a branch and then an optional branch type (feature/bugfix/etc)"
    else
      if [ -z "$3" ]; then
        git checkout -b "general/$(date +%s)/$2"
      else
        git checkout -b "$3/$(date +%s)/$2"
      fi
    fi
  elif [ "$1" = "bd" ] || [ "$1" = "branch-delete" ]; then
    if [ -z "$2" ]; then
      echo "Please specify a branch"
    else
      git push --delete origin "$2"
      git branch -D "$2"
    fi
  elif [ "$1" = "so" ] || [ "$1" = "set-origin" ]; then
    git remote rm origin
    echo "Please specify the GitHub path:"
    read github_path
    echo "Please specify the GitLab path:"
    read gitlab_path
    echo "Please specify the Bitbucket path:"
    read bitbucket_path
    git remote add origin $github_path
    git remote add github $github_path
    git remote add gitlab $gitlab_path
    git remote add bitbucket $bitbucket_path
    git remote set-url --add --push origin $github_path
    git remote set-url --add --push origin $gitlab_path
    git remote set-url --add --push origin $bitbucket_path
    git remote -v
  elif [ "$1" = "t" ] || [ "$1" = "tag" ]; then
    if [ -z "$2" ]; then
      echo "Please specify a release name"
    else
      echo "Do you want to tag and push '$2'? [Y/N]"
      read tag_decision
      if [ "$tag_decision" = "Y" ] || [ "$tag_decision" = "y" ]; then
        git tag $2 -a
        git push origin $2
      else
        echo "Tagging was cancelled."
      fi
    fi
  else
    git $@
  fi
}