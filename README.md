![Docker Image CI](https://github.com/fvalle1/cancers/workflows/Docker%20Image%20CI/badge.svg)
[![DOI](https://zenodo.org/badge/DOI/10.TBA/TBA.svg)](https://doi.org/TBA)


# A Topic model analysis of TCGA transcriptomic data

Notebooks and libraries for "A Topic model analysis of TCGA transcriptomic data"

# Analyse results

In order to analyse results and reproduce plots in the paper without rerunning hSBM use the following notebook [hSBM_postprocess.ipynb](hSBM_postprocess.ipynb)

This repository, following the structure of the paper, is divided into three parts. See *Readme.md* in each folder for a detailed description of the specific pipeline.

## breast
[breast](breast) analyses, stochastic block modelling and predictor

## lung
[lung](lung) analyses, stochastic block modelling, survival analysis and predictor

## unified lung
lung data from unified dataset as discussed in the paper

## tree plotter

A submodule useful to plot hierarchies

# Run
You can simply create a Docker container with all dependencies installed

```bash
docker run -v $PWD:/home/jovyan/work -p 8888:8888 --rm -it --name topic_tcga docker.pkg.github.com/fvalle1/topictcga/topic:latest
```

then point your browser to [localhost](http://localhost:8888)

## hSBM_Topicmodel

The [run_graph.ipynb](run_graph.ipynb) notebook can be used to run hierarchical Stochastic Block Modelling.

# Data
The data processed in our analysis when not available trough git can be accessed via [DataVersionControl](https://dvc.org)
```bash
dvc pull -r mydrive name_of_the_file_to_download.dvc
```

# License
Please see [LICENSE](LICENSE)
