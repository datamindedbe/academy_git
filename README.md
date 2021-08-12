# Dataminded Academy - Introduction to Git
## Exercises Repository

This repository is hosting the exercises provided to students in the context of the `Introduction to Git` course of the Dataminded Academy.

### 1. The exercises in details

The following exercises are part of the repository:

* **Exercise 1 (`exercise_1`) - First commit**: In this exercise, students are asked to:
    * Try running `git status`. What do they see? Why?
    * Initialize a repository by running `git init`
    * Re-run `git status`. Is it better now?
    * Start version-control the `my_code.py` file.
    * Commit a change to the `my_code.py` file.
    * Check the logs using `git logs`. What do they see?

* **Exercise 2 (`exercise_2`) - Logs & checkout**: In this exercise, students are asked to:
    * Explore the logs with `git checkout` to find out what was inside three files that used to be there in the past.

* **Exercise 3 (`exercise_3`) - Branching & merging**: In this exercise, students are asked to:
    * Create a branch with `git branch`
    * Make some changes to the available files
    * Merge the branch into `main`

* **Exercise 4 (`exercise_4`) - Solve a merge conflict**: In this exercise, students are asked to:
    * Merge the existing branch `feature_branch` into `main`
    * Solve the merge conflict that will happen

* **Exercise 5 (`exercise_5`) - Work with a remote repository**: In this exercise, students are asked to:
    * Clone [a remote repository](https://github.com/dernat71/dataminded_git_repo)
    * Look at the existing branches with `git branch` then `git branch -a`. What's the difference?
    * Create a feature branch
    * Make some changes (e.g 3 commits ?)
    * Push the branch to the remote
    * Open a documented PR
    * Fetch the origin to discover other branches pushed in the meantime

* **Exercise 6 (`exercise_6`) - Stash & tags**: In this exercise, students are asked to:
    * Stash two uncomited changes.
    * List the existing stashes with `git stash list`
    * Revert the two stash operations with `git stash pop` and `git stash apply`
    * Tag the second-to-last commit with the "v1.0.0" tag.
    * Checkout to it.

* **Exercise 7 (`exercise_7`) - A closer look to the .git folder**: In this exercise, students are asked to:
    * With the `ls -a` command, locate the folder where all the Git magic happens.
    * Have a look together at what's in there. Particularly at the `hooks` folder.
    * Create a pre-commit hook that will format and lint your code with, respectively, `black` and `flake8`

### 2. How-to run

#### 2.1 Infrastructre

The workshop Lab instance setup can be Terraformed in the current AWS account by running:
```
cd terraform && terraform apply  
```

The user will be asked to input a public SSH key that can be used later to remotely connect to the instance using:
```
ssh ec2-user@<public-dns>
```
Note that the `<public-dns>` field will be outputed by the Terraform apply operation.

#### 2.2 Run the Lab

To run the lab (locally or from a VM), you need to build the Docker image of the exercise environment (powered by TTYD) with:
```
docker build -t git-introduction-training:latest .
```

Then, you can run a specific number of environments with the command below. The script will ask you at which port it must starts to spin-up the environments as well as how many environments should be created: 
```
./spawn_the_envs.sh
```

Once done, you can clean-up the stage with:
```
./kill_the_envs.sh
```