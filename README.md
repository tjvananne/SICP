# SICP

I'm currently working through the **Structure and Interpretation of Computer Programs** book. This has been on my list of fundamental programming books I've been wanting to work through for a very long time, so that's how I'll be spending some of my free quarantine time.

The goals that are driving me to work through this book:

* become a better programmer in general
* gain more knowledge of programming language design
* learn more about the (pure) functional programming paradigm
* I've heard scheme (and many other lisp dialects) are really fun to use
	- I might be interested in eventually creating some domain-specific languages where I would most likely be using a dialect of lisp 


I think it is critically important to know the basic fundamental history of "how we got to now" in terms of programming / computation. This book was originally released in 1979, but I think the conceps and themes throughout the book are still incredibly relevant (and hard to come by in more modern programming books).


## Interesting Findings / notes

#### Evaluation Types

As I was reading about applicative-order evaluation vs normal-order evaluation, I couldn't help but think about eager vs lazy evaluation. This [SO post](https://stackoverflow.com/questions/4634542/eager-evaluation-applicative-order-and-lazy-evaluation-normal-order) mentions that they are technically different, but pretty close.


* **normal-order evaluation:** terms are "fully expanded" and then calculated. This often leads to the same calculation being evaluated multiple times
* **applicative-order evaluation:**  


side thought: whatever happened to that "substitution model" thing we talked about? I went back and found this note on that: *The purpose of the substitution is to help us think about procedure application, not to provide a description of how the interpreter really works. Typical interpreters do not evaluate procedure applications by manipulating the text of a procedure to substitute values for the formal parameters.* Ok, that makes more sense. So the "normal-order" and "applicative-order" evaluation methods are the actual ways that the interpreter works, but we have only simple models for how these work for now.


#### Process vs Procedure


I find it really interesting that an *recursive procedure* can be executed by an *iterative process*. This was demonstrated by a function which called itself until it hit some type of "base-case", but instead of making the interpreter "keep track" of all of the "deferred" calculations it would have to make... they used state variables that overwrote themselves. *"When we describe a procedure as recursive, we are referring to the syntactic fact that the procedure definition refers (either directly or indirectly) to the procedure itself. But when we describe a process as following a pattern that is, say, linearly recursive, we are speaking about **how the process evolves,** not about the syntax of how a procedure is written.*  


They then go into why recursion is bad is so many languages because they don't implement what is known as **tail-recursion**. Lisp / Scheme do implement tail recursion, which is what makes them so much more efficient at recursion. With tail-recursion, you can get the benefits of constant space (in terms of memory usage) with a recursive procedure where the process *evolves iteratively*. 



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


**update**

There's a risk of running `scheme < <filename>.scm`. If you accidentally get the `<` backwards (`>`), then you can overwrite your scheme file.

[Here](https://stackoverflow.com/a/47724861/3586093) is an example script that I've copied and put on my path as `runscheme` so that I can run a file with `runscheme <filename>.scm`. This removes that risk of potentially overwriting your code.

