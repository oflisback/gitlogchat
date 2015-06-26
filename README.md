## What is this thing?

It's a minimalistic shared server chat solution wrapping git log for user identification, timestamps and history.

Each post to the chat results in an empty commit to the git repository. The viewer script shows a conventional chat log based on the git log output. By letting git do the heavy lifting both the viewer and post scripts are one-liners.

Output from viewer.sh looks something like this:

    23:58:16 <Ola> ok so is it supposed to work now?
    23:59:32 <Molgan> I think so ...
    00:00:01 <Daybot> Hooray it's a new day: Thursday June 25 2015
    00:02:44 <Ola> excellent!

## How can I try it?

Clone the repo

    $ git clone https://github.com/oflisback/gitlogchat.git
    $ cd gitlogchat

Make the scripts executable:

    $ chmod a+x *.sh

Start the chat viewer in a shell:

    $ ./viewer.sh

Post to the viewer while on the go in another shell using the glc script:

    $ ./glc.sh Is this working?
