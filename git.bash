##
## разворачикание реп+реп, если понадобиться востпроизвести
## bb - реп подушки (Bitbucket)
## alt - наш реп
## ключи пути называть так
##  c:\Users\admin\.ssh\id_rsa
##  c:\Users\admin\.ssh\id_rsa.ppk
##  c:\Users\admin\.ssh\id_rsa.pub


admin@user-17-PC MINGW64 /d/OpenServer/domains/pod-desktop.local/www (master)
$ git remote add bb git@bitbucket.org:podushka/podushka.com.ua.git

admin@user-17-PC MINGW64 /d/OpenServer/domains/pod-desktop.local/www (master)
$ git fetch bb
The authenticity of host 'bitbucket.org (104.192.143.2)' can't be established.
RSA key fingerprint is SHA256:zzXQOXSRBEiUtuE8AikJYKwbHaxvSc0ojez9YXaGp1A.
Are you sure you want to continue connecting (yes/no)? yes
Warning: Permanently added 'bitbucket.org,104.192.143.2' (RSA) to the list of known hosts.
Permission denied (publickey).
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.

admin@user-17-PC MINGW64 /d/OpenServer/domains/pod-desktop.local/www (master)
$ git fetch bb
Warning: Permanently added the RSA host key for IP address '104.192.143.3' to the list of known hosts.
Permission denied (publickey).
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.

admin@user-17-PC MINGW64 /d/OpenServer/domains/pod-desktop.local/www (master)
$ git fetch bb
Warning: Permanently added the RSA host key for IP address '104.192.143.1' to the list of known hosts.
remote: Counting objects: 16314, done.
remote: Compressing objects: 100% (6713/6713), done.
remote: Total 16314 (delta 9159), reused 15452 (delta 8574)
Receiving objects: 100% (16314/16314), 91.96 MiB | 554.00 KiB/s, done.
Resolving deltas: 100% (9159/9159), done.
From bitbucket.org:podushka/podushka.com.ua
 * [new branch]      g_auth     -> bb/g_auth
 * [new branch]      master     -> bb/master
 * [new branch]      new_design -> bb/new_design

admin@user-17-PC MINGW64 /d/OpenServer/domains/pod-desktop.local/www (master)
$ git remote -v
bb      git@bitbucket.org:podushka/podushka.com.ua.git (fetch)
bb      git@bitbucket.org:podushka/podushka.com.ua.git (push)
origin  git@gl.altsolution.net:altsolution/pod-desktop.git (fetch)
origin  git@gl.altsolution.net:altsolution/pod-desktop.git (push)

admin@user-17-PC MINGW64 /d/OpenServer/domains/pod-desktop.local/www (master)
$ git remote rename origin alt

admin@user-17-PC MINGW64 /d/OpenServer/domains/pod-desktop.local/www (master)
$ git remote -v
alt     git@gl.altsolution.net:altsolution/pod-desktop.git (fetch)
alt     git@gl.altsolution.net:altsolution/pod-desktop.git (push)
bb      git@bitbucket.org:podushka/podushka.com.ua.git (fetch)
bb      git@bitbucket.org:podushka/podushka.com.ua.git (push)

admin@user-17-PC MINGW64 /d/OpenServer/domains/pod-desktop.local/www (master)
$ git branch -v

admin@user-17-PC MINGW64 /d/OpenServer/domains/pod-desktop.local/www (master)
$ git branch -v -a
  remotes/bb/g_auth     5d730a2 Add Google auth using hybridauth (Vkontakte replacement).
  remotes/bb/master     ac8d408 new year commit
  remotes/bb/new_design 2e99e8e fixes

admin@user-17-PC MINGW64 /d/OpenServer/domains/pod-desktop.local/www (master)
$ git checkout -b master bb/master
Branch master set up to track remote branch master from bb.
Already on 'master'
Your branch is based on 'alt/master', but the upstream is gone.
  (use "git branch --unset-upstream" to fixup)

admin@user-17-PC MINGW64 /d/OpenServer/domains/pod-desktop.local/www (master)
$ git push -u alt master
The authenticity of host 'gl.altsolution.net (188.166.39.170)' can't be established.
ECDSA key fingerprint is SHA256:Fousq6HO3RK0OH8mNHC99Iv8+jOE2GDYD3CbMx87X7s.
Are you sure you want to continue connecting (yes/no)? yes
Warning: Permanently added 'gl.altsolution.net,188.166.39.170' (ECDSA) to the list of known hosts.
Counting objects: 15414, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (6005/6005), done.
Writing objects: 100% (15414/15414), 89.87 MiB | 2.67 MiB/s, done.
Total 15414 (delta 8495), reused 15307 (delta 8407)
To gl.altsolution.net:altsolution/pod-desktop.git
 * [new branch]      master -> master
Branch master set up to track remote branch master from alt.

admin@user-17-PC MINGW64 /d/OpenServer/domains/pod-desktop.local/www (master)
$ git brach -vv
git: 'brach' is not a git command. See 'git --help'.

Did you mean this?
        branch

admin@user-17-PC MINGW64 /d/OpenServer/domains/pod-desktop.local/www (master)
$ git branch -vv
* master ac8d408 [alt/master] new year commit

admin@user-17-PC MINGW64 /d/OpenServer/domains/pod-desktop.local/www (master)
$ hystory
bash: hystory: command not found

admin@user-17-PC MINGW64 /d/OpenServer/domains/pod-desktop.local/www (master)
$
