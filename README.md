![Docker Image CI](https://github.com/fvalle1/cancers/workflows/Docker%20Image%20CI/badge.svg)

# A Topic model analysis of TCGA transcriptomic data
Notebooks for work "A Topic model analysis of TCGA transcriptomic data" submitted to Cancers [link]()

This repository, following the paper, is divided into three parts

## breast
[breast](breast) analyses, stochastic block modelling and predictor

## lung
[lung](lung) analyses, stochastic block modelling, survival analysis and predictor

## unified lung
lung data from unified dataset as discussed in the paper

See *Readme.md* in each folder for a detailed description of the specific pipeline

## tree plotter

A submodule useful to plot hierarchies

# Run
You can simply create a Docker container with all dependencies installed

```bash
docker run -v $PWD:/home/jovyan/work -p 8888:8888 --rm -it docker.pkg.github.com/fvalle1/cancers/topic:latest
```

then point your browser to [localhost](http://localhost:8888)

# Analyse results

To analyse results and reproduce plots in the paper without rerunning hSBM use the following notebook [hSBM_postprocess.ipynb](hSBM_postprocess.ipynb)
