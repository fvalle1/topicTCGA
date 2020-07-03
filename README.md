![Docker Image CI](https://github.com/fvalle1/cancers/workflows/Docker%20Image%20CI/badge.svg)

# A Topic model analysis
Notebooks for work "A Topic model analysis of TCGA transcriptomic data" submitted to Cancers [link]()

This repository consists of in three parts

## breast
[breast](breast) analysis, stochastic block modelling and predictor

## lung
[lung](lung) analysis, stochastic block modelling and predictor

## unified lung
lung data from unified dataset as discussed in the paper

See *Readme.md* in each folder for a detailed description of the specific workflow

## tree plotter

A submodule useful to plot hierarchies

# Run
You can simply create a Docker container with all dependencies installed

```bash
docker run -v $PWD:/home/jovyan/work -p 8888:8888 --rm -it docker.pkg.github.com/fvalle1/cancers/topic:latest
```

then point your browser to [localhost](localhost:8888)
