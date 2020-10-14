![Docker Image CI](https://github.com/fvalle1/cancers/workflows/Docker%20Image%20CI/badge.svg)

# A Topic model analysis of TCGA transcriptomic data
Notebooks for work "A Topic model analysis of TCGA transcriptomic data" submitted to Cancers [link]()

# Analyse results

To analyse results and reproduce plots in the paper without rerunning hSBM use the following notebook [hSBM_postprocess.ipynb](hSBM_postprocess.ipynb)


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

# Data
The data processed in our analysis when not available trough git can be accessed via [DataVersionControl](https://dvc.org)
```bash
dvc pull
```

# License
Please see [LICENSE](LICENSE)
