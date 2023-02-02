# GitLab Tips

## Setting Past Iterations on Issue - GitLab
1. Navigate to Issue
2. Select Comment Box and Enter:
```
/iteration *iteration:"iteration name"
```

## Git Clone
https://docs.gitlab.com/ee/ssh/#generate-an-ssh-key-pair

1. Find a Project w/ a Repository (ex: Projects that contain code)
2. CLick the Blue Button on the right side of `Project Overview -> Details`/`Repository -> Files` titled `Clone`
3. Copy to Clipboard `Clone with SSH` (or `Clone with HTTPS` if using that for auth instead of SSH for GitLab)
4. Open Terminal
5. Navigate to projects (`cd Projects` or just type `projects`)
6. Enter `git clone {Paste Clipboard SSH Command}`
7. Navigate to new project
8. Enter `git remote -v` to confirm proper remotes setup
