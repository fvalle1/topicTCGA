# breast
First download data from TCGA using

```bash
mkdir -p data && mv manifest.txt data/. && cd data
gdc-client download -m manifest.txt
```
Run [breast.ipynb](breast.ipynb) to preprocess data

Go trough [predictor_BRCA.ipynb](predictor_BRCA.ipynb) to execute the predictor discussed in the paper, this can be run on Colab on in any machine with tensorflow (possibly with GPU enabled)

[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/drive/1Rhg4Wpx80OpP-t9c7Nb6W1DioZhy_kZ6/view?usp=sharing)

[model_Subtype_Selected_Lum.h5](model_Subtype_Selected_Lum.h5) contains the trained weights, load it using
```python
from tensorflow.keras.models import load_model
model = load_model(f"model_{label}_{L}.h5", custom_objects={'f1': f1})
model.summary()
```
as described in the notebook, to reproduce our evaluation analyses.

Output for hierarchical stochastic block model is in [topsbm](topsbm) folder
