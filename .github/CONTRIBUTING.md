# czbiohub/nf-large-assembly: Contributing Guidelines

Hi there! Many thanks for taking an interest in improving czbiohub/nf-large-assembly.

We try to manage the required tasks for czbiohub/nf-large-assembly using GitHub issues, you probably came to this page when creating one. Please use the pre-filled template to save time.

However, don't be put off by this template - other more general issues and suggestions are welcome! Contributions to the code are even more welcome ;)

> If you need help using or modifying czbiohub/nf-large-assembly then the best place to go is the Gitter chatroom where you can ask us questions directly: https://gitter.im/czbiohub/Lobby

## Contribution workflow
If you'd like to write some code for czbiohub/nf-large-assembly, the standard workflow
is as follows:

1. Check that there isn't already an issue about your idea in the
   [czbiohub/nf-large-assembly issues](https://github.com/czbiohub/nf-large-assembly/issues) to avoid
   duplicating work.
    * If there isn't one already, please create one so that others know you're working on this
2. Fork the [czbiohub/nf-large-assembly repository](https://github.com/czbiohub/nf-large-assembly) to your GitHub account
3. Make the necessary changes / additions within your forked repository
4. Submit a Pull Request against the `dev` branch and wait for the code to be reviewed and merged.

If you're not used to this workflow with git, you can start with some [basic docs from GitHub](https://help.github.com/articles/fork-a-repo/) or even their [excellent interactive tutorial](https://try.github.io/).


## Tests
When you create a pull request with changes, [Travis CI](https://travis-ci.org/) will run automatic tests.
Typically, pull-requests are only fully reviewed when these tests are passing, though of course we can help out before then.

There are typically two types of tests that run:

### Lint Tests
The czbiohub has a [set of guidelines](http://nf-co.re/developer_docs) which all pipelines must adhere to.
To enforce these and ensure that all pipelines stay in sync, we have developed a helper tool which runs checks on the pipeline code. This is in the [czbiohub/tools repository](https://github.com/czbiohub/tools) and once installed can be run locally with the `czbiohub lint <pipeline-directory>` command.

If any failures or warnings are encountered, please follow the listed URL for more documentation.

### Pipeline Tests
Each czbiohub pipeline should be set up with a minimal set of test-data.
Travis CI then runs the pipeline on this data to ensure that it exists successfully.
If there are any failures then the automated tests fail.
These tests are run both with the latest available version of Nextflow and also the minimum required version that is stated in the pipeline code.

## Getting help
For further information/help, please consult the [czbiohub/nf-large-assembly documentation](https://github.com/czbiohub/nf-large-assembly#documentation) and don't hesitate to get in touch on [Gitter](https://gitter.im/czbiohub/Lobby)
