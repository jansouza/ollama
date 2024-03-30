# Generative AI
Repository for deploying OLLAMA and Open-WebUI in Docker and Kubernetes. Includes easy-to-use configuration files and scripts for seamless setup and management of large language models locally. Ideal for developers looking to quickly deploy and manage LLM-based applications.

## OLLAMA
OLLAMA (Open-source Large Language Model Accelerator) is a powerful open-source framework designed to facilitate the local deployment and execution of large language models (LLMs). By leveraging OLLAMA, users gain the ability to run LLMs directly on their own infrastructure, whether it be a single machine, a server, or a Kubernetes cluster.

This framework offers significant flexibility and control, allowing developers to utilize LLMs for various natural language processing tasks without relying on external cloud-based services. With OLLAMA, users can customize their LLM setups to meet specific requirements, ensuring optimal performance and resource utilization.

OLLAMA is particularly valuable for applications requiring real-time interaction with LLMs, such as chatbots, language translation systems, and text generation platforms. By enabling local deployment, OLLAMA enhances privacy, security, and efficiency while empowering developers to harness the full potential of LLMs in their projects.


## Open-WebUI
Open-WebUI is a user-friendly web-based interface designed to provide intuitive access to various functionalities and capabilities of the OLLAMA framework. Built with simplicity and usability in mind, Open-WebUI offers a comprehensive dashboard that allows users to manage and monitor their local deployments of large language models (LLMs) effortlessly.

Through Open-WebUI, users can easily configure and customize their LLM setups, upload and download models, monitor resource usage, and perform real-time inference tasks. The interface is designed to be accessible to both novice and experienced users, offering clear navigation and informative visualizations.

With Open-WebUI, developers and researchers can streamline their workflows, enabling efficient experimentation and deployment of LLM-based applications. Whether it's building chatbots, conducting language analysis, or generating text content, Open-WebUI empowers users to leverage the full potential of the OLLAMA framework with ease.

## Docker
```
cd docker/
./build.sh
```
    
Or use compose
```
cd docker/
docker-compose build --no-cache
docker-compose up -d --force-recreate
```


## K8s

Deploy ollama files
```
kubectl apply -f k8s/ollama/volume.yaml
kubectl apply -f k8s/ollama/deployment.yaml
kubectl apply -f k8s/ollama/service.yaml
```

Deploy open-webui
```
kubectl apply -f k8s/open-webui/volume.yaml
kubectl apply -f k8s/open-webui/deployment.yaml
kubectl apply -f k8s/open-webui/service.yaml
```

## Call OLLAMA API
```
curl -X POST http://localhost:11434/api/generate -d '{
"model": "llama2",
"prompt":"Why is the sky blue?"
}'
```

## Chat with a model
```
curl http://localhost:11434/api/chat -d '{
"model": "mistral",
"messages": [
    { "role": "user", "content": "why is the sky blue?" }
]
}'
```# ollama
