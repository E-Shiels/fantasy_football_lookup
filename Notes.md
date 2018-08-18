# Project Requirements: #
Provide a CLI that provides access to data from a web page.
It must go at least one-level deep. A "level" is where a user can make a choice and then get detailed information about their choice. Some examples are below:
Movies opening soon - Enter your zip code and receive a list of movies and their details.
Libraries near you - Enter your zip code and receive a list of libraries and their details.
Programming meetups near you - Choose from an events list and receive details.
News reader - List articles and read an article of your choosing.
Your CLI application should not be too similiar to the Ruby final projects (Music Library CLI, Tic-Tac-Toe with AI, Student Scraper). Also, please refrain from using Kickstarter as that was used for the scraping 'code along'.
Use good OO design patterns. You should be creating a collection of objects, not hashes, to store your data. Pro Tip: Avoid scraping data more than once per web page - utilize objects you have already created. It will speed up your program!

# Instructions #
1.	Watch this video walkthrough of building a basic CLI Gem called Daily Deal before you begin. Review the Student Scraper Project, which provides a good example of how scraping concerns can be separated into a distinct class.
2.	Build your application. This is going to be different from labs you have done on Learn. Do not click Open IDE and create your application within the lesson files. Instead:
Watch this video on how to create and continue your project in the IDE In Browser
Use this IDE Sandbox. Do not close the Sandbox without completing the next step or your work will be lost.
After your repo is pushed up to Github, make sure you have a good README.md with a short description, install instructions, a contributors guide and a link to the license for your code (students usually use the MIT license).
To continue working on your project, you'll need to delete extra project files in the Sandbox and clone your project down each time. This article includes instructions on how to clone down a repo.
Make sure to commit early and commit often. Commit messages should be meaningful (clearly describe what you're doing in the commit) and accurate (there should be nothing in the commit that doesn't match the description in the commit message). Most of your commits should have under 15 lines of code and a 2 line commit is perfectly acceptable. Good rule of thumb is to commit every 3-7 mins of actual coding time.
Use this checklist as you complete your project and submit when you are done.
3.	Documentation
While you're working on it, record a 30-minute coding session with your favorite screen capture tool. During the session, either think out loud or not. It's up to you. You don't need to submit the video, but we may ask for it at a later time.
4.	Submission
Submit this checklist after confirming all requirements are met.
Prepare a video demo (narration helps!) describing how a user would interact with your working gem. Some common video recording tools used are Zoom, Quicktime, and Nimbus. After you create your demo, publish it on a service like YouTube or Google Drive.
Write a blog post about the project and process.
	On Learn, submit links to the GitHub repository for your app, your video demo (not 	your 30-minute coding session), and your blog post each to the corresponding 	textbox in the right rail, and hit "I'm done" to wrap it up.


Fantasy_Football_Lookup is a Ruby gem that provides access to Fantasy Pros football rankings and data.

Gem puts intro message and lists options to input.

**User types** "top-25" || "top-50" || "top-100" || "top-all"

Returns:
Name:
Team:
Position:
Bye Week:
Rank:
Position Rank:
Best Rank:
Worst Rank:
Average Rank:
Average Draft Position:
Average Draft Position vs. Rank:

**User types** "player("Player name")"

Returns same information as when returning top player information, but just the info about the player selected.

**User types** "explain"

Puts info regarding average draft pick, source, and adp vs rank.

**User types** "help"

Returns list of commands.

**User types**"quit"

Quits CLI.
