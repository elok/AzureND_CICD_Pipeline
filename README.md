# Building a CI/CD Pipeline.

# Overview

In this project, we learn about building out a DevOps CI/CD pipeline. We first start with a GitHub repository and use Github actions to perform an initial lint, test, and install cycles. We then use a pre-trained sklearn model built into a Flask web framework and integrate the project in GitHub with Azure Pipelines to enable Continuous Delivery to Azure App Service.

## Project Plan

* [Link to a Trello board for the project](https://trello.com/invite/b/zW4yWf6g/5bf9cc22582b06615e0a1923b4f38dbe/azure-devops-ci-cd-pipeline)
* [Link to a spreadsheet that includes the original and final project plan](https://docs.google.com/spreadsheets/d/1kz7bNuDeGY3deP0jfT86KPmY1-3nfg7pCFOZpwh7Z68/edit?usp=sharing)

## Instructions

* Architectural Diagram

<img src="https://video.udacity-data.com/topher/2020/July/5f21ce4e_building-a-ci-cd-pipeline/building-a-ci-cd-pipeline.png">

<img src="https://video.udacity-data.com/topher/2020/August/5f3447ab_cd-diagram/cd-diagram.png">

We will use Azure Pipelines continuous integration and continuous delivery (CI/CD) to deploy a Python web app to Azure App Service on Linux. You begin by running app code from a GitHub repository locally. You then provision a target App Service through the Azure portal. Finally, you create an Azure Pipelines CI/CD pipeline that automatically builds the code and deploys it to the App Service whenever there's a commit to the repository.

1. Sign into https://portal.azure.com
2. Open Azure Cloud Shell
<img src="https://docs.microsoft.com/en-us/azure/devops/pipelines/media/python/azure-cloud-shell-button.png?view=azure-devops">
3. The cloud shell appears at the bottom
<img src="https://docs.microsoft.com/en-us/azure/devops/pipelines/media/python/azure-cloud-shell-interface.png?view=azure-devops">
4. In the cloud shell, clone the repo
'''git clone https://github.com/elok/AzureND_CICD_Pipeline'''
5. Go into the folder
'''cd AzureND_CICD_Pipeline'''
6. We will sue az webapp up to create an App Service and initially deploy the app
'''az webapp up -n <your-appservice>'''

<TODO:  Instructions for running the Python project.  How could a user with no context run this project without asking you for any help.  Include screenshots with explicit steps to create that work. Be sure to at least include the following screenshots:

* Project running on Azure App Service

* Project cloned into Azure Cloud Shell

* Passing tests that are displayed after running the `make all` command from the `Makefile`

* Output of a test run

* Successful deploy of the project in Azure Pipelines.  [Note the official documentation should be referred to and double checked as you setup CI/CD](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops).

* Running Azure App Service from Azure Pipelines automatic deployment

* Successful prediction from deployed flask app in Azure Cloud Shell.  [Use this file as a template for the deployed prediction](https://github.com/udacity/nd082-Azure-Cloud-DevOps-Starter-Code/blob/master/C2-AgileDevelopmentwithAzure/project/starter_files/flask-sklearn/make_predict_azure_app.sh).
The output should look similar to this:

```bash
udacity@Azure:~$ ./make_predict_azure_app.sh
Port: 443
{"prediction":[20.35373177134412]}
```

* Output of streamed log files from deployed application

> 

## Enhancements

<TODO: A short description of how to improve the project in the future>

## Demo 

<TODO: Add link Screencast on YouTube>


