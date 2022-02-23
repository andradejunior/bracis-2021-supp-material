# bracis-2021-supp-material

Supplementary material from paper:

<div class="csl-entry">Andrade Junior, J. E., Cardoso-Silva, J., &#38; Bezerra, L. C. T. (2021). Comparing Contextual Embeddings for Semantic Textual Similarity in Portuguese. <i>Lecture Notes in Computer Science (Including Subseries Lecture Notes in Artificial Intelligence and Lecture Notes in Bioinformatics)</i>, <i>13074 LNAI</i>, 389–404. [https://doi.org/10.1007/978-3-030-91699-2_27](https://www.researchgate.net/publication/356582885_Comparing_Contextual_Embeddings_for_Semantic_Textual_Similarity_in_Portuguese)</div>

# Setup

## Software requirements

- Python 3.8.10 or above ([link to Python download](https://www.python.org/downloads/))
- pip3
- [Git](https://docs.github.com/en/get-started/quickstart/set-up-git) 

## Clone the repo

On the terminal, cd to your workspace directory, clone the Github repository ([instructions](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository)) and move to that directory:

```shell 
git clone git@github.com:jonjoncardoso/bracis-2021-supp-material.git
cd bracis-2021-supp-material
```

Obs.: If you plan to modify this code and save it to your account, you could [fork this repository to your username](https://docs.github.com/en/get-started/quickstart/fork-a-repo). If you do, modify the git clone command above appropriately.

## Setup the environment


Still on the terminal, run:

```shell
source setup.sh
```

What this script does:

- It creates a Virtual Environment specific to this project. This way we guarantee this notebooks is reproducible.
- Install [Jupyter lab](https://jupyterlab.readthedocs.io/en/stable/getting_started/overview.html) and set default kernel to the environment variable we have just created.
- Install dependencies described in the requirements.txt file

The code above was tested on Ubuntu 20.04 (WSL2). Follow the link below to learn how to set it up under a different Operating System. Link to [**venv official documentation**](https://packaging.python.org/en/latest/guides/installing-using-pip-and-virtual-environments/#creating-a-virtual-environment).


## Run JupyterLab

```shell
source run.sh
```

Then open code/Notebook 01 - Setup.ipynb to test your `pip` environment, and create Notebooks however you like. Just make sure to use `env` as the kernel.


## (Optional) Activate Widgets

Once you are on Jupyter Lab, click on the Extensions tab to activate the widgets. 

I recommend activating the [jupyterlab-execute-time](https://github.com/deshaw/jupyterlab-execute-time) plugin.

Then for this to show anything, you need to enable cell timing in the notebook via Settings->Advanced Settings Editor->Notebook: {"recordTiming": true}


