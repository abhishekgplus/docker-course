=========================================================
GIT + GITHUB + VS CODE COMPLETE BEGINNER GUIDE
=========================================================

OBJECTIVE
---------
1. Install Git
2. Configure Git
3. Install VS Code
4. Connect VS Code with GitHub
5. Fork a repository
6. Clone repository locally
7. Create branch
8. Make changes
9. Commit changes
10. Push changes to GitHub
11. Pull future updates
12. Sync fork with original repository

=========================================================
STEP 1: INSTALL GIT
=========================================================

Download Git:
https://git-scm.com/download/win

Verify Installation:

git --version

Explanation:
git         -> Git command
--version   -> Shows installed version

Example Output:
git version 2.50.1.windows.1

=========================================================
STEP 2: CONFIGURE GIT
=========================================================

Set Username:

git config --global user.name "Abhishek Kumar Singh"

Explanation:
git config      -> Configure Git
--global        -> Applies to all repositories
user.name       -> Name stored in commits

Set Email:

git config --global user.email "abhishek.gplus@gmail.com"

Explanation:
Every commit contains:
- Author Name
- Author Email
- Timestamp
- Commit Message

Verify Configuration:

git config --list

Example Output:

user.name=Abhishek Kumar Singh
user.email=your-email@gmail.com

=========================================================
STEP 3: INSTALL VS CODE
=========================================================

Download:
https://code.visualstudio.com/

Install with default options.

=========================================================
STEP 4: CONNECT VS CODE TO GITHUB
=========================================================

Open VS Code

Click:
Accounts (Bottom Left)
→ Sign in to GitHub

Authorize browser login.

Benefits:
- Clone repositories
- Push code
- Pull code
- Create Pull Requests
- Manage repositories

=========================================================
STEP 5: FORK REPOSITORY
=========================================================

Original Repository:

https://github.com/lm-academy/docker-course

Click:
Fork

What is a Fork?

Before:

lm-academy/docker-course

After:

lm-academy/docker-course
          |
          v
yourusername/docker-course

You now own your own copy.

=========================================================
STEP 6: CLONE REPOSITORY
=========================================================

Copy Fork URL

Example:

https://github.com/abhishekgplus/docker-course.git

Clone:

git clone https://github.com/abhishekgplus/docker-course.git

Explanation:

git clone
= Download repository from GitHub to your computer

Result:

Laptop
|
└── docker-course

=========================================================
STEP 7: MOVE INTO REPOSITORY
=========================================================

cd docker-course

Explanation:

cd
= Change Directory

You enter the repository folder.

Verify Files:

dir      (Windows CMD)

OR

ls       (Git Bash)

=========================================================
STEP 8: OPEN PROJECT IN VS CODE
=========================================================

code .

Explanation:

code
= Open VS Code

.
= Current Folder

Equivalent Meaning:

Open current repository in VS Code

=========================================================
STEP 9: CHECK CURRENT BRANCH
=========================================================

git branch

Example Output:

* main

Meaning:

Current Branch = main

=========================================================
STEP 10: CREATE NEW BRANCH
=========================================================

git checkout -b my-learning-notes

Explanation:

git checkout
= Switch branch

-b
= Create branch if not exists

my-learning-notes
= Branch name

Result:

main
 |
 +---- my-learning-notes

Verify:

git branch

Output:

* my-learning-notes
  main

=========================================================
STEP 11: MAKE CHANGES
=========================================================

Edit any file.

Example:

_exercises/01-running_containers/
01-running_your_first_container.md

Add:

## My Notes

Docker container is a running instance of an image.

Save File.

=========================================================
STEP 12: CHECK CHANGES
=========================================================

git status

Explanation:

Compares:

Current Files
VS
Last Commit

Example Output:

modified:
01-running_your_first_container.md

=========================================================
STEP 13: STAGE CHANGES
=========================================================

git add .

Explanation:

git add
= Move files to staging area

.
= Everything in current folder

Flow:

Working Directory
        |
        v
Staging Area

=========================================================
STEP 14: COMMIT CHANGES
=========================================================

git commit -m "Added Docker notes"

Explanation:

git commit
= Create snapshot of current state

-m
= Message

"Added Docker notes"
= Description of changes

Think of Commit as:

Saving a game checkpoint

=========================================================
STEP 15: VIEW COMMIT HISTORY
=========================================================

git log

Example Output:

commit abc123
Author: Abhishek Kumar Singh
Message: Added Docker notes

=========================================================
STEP 16: PUSH TO GITHUB
=========================================================

First Push:

git push -u origin my-learning-notes

Explanation:

git push
= Upload commits

origin
= Your GitHub repository

my-learning-notes
= Branch

-u
= Remember branch for future pushes

Future Pushes:

git push

=========================================================
STEP 17: VERIFY ON GITHUB
=========================================================

Refresh GitHub repository.

You should see:

Branch:
my-learning-notes

and your changes.

=========================================================
STEP 18: CHECK REMOTES
=========================================================

git remote -v

Example Output:

origin https://github.com/yourusername/docker-course.git

Meaning:

origin
= Your GitHub repository

=========================================================
STEP 19: ADD ORIGINAL REPOSITORY
=========================================================

git remote add upstream https://github.com/lm-academy/docker-course.git

Explanation:

origin
= Your Fork

upstream
= Original Repository

Diagram:

upstream
   |
   v
lm-academy/docker-course

origin
   |
   v
yourusername/docker-course

=========================================================
STEP 20: VERIFY REMOTES
=========================================================

git remote -v

Output:

origin
upstream

=========================================================
STEP 21: FETCH LATEST UPDATES
=========================================================

git fetch upstream

Explanation:

Download updates from original repository.

NO merge performed.

Safe operation.

=========================================================
STEP 22: SWITCH TO MAIN BRANCH
=========================================================

git checkout main

Explanation:

Move to main branch.

=========================================================
STEP 23: MERGE ORIGINAL CHANGES
=========================================================

git merge upstream/main

Explanation:

Take changes from original repository
and apply to local main branch.

=========================================================
STEP 24: PUSH UPDATED MAIN TO YOUR FORK
=========================================================

git push origin main

Explanation:

Update your GitHub fork with latest changes.

=========================================================
DAILY WORKFLOW
=========================================================

cd docker-course

git pull

# Make changes

git status

git add .

git commit -m "Day 1 Docker Notes"

git push

=========================================================
MOST IMPORTANT GIT COMMANDS
=========================================================

git clone URL
Download repository

git status
Check changes

git add .
Stage changes

git commit -m "message"
Create commit

git push
Upload commits

git pull
Download latest changes

git branch
Show branches

git checkout branch-name
Switch branch

git checkout -b branch-name
Create and switch branch

git log
Show commit history

git remote -v
Show connected repositories

git fetch upstream
Download updates

git merge upstream/main
Merge updates

=========================================================
HOW GIT WORKS INTERNALLY
=========================================================

Edit File
    |
    v
Working Directory
    |
    v
git add .
    |
    v
Staging Area
    |
    v
git commit
    |
    v
Local Repository
    |
    v
git push
    |
    v
GitHub Repository

=========================================================
END OF DOCUMENT
=========================================================

8888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888
# GIT TROUBLESHOOTING AND BRANCHING NOTES

## SCENARIO

Repository:
docker-course

Original Repository:
lm-academy/docker-course

Fork:
abhishek/docker-course

Local Clone:
C:\Users\abhis\Desktop\k8s\docker-course

---

## UNDERSTANDING THE 3 COPIES

1. Original Repository (Teacher's Copy)

lm-academy/docker-course

2. Fork Repository (My GitHub Copy)

abhishek/docker-course

3. Local Repository (My Laptop)

C:\Users\abhis\Desktop\k8s\docker-course

Diagram:

Original Repo
|
v
My Fork
|
v
My Laptop

---

## WHAT IS ORIGIN?

Command:

git remote -v

Output:

origin https://github.com/abhishek/docker-course.git

Meaning:

origin = My GitHub Fork

Whenever I run:

git push

Git pushes changes to:

origin

which means:

abhishek/docker-course

---

## WHAT IS UPSTREAM?

Command:

git remote add upstream https://github.com/lm-academy/docker-course.git

Meaning:

Add connection to original repository.

Now Git knows:

origin   -> My Fork
upstream -> Original Repository

Diagram:

Laptop
|
+---- origin
|       |
|       v
|   abhishek/docker-course
|
+---- upstream
|
v
lm-academy/docker-course

---

## VERIFY REMOTES

Command:

git remote -v

Expected Output:

origin
upstream

Meaning:

Git knows both repositories.

---

## FETCH VS PULL

FETCH

Command:

git fetch upstream

Meaning:

Download updates from original repository.

Does NOT modify files.

Safe operation.

Think:

Download only.

---

PULL

Command:

git pull

Meaning:

git fetch
+
git merge

Downloads and applies changes immediately.

---

## MY BRANCH STRUCTURE

Command:

git branch -a

Output:

* main
  my-learning-notes
  remotes/origin/main
  remotes/origin/my-learning-notes
  remotes/upstream/main

Meaning:

main                = Main branch
my-learning-notes   = My feature branch

---

## WHY MY CHANGES WERE NOT VISIBLE IN MAIN

I created a branch:

git checkout -b my-learning-notes

Then I edited files and committed:

git add .
git commit -m "Added git steps"

Git created commit:

9c1d78c Added git steps

This commit exists only in:

my-learning-notes

It does NOT automatically appear in:

main

Diagram:

Before Merge

main
|
b35a5d9

my-learning-notes
|
b35a5d9
|
9c1d78c Added git steps

This is normal Git behavior.

---

## HOW TO CHECK WHAT IS DIFFERENT

Command:

git log main..my-learning-notes --oneline

Output:

9c1d78c Added git steps

Meaning:

Show commits present in:

my-learning-notes

but missing from:

main

---

## HOW TO MERGE BRANCH INTO MAIN

Step 1

Switch to main:

git checkout main

Step 2

Merge branch:

git merge my-learning-notes

Expected Output:

Updating b35a5d9..9c1d78c
Fast-forward

Meaning:

Move main forward to latest commit.

---

## VERIFY MERGE

Command:

git log --oneline -5

Expected Output:

9c1d78c Added git steps
b35a5d9 chore: add slides

Meaning:

Main now contains my changes.

---

## PUSH MAIN TO GITHUB

Command:

git push origin main

Meaning:

Upload updated main branch to GitHub.

After Push:

Local Main        ✓
GitHub Main       ✓
Feature Branch    ✓

All synchronized.

---

## DELETE FEATURE BRANCH (OPTIONAL)

Delete Local Branch:

git branch -d my-learning-notes

Delete GitHub Branch:

git push origin --delete my-learning-notes

Only do this after merge.

---

## HOW TO EXIT GIT LOG

Command:

git log

Exit:

q

Meaning:

Quit pager and return to terminal.

---

## USEFUL LOG COMMANDS

Compact Log:

git log --oneline

Graph View:

git log --oneline --graph --all --decorate

Show Branch Difference:

git log main..my-learning-notes --oneline

---

## PROFESSIONAL WORKFLOW

Start New Work:

git checkout main

git pull

git checkout -b docker-notes

Make Changes

git status

git add .

git commit -m "Added Docker notes"

git push -u origin docker-notes

---

Merge Completed Work:

git checkout main

git merge docker-notes

git push origin main

---

## DAILY WORKFLOW

git pull

# Make Changes

git status

git add .

git commit -m "Day 1 Notes"

git push

---

## HOW GIT STORES CHANGES

Edit File
|
v
Working Directory
|
v
git add .
|
v
Staging Area
|
v
git commit
|
v
Local Repository
|
v
git push
|
v
GitHub Repository

---

## KEY LEARNING

1. A commit belongs to the branch where it was created.

2. Commits do NOT automatically appear in other branches.

3. To bring changes into main:

git checkout main
git merge branch-name

4. origin = My Fork

5. upstream = Original Repository

6. git fetch downloads changes only.

7. git pull downloads and merges.

8. git push uploads local commits.

9. git log opens a pager.

10. Press q to exit git log.
