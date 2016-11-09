# Advanced Topics in iOS & Swift (Q2)

## Working with this Github repository

This repository is the _master_ repository which will contain all the course materials. That includes slides, coding challenges and starter code for larger projects.

Note that you can not commit to this repository! However, you can still and go maintain _your own version of this repo_. This is what the whole setup looks like:

![Git Setup](./git-overview.png "Overview: 3 Repositories")

These are the steps that you need to perform to achieve this:

1. clone the repository
`git clone https://github.com/MakeSchool-18/iOS-MVC`

2. create your own repository **on your Github account** named: `iOS-MVC`

3. add this repository as a _remote_ to the local one (note: you need to give a name to the _remote_, e.g. your first name)
`git remote add <first-name> https://github.com/<github-user>/iOS-MVC.git`

4. push the repo to the newly created remote
`git push -u origin <first-name>`

5. when you want to access new materials now, all you need to do is
`git pull`

6. when you worked on a challenge or a starter project, you can push it to your own remote repository with
`git push`


## Code formatting rules for this class:

You should get into habit of writing your code so that it's readable for other people (and for you!). An important factor for this is **formatting**. Here are some guidelines that you should try to apply in order to make your code more readable:

1. Structure your code into _sections_, each section should have a title that you can insert in Xcode using `// MARK:`
2. Methods in a class should be separated with one line break in between them
3. Use two line breaks before starting a new section (this is the **only time where using more than one line break is allowed!**)
4. Generally, line breaks should be used with great care! Make sure to only use line breaks when you want make it clear that a certain code chunk (_paragraph_) bundles similar functionality (in these cases, it is often a good idea to put a comment on top the paragraph that shortly describes what the functionality of this paragraph is)


#### Example

    class AddFriendViewController: UIViewController {
      
      // MARK: View Controller Lifecycle
      
      override func viewDidLoad() {
        super.viewDidLoad()
      }
      
      
      // MARK: Actions
      
      @IBAction func saveButtonPressed(_ sender: AnyObject) {
        dismissViewController()
      }
      
      @IBAction func cancelButtonPressed(_ sender: AnyObject) {
        dismissViewController()
      }
      
      
      // MARK: Helpers
      
      func dismissViewController() {
        presentingViewController?.dismiss(animated: true)
      }
      
    }

Here are two benefits that you get from this approach:

1. You can now use the keyboard shortcut `cmd` + `alt` + `shift` + `←` to collapse all methods and get a nice overview of the code
![Folded Methods](./folded.png "Use `cmd` + `alt` + `shift` to fold methods")

2. You can now use the "quick viewer" in Xcode to see the whole content of your file nicely organized [screenshot]
![Quick Viewer](./quick-viewer.png "Use Xcode's 'Quick Viewer' to have a nice overview of the file's content")


