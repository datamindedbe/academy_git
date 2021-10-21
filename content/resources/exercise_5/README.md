# Data Minded Academy - Introduction to Git
## Exercise 5 - Work with remote repositories

In this exercise you will have to work with a remote repository. The tasks are the following:

1. Open a terminal and position yourself in the root of this folder (`exercise_5`).

2. Create an account on https://github.com if you don't have one already.

3. To clone the remote repository in the next steps, you will need to generate an SSH key on this machine and link it with your Github account. This will allow you to transparently authenticate with Github and make the interactions with the platform smoother. To generate an SSH key, you can run the following command in the terminal and press Enter until the process is done (leave all the fields per default):
```
ssh-keygen
```

4. Print out the public key of your SSH key pair in the terminal by running:
```
cat ~/.ssh/id_rsa.pub
```

5. Copy the long string starting with `ssh-rsa` that has been printed to the terminal and head to [the SSH and GPG keys section](https://github.com/settings/keys) of your Github profile. In there, create a new SSH key. Give it a title that will help you to remember the context in which the key has been created (useful to later be able to revoke keys without being worry to break something) and paste the `ssh-rsa` string you copied earlier in the second field of the form. Github will now be able to authenticate you transparently!

6. Clone [this remote repository](https://github.com/dernat71/dataminded_git_repo). Make sure you use the `SSH` URL when clicking on the `Clone` button.

7. Look at the existing branches (with and without the `-a` flag). What do you see?

8. Now create a feature branch (name it `feature/<your-name>`)

9. Commit 3 changes to the available files (you can decide what the changes will be)

10. Send your feature branch to the remote repository. You will first need to ask your instructor to add you as a colaborator of the repository. If not, your push will be denied.

11. Open a documented Pull Request.

12. Fetch the remote repository and list again the available branches (with and without the `-a` flag). What do you see?