### Deploy model_example_y via `DREAM cli`, `kubectl cli` or `docker` 

__via DREAM cli__ 
Simple way to deploy to k8s


```
dream models deploy model_example_y v11
```


__via kubectl directly__
Direct way to deploy to k8s


```
git clone --branch v11 --single-branch git@github.com:dreamutherland/model_example_y.git
kubectl create namespace serve-model-model-example-y
kubectl create -f mlflow-serving.yaml
kubectl expose deployment model_example_y-deployment --port [PORT] --type="LoadBalancer"
```


__via docker (local)__
Local way to quickly test the image


```
docker run -d -p PORT:PORT jleighsutherland/model_example_y:v11
```


### Test "model_example_y" by executing `./infer.sh` 

_This model predicts features:_

['eod_market_data___sbry_at_lseg__open']

__infer via infer.sh__ 


```
./infer.sh
```

