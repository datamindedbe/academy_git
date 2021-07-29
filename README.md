# Dataminded Academy - Introduction to Git
## Exercices Repository

This repository is hosting the exercices provided to students in the context of the `Introduction to Git` course of the Dataminded Academy.

### 1. The exercices in details

The following exercices are part of the repository:

* **Exercice 1 (`exercice_1`) - First commit**: In this exercice, students are asked to:
    * Try running `git status`. What do they see? Why?
    * Initialize a repository by running `git init`
    * Re-run `git status`. Is it better now?
    * Start version-control the `my_code.py` file.
    * Commit a change to the `my_code.py` file.
    * Check the logs using `git logs`. What do they see?

* **Exercice 2 (`exercice_2`) - Logs & checkout**: In this exercice, students are asked to:
    * Explore the logs with `git checkout` to find out what was inside three files that used to be there in the past.

* **Exercice 3 (`exercice_3`) - Branching & merging**: In this exercice, students are asked to:
    * Create a branch with `git branch`
    * Make some changes to the available files
    * Merge the branch into `main`

* **Exercice 4 (`exercice_4`) - Solve a merge conflict**: In this exercice, students are asked to:
    * Merge the existing branch `feature_branch` into `main`
    * Solve the merge conflict that will happen

* **TODO : Exercice 5 (`exercice_5`) - Work with a remote repository**: In this exercice, students are asked to:
    * Clone a remote repository
    * Fetch the origin to discover remote branches
    * Create a feature branch
    * Make some changes (3 commits ?)
    * Push the branch to the remote
    * Open a documented PR

* **TODO : Exercice 6 (`exercice_6`) - A closer look to the .git folder**: In this exercice, students are asked to:
    * With the `ls -a` command, locate the folder where all the Git magic happens.
    * Have a look together at what's in there
    * Create a pre-commit hook
    * Create a post-commit hook
    * Test them

### 2. How-to run 