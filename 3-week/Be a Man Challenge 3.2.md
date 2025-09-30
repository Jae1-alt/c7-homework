
## Corrected Walkthrough for a GitHub Pull Request

Here is a step-by-step walkthrough to do a successful git merge request using GitHub

### Step 1: Create Your Branch

On your local machine, from your project's main directory, create a new branch to hold your changes.

Bash commands:

```
# This creates a new branch called "feature/update-wk1" and switches to it
git checkout -b feature/update-wk1
```

### Step 2: Make Your Changes

Now, you can make your necessary changes for your directory. For your example, you would create the `wk2` directory and add any new files inside it.

### Step 3: Stage and Commit

Save your work to the branch's history.

Bash commands:

```
# Stage all new and modified files for commit
git add .

# Commit the staged files with a descriptive message
git commit -m "FEAT: Add content for week 2"
```

### Step 4: Push to GitHub

Send your new branch and its commits to the remote repository on GitHub.

Bash

```
# Push the branch and set up remote tracking
git push -u origin feature/update-wk1
```

### Step 5: Create the Pull Request (PR)

Go to your repository on GitHub. You will immediately see a yellow notification bar with your new branch name, prompting you to create a pull request.

Click the **"Compare & pull request"** button. This will take you to a new page where you can give your pull request a title and description.

### Step 6: Merge the Pull Request

On the pull request page, you can see all the changes you made. In a team setting, this is where a teammate would review your code. If everything looks good and there are no conflicts, you can merge it.

Click the green **"Merge pull request"** button, and then confirm the merge.

Success! Your `feature/update-wk1` branch has now been merged into the `main` branch. All your new files are now part of the official project.

### Step 7: Clean Up

After a successful merge, it's good practice to delete the branch, as it's no longer needed. GitHub provides an easy button for this right after you merge.

Click the **"Delete branch"** button to remove the `feature/update-wk1` branch from the remote GitHub repository.