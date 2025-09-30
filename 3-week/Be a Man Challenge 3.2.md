
##  Walkthrough for a GitHub Merge Request

Here is a step-by-step walkthrough to do a successful git merge request using GitHub

### Step 1: Create Your Branch

On your local machine, from your project's main directory, create a new branch to hold your changes.

Bash commands:

```
# This creates a new branch called "feature/update-wk1" and switches to it
git checkout -b feature/update-wk1
```

![](attachment/4b96e76c369ab213eab15ff720542382.png)

### Step 2: Make Your Changes

Now, you can make your necessary changes for your directory. For your example, you would create a `2-week` directory and add any new files inside it.

### Step 3: Stage and Commit

Save your work to the branch's history.

Bash commands:

```
# Stage all new and modified files for commit
git add .

# Commit the staged files with a descriptive message
git commit -m "FEAT: Add content for week 2"
```

![](attachment/5e5f8786eb14fb5ea318fcd63bf14977.png)
### Step 4: Push to GitHub

Send your new branch and its commits to the remote repository on GitHub.

Bash commands:

```
# Push the branch and set up remote tracking
git push -u origin feature/update-wk1
```

![](attachment/657e5702522a3915070c8bcbb824b02e.png)

### Step 5: Create the Pull Request (PR)

Go to your repository on GitHub. You will immediately see a yellow notification bar with your new branch name, prompting you to create a pull request.

Click the **"Compare & pull request"** button. This will take you to a new page where you can give your pull request a title and description.

![](attachment/eb724709d59cefc4a7bfe9c85a04e8d1.png)

### Step 6: Merge the Pull Request

On the pull request page, you can see all the changes you made. In a team setting, this is where a teammate would review your code. If everything looks good and there are no conflicts, you can merge it.

Click the green **"Merge pull request"** button, and then confirm the merge.

Success! Your `feature/update-wk1` branch has now been merged into the `main` branch. All your new files are now part of the official project.

![](attachment/219f2a2932174adc11bd82d06d012825.png)

![](attachment/84fda3190dffe4efda51103cdea20218.png)

![](attachment/e415acf6b279bda36b62b09342e8e7ae.png)


### Step 7: Clean Up

After a successful merge, it's good practice to delete the branch, as it's no longer needed. GitHub provides an easy button for this right after you merge.

Click the **"Delete branch"** button to remove the `feature/update-wk1` branch from the remote GitHub repository.

---
## Procedure: Post-Merge Branch Cleanup

This procedure outlines the necessary steps to synchronize your local repo and remove the branch(s) no longer in use, after a feature/temporary branch has been successfully merged into the `main` branch on the remote repository.

### Step 1: Return to the Main Branch

Switch your local working directory back to the `main` branch. This is the primary branch of the project and should serve as the starting point for all new work.

Bash commands:

```
git checkout main
```

![](attachment/7295c2af4ad8ed1e86d440c054f4620d.png)
### Step 2: Synchronize the Local Main Branch

Update your local `main` branch to include the newly merged changes from the remote repository (`origin`). This ensures your local version is up-to-date with the official project history.

Bash commands:

```
git pull origin main
```

![](attachment/bfa2c46376b7590d557a88b1b718a75a.png)

### Step 3: Delete the Local Feature Branch

Remove the feature branch from your local repository. As its changes are now part of `main`, this branch is no longer needed and can be deleted to maintain a clean workspace.

Bash

```
git branch -d name-of-your-feature-branch
```

**Note:** Use the `-d` (delete) flag for this operation. Git will prevent deletion if the branch contains unmerged changes, acting as a safety measure. Forcing a deletion requires the `-D` flag.