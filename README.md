bioTome
=======

A fictional demo site for the Hypothesis integration on biorxiv.org. To view the demo site go to <https://biotome.hypothes.is/>.

Adding Hypothesis to a website
------------------------------

To embed Hypothesis into a site like in the demo linked above you just need to add a couple of scripts to your site's HTML:

```html
<script type="application/json" class="js-hypothesis-config">
  {
    "commentsMode": true,
    "showHighlights": false,
    "enableExperimentalNewNoteButton": true,
    "externalContainerSelector": "#hypothesis"
  }
</script>
<script async src="https://hypothes.is/embed.js"></script>
```

`externalContainerSelector` should be a [CSS selector](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_selectors) that selects the HTML element on your page where you want Hypothesis to appear.

For documentation, including all the settings you can use in the `js-hypothesis-config` object, see: <https://h.readthedocs.io/projects/client/en/latest/publishers/embedding.html>.

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
