## What is this thing?

It's a minimalistic chat solution wrapping git blame for user identification, timestamps and history.

Each post to the chat results in a line appended to the chat log which is versioned with git. The viewer script shows a conventional chat log based on the git blame output. By letting git blame do the work one line of code is sufficient for the viewer script and the post scripts aren't much bigger.

Output from viewer.sh looks something like this:

    23:58:16 <Ola> ok so is it supposed to work now?
    23:59:32 <Molgan> I think so ...
    23:59:11 <Molgan> but you need to escape quotes with backslash
    00:00:01 <Daybot> Hooray it's a new day: Thursday June 25 2015
    00:02:44 <Ola> hmm ok, still kind of neat tho :)

## How can I try it?

Clone the repo

    $ git clone https://github.com/oflisback/blamechat.git
    $ cd blamechat

Make the scripts executable:

    $ chmod a+x {*.sh|gbc}

Start the chat viewer in a shell:

    $ ./viewer.sh

Post to the viewer while on the go in another shell using the gbc script:

    $ ./gbc My quoting characters won\'t make it to the other side if I don\'t escape them!

Or start the "blocking" poster script to post line by line:

    $ ./poster.sh
