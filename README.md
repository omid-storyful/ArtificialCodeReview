# Artificial Code Review

This AI driven productivity tool seeks to make developer life easier, in the area of code collaboration and review.

### Installation

Currently, this tool is a plain ruby script. You have to clone the repo locally and pass the the `app.rb` file location to the Ruby program with any relevant arguments. Here is how to get started:

First, make sure you have Ruby installed. [Resources here](https://www.ruby-lang.org/en/documentation/installation/).

Second, clone the repo:
```
$ git clone git@github.com:omid-storyful/ArtificialCodeReview.git
```

Third, add your OpenAI access token:
```
cp .env.example .env
# Then go input your token
```


Then, navigate to a local project in which git is tracking changes. For example:
```
$ cd my_project
```

Once you are in your project, try one of our commands:
```
ruby path/to/ArtificialCodeReview/app.rb explain main
```

Command format:
```
ruby path/to/ArtificialCodeReview/app.rb <ACTION> <OPTIONS...> 
```

Enjoy!


### Features

#### Code Description Generation

Example command format:
```
ruby path/to/ArtificialCodeReview/app.rb explain main 
```

`explain` This is the name of the action you want Artificial Code Review to perform

`main` This is an example of your main branch name that you want to compare your local changes with.

This feature provides a description of the git diff in the current local git state with a comparison SHA or branch name. This is handy for Pull Request descriptions or commit messages.

