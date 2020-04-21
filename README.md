# SICP

I'm currently working through the **Structure and Interpretation of Computer Programs** book. This has been on my list of fundamental programming books I've been wanting to work through for a very long time, so that's how I'll be spending some of my free quarantine time.

The goals that are driving me to work through this book:

* become a better programmer in general
* gain more knowledge of programming language design
* learn more about the (pure) functional programming paradigm
* I've heard scheme (and many other lisp dialects) are really fun to use
	- I might be interested in eventually creating some domain-specific languages where I would most likely be using a dialect of lisp 


I think it is critically important to know the basic fundamental history of "how we got to now" in terms of programming / computation. This book was originally released in 1979, but I think the conceps and themes throughout the book are still incredibly relevant (and hard to come by in more modern programming books).


## local execution notes


I'm using Windows Subsystem for Linux (WSL) to execute all of my scheme code. I don't really feel like programming in vim - I prefer notepad++ in my windows environment. I have to be careful with how I create/edit files in order to be able to edit file content in windows while executing them in WSL. 


It isn't pretty, but this is my workflow. I just want to keep it simple and focus on the content of the book and not fiddle around with this pipeline too much.


1. (WSL) `touch <filename>.scm`
2. (Windows) edit the file and save as normal
3. (WSL) `scheme < <filename>.scm` in order to run the file
4. (WSL from project/repo root) `bash all_your_files_belong_to_me.sh`
5. (WSL from project/repo root) `git add -all`
6. (WSL from project/repo root) `git commit -m "<commit text/comment>"`
7. (WSL from project/repo root) `git push -u origin master`   




