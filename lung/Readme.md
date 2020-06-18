# lung
First download data from TCGA using

```bash
mkdir -p data && mv manifest.txt data/. && cd data
gdc-client download -m manifest.txt
```
Run [lung.ipynb](lung.ipynb) to preprocess data

Go trough [predictor_LUAD_LUSC.ipynb](predictor_LUAD_LUSC.ipynb) to execute the predictor discussed in the paper, this can be run on Colab on in any machine with tensorflow (possibly with GPU enabled)

[model_cancer.type.h5](model_cancer.type.h5) contains the trained weights, load it using
```python
from tensorflow.keras.models import load_model
model = load_model(f"model_{label}_{L}.h5")
model.summary()
```
as described in the notebook, to reproduce our evaluation analyses.

Output for hierarchical stochastic block model is in [topsbm](topsbm) folder
