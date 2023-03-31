# Review Plz

This AI driven productivity tool seeks to make developer life easier, in the area of code collaboration and review.

### Installation

Currently, this tool is a plain ruby script. You have to clone the repo locally and pass the the `app.rb` file location to the Ruby program with any relevant arguments. Here is how to get started:

First, make sure you have Ruby installed. [Resources here](https://www.ruby-lang.org/en/documentation/installation/).

Second, clone the repo:
```
$ git clone git@github.com:omid-storyful/ReviewPlz.git
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

Enjoy!


### Features

Command format:
```
ruby path/to/ArtificialCodeReview/app.rb <ACTION> <OPTIONS...> 
```

Example command:
```
ruby path/to/ArtificialCodeReview/app.rb explain main
```

#### Code Description Generation

Action: `explain`

Required option: A comparison SHA or branch name

This feature provides a description of the git diff in the current local git state with a comparison SHA or branch name. This is handy for Pull Request descriptions or commit messages.

Example command:
```
ruby path/to/ArtificialCodeReview/app.rb explain main
```

#### Code Review Generation

Action: `review`

Required option: A comparison SHA or branch name

This feature provides a review of the git diff in the current local git state with a comparison SHA or branch name. This is handy for improving your code before submitting it.

Example command:
```
ruby path/to/ArtificialCodeReview/app.rb review main
```

### Help

```
ruby path/to/ArtificialCodeReview/app.rb help
```
