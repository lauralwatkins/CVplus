### What and why?

Job applications.... Most require you to submit a CV, a publication list, and details of people prepared to write you a letter of recommendation. Some places require everything in a single document, some in separate documents. Some places require all of these things, some require only a subset. Often these documents are useful or required for other things, but separately.

I find it useful to have 6 combinations of these files:

* CV only
* Publications only
* References only
* CV + References
* CV + Publications
* CV + References + Publications

I used to have endless copies of all of this information in different combinations, and I'd have to update multiple files every time something needed updating. I also prepare this information in Letter format or A4 format depending on whether I am applying for a job in the US or in Europe.... which used to even more copies of the files!

This was not optimal.

So I made this package. The content of the various different documents exists only in one place, and so only needs to be updated once. Then templates pull together the documents in all different combinations and paper-sizes. A makefile allows you to regenerate a single file, a subset of files (eg. all files containing a CV) or all files at once.


### Quickstart

Ok, you have a deadline looming, I get it.

* Download this package.
* Edit the _content\_Xxxx.tex_ files with your own info.
* Run _make all_.
* Enjoy your many documents.


### Content

There are 5 files that contain actual content that you will want to modify with your own information:

* content\_CV : this contains your CV.
* content\_Publications : this contains your publications list.
* content\_References : this contains the details of your recommendation letter writers.
* content\_Preamble : this contains extra style-stuff you wish to specify for your documents. I already put some basic stuff in there to do some layout tweaking but you may wish to add more to personalise your documents. This documents also includes your name as it appears in the document headers on all pages except the first page.
* content\_Name : in this template, on the front page of each document generated, your name appears in big letters at the top. This sets the formatting for that.

I made some example files, but you'll probably want to add some sections and remove others, and shuffle things around as works best for you. If you already have copies of your own documents, wiping my examples and copy-pasting your info into here will probably work best!

This is all fairly bare bones are far as style and layout are concerned. So personalise away!

### Templates

There are 12 (6x2) template documents that pull these files together in (6) different combinations and (2) different paper sizes. The names of the files should be fairly descriptive.... for example:

* template\_cv\_a4 : takes the Preamble, Name and CV content files and outputs in A4 format.

* template\_cvrefspubs\_letter: take the Preamble, Name, CV, References and Publications content files and outputs in Letter format.

In principle, you shouldn't need to change these unless you want to extend the scope of the package, for example to add more documents or document combinations, or more paper formats. But, of course, hack away!


### Generating Documents

The makefile has multiple options depending on which documents you wish to (re)generate:

* _make all_: makes everything
* _make cv_: makes all files containing a CV (CV, CVRefs CVRefsPubs)
* _make pubs_: makes all files contains a publication list (Pubs, CVPubs, CVRefsPubs)
* _make refs_: makes all files containing the list of recommenders (Refs, CVRefs, CVRefsPubs)
* _make a4_: makes all A4 files
* _make letter_: makes all Letter files

There are also individual options, for example:

* _make cv\_a4_: make the CV only in A4 format.
* _make cvrefspubs\_letter_: makes the CV + References + Publications document in Letter format.


### Outputs

The documents are output in PDF format into two directories, A4 or Letter depending on the paper format. And with names corresponding to the content (CV, Publications, References, CVRefs, CVPubs, CVRefsPubs).


### You've got this!

If you're applying for jobs right now, it's awful and I'm sorry. I hope this helps you in some small way. But you are awesome and you've totally got this. **BEST OF LUCK!**
