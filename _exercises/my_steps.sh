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