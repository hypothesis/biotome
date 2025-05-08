bioTome
=======

A fictional demo site for the Hypothesis integration on https://www.biorxiv.org/.

Setting up a local bioTome development environment
--------------------------------------------------

First you'll need to install:

* [Git](https://git-scm.com/)
* [Python](https://www.python.org/)
* [GNU Make](https://www.gnu.org/software/make/)
* [entr](https://eradman.com/entrproject/) (on macOS: `brew install entr`)
* [envsubst](https://www.gnu.org/software/gettext/manual/html_node/envsubst-Invocation.html) (on macOS: `brew install gettext`)
* Local instances of [h](https://github.com/hypothesis/h) and [client](https://github.com/hypothesis/client), which will need to be running

Then to set up your development environment:

```terminal
git clone https://github.com/hypothesis/biotome.git
cd biotome
make dev
```

Now open <http://localhost:47291/> in a browser to see the demo site.
