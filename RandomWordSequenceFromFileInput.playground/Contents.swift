import Cocoa
/*:

# Building Word Probabilities From a File

**This exercise is the final "in-between" step before you actually build a Markov Bot using words.**

In this final "in-between" step – you will generate random *sentences* based on individual *word* probabilities.

(Recall that in the previous "in-between" step, you [generated an output *string* of composed of individual *characters*](https://github.com/rsgc-ics3u-2015/RandomLetterSequenceOfUnknownLength). Characters for the output string were selected based on the character probabilities from an input string of random length).

## Getting Started

For today's exercise, you need an input file to work with (or you can use the one provided).

Once you locate your file, here is how to add it to the Playground you are using.

Make the lefthand file Navigator visible:

![leftnav](leftnav.png "Show the file Navigator")

Then drag the source text into the Resources folder, like this:

![draganddrop](draganddrop.png "Drag a file to the resources folder")

Review following steps carefully.

Change the code so that the program loads the text file you have found.

*/

// Set location of file
// File obtained from:
// http://www.presidentialrhetoric.com/campaign/speeches/bush_oct19.html
// Only edits:
// - Removed text "AUDIENCE: ..."
// - Removed text "(Applause.)"
// - Removed text "(Laugther.)"
// – Removed text "THE PRESIDENT:"

// Set the location of the file
let fileURL = NSBundle.mainBundle().URLForResource("bush-speech", withExtension: "txt")

// Get the contents of the file, and place in a String.
// Note that this loads entire file into memory.
// Not efficient for very large files.
let content = try String(contentsOfURL: fileURL!, encoding:
    NSUTF8StringEncoding)

// Review the result (click the + button in the sidebar to show the result)
content

/*:

You should see that you now have a variable that contains the entire contents of a text file.

In the [prior exercise](https://github.com/rsgc-ics3u-2015/RandomLetterSequenceOfUnknownLength/blob/master/RandomLetterSequenceOfUnknownLength.playground/Contents.swift#L50-L64), we were able to inspect each *character* of the input string.

To continue with **this** exercise, working with words, we need to be able to inspect each individual word.

To do this, we will break up the string that contains the entire contents of the input file into an *array*.

Each word from the input file will be a separate element in the array.
*/

// Set the delimiters we will use to break up the string
let delimiters = NSCharacterSet(charactersInString: ", \n")

// Break the string up into an array using delimiters created above
let words = content.componentsSeparatedByCharactersInSet(delimiters)

// Review the contents of the array (click the + button in the sidebar to show the result)
words
/*:

Now you have the entire contents of your text file, separated into individual words, and stored in a regular array.

Proceed with goal #1, described below.

## Goal 1

### Input Specifications

You have an array with each element representing a single word from the input text.

### Output Specifications

Generate a "sentence" with 20 words in it. Each word in the sentence should occur relative to the probability with which it occurred in the input text.

### Algorithm

Below, write out an algorithm that will accomplish this task.

This time, include the following sections:

* Algorithm (point form)
* Assumptions (if any)
* Data Structures (identify data structures you might make use of)

### Implementation

Implement your algorithm further down, below where you typed out your algorithm.

Remember to save and commit your work to GitHub when you have completed a part of the solution that you don't want to lose.  Definitely commit your work when the algorithm is fully implemented.
*/

/*

Goal #1
=======

My algorithm
------------
use the same concept as the letter markov chain to determine probablility where we count the total and also count how many of each word shows up.

My assumptions
--------------
we will get gibberish because there is no sentence structure.

Probable data structures
------------------------
for in loop / arrays / conditionals

*/

// Implement Goal #1 below...

//words.count
//
//var totalWordCount = Float(words.count)
//
//var wordCounts = [String: Int]()
//
//for word in words
//{
//    if word.characters.count > 0
//    {
//        if wordCounts[word] == nil
//        {
//        wordCounts[word] = 1
//        } else {
//            wordCounts[word]! = wordCounts[word]! + 1
//        }
//    }
//}
//
//var percentage = [String: Float]()
//
//for (word, counts) in wordCounts
//{
//    percentage[word] = Float(counts) / totalWordCount * 100
//}
//
//wordCounts
//
//percentage
//
//var outputString = ""
//
//var randomValue: Float = 0.0
//
//var probabilities = 0.0
//
//var upperValue: Float = 0.0
//
//for _ in 1...20
//{
//    randomValue = Float(arc4random_uniform(1000)) / 10
//    for (word, probabilities) in percentage
//    {
//        upperValue += percentage[word]!
//        
//        percentage[word]
//        
//        if (randomValue < upperValue)
//        {
//            outputString += String(word) + " "
//            break
//        }
//    }
//    upperValue = 0 //restarting upper value after each word is selected
//}
//
//print (outputString)
/*:

## Goal 2

### Extension

Use the data structures you created for Goal #1 above.

### Output Specifications

Generate a random output sentence, **without a pre-determined length**. The sentence should simply end with a word that includes a period as it's final character.

### Algorithm

Below, write out an algorithm that will accomplish this task.

This time, include the following sections:

* Algorithm (point form)
* Assumptions (if any)

### Implementation

Implement your algorithm further down, below where you typed out your algorithm.

Recall that from earlier work, [you know how to inspect the final character of a string in Swift](https://github.com/rgordonatrsgc/MarkovChainsIntroduction/blob/8e5488cd90cd5592c5553d085c0ce0728b1a1612/MarkovChainsIntroduction.playground/Contents.swift#L43-L50).

Remember to save and commit your work to GitHub when you have completed a part of the solution that you don't want to lose.  Definitely commit your work when the algorithm is fully implemented.
*/

/*

Goal #2
=======

My algorithm
------------
check each word until a . shows up then end the program.

My assumptions
--------------
i will have to find an interesting way to do this.

*/

// Implement Goal #2 below...

//var totalWordCount = Float(words.count)
//
//var blankWords = Float(0.0)
//
//var wordCounts = [String: Int]()
//
//for word in words
//{
//    if word.characters.count > 0
//    {
//        if wordCounts[word] == nil
//        {
//            wordCounts[word] = 1
//        } else {
//            wordCounts[word]! = wordCounts[word]! + 1
//        }
//    } else
//    {
//        blankWords += 1
//    }
//}
//
////takes all the blanks that we do not count and subracts them from the total number of words counted so it does ont sqew the res of the code
//totalWordCount = totalWordCount - blankWords
//
//var percentage = [String: Float]()
//
//for (word, counts) in wordCounts
//{
//    percentage[word] = Float(counts) / totalWordCount * 100
//}
//
//wordCounts
//
//percentage
//
//var outputString = ""
//
//var randomValue: Float = 0.0
//
//var probabilities = 0.0
//
//var upperValue: Float = 0.0
//
//var period = 0
//
//for (word, probabilities) in percentage
//{
//    randomValue = Float(arc4random_uniform(1000)) / 10
//    
//    upperValue += percentage[word]!
//    
//    percentage[word]
//    
//    if (randomValue < upperValue && period < 1)                 //when there is a period this will not run and therefore not add any more words
//    {
//        outputString += String(word) + " "
//        
//                                                                //this is to see if i can check the last character of the word each time
//        if word[word.endIndex.predecessor()] == "."
//        {
//            print ("it was a period")
//            period = 1
//        }
//        upperValue = 0                                          //restarting upper value after each word is selected
//    }
//}
//
//print (outputString)

/*:

## Goal 3

### Extension

Use the data structures you created for Goal #1 above.

### Output Specifications

Generate a random output sentence that has at least 8 words in it, but no less. The sentence should end with a word that includes a period as it's final character.

### Algorithm

Below, write out an algorithm that will accomplish this task.

This time, include the following sections:

* Algorithm (point form)
* Assumptions (if any)

### Implementation

Implement your algorithm further down, below where you typed out your algorithm.

Remember to save and commit your work to GitHub when you have completed a part of the solution that you don't want to lose.  Definitely commit your work when the algorithm is fully implemented.
*/
//
/*

Goal #3
=======

My algorithm
------------
should just be able to add the requirement into an if statement

My assumptions
--------------


*/


// Implement Goal #3 below...

var totalWordCount = Float(words.count)

var blankWords = Float(0)

var wordCounts = [String: Int]()

for word in words
{
    if word.characters.count > 0
    {
        if wordCounts[word] == nil
        {
            wordCounts[word] = 1
        } else {
            wordCounts[word]! = wordCounts[word]! + 1
        }
    } else
    {
        blankWords += 1
    }
}

//takes all the blanks that we do not count and subracts them from the total number of words counted so it does ont sqew the res of the code
totalWordCount = totalWordCount - blankWords

var percentage = [String: Float]()

for (word, counts) in wordCounts
{
    percentage[word] = Float(counts) / totalWordCount * 100
}

wordCounts

percentage

var outputString = ""

var randomValue = Float(0)

var upperValue = Float(0)

var period = false

var wordsInOutput = 0

for (word, probabilities) in percentage
{
    randomValue = Float(arc4random_uniform(1000)) / 10
    
    upperValue += probabilities
    
    probabilities
    
    if (randomValue < upperValue && period == false)    //when there is a period this will not run and therefore not add any more words
    {
        outputString += String(word) + " "
        
        wordsInOutput++
        
        //this is to see if i can check the last character of the word each time
        if word[word.endIndex.predecessor()] == "." && wordsInOutput >= 8
        {
            period = true
            print ("there is a period and there are more than 8 words")
        } else {
            print ("there are less than 8 words")
        }
        
        upperValue = 0                                   //restarting upper value after each word is selected
    }
}

print (outputString)
