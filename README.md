# Building a CI/CD Pipeline.

# Overview

In this project, we learn about building out a DevOps CI/CD pipeline. We first start with a GitHub repository and use Github actions to perform an initial lint, test, and install cycles. We then use a pre-trained sklearn model built into a Flask web framework and integrate the project in GitHub with Azure Pipelines to enable Continuous Delivery to Azure App Service.

## Project Plan

* [Link to a Trello board for the project](https://trello.com/invite/b/zW4yWf6g/5bf9cc22582b06615e0a1923b4f38dbe/azure-devops-ci-cd-pipeline)
* [Link to a spreadsheet that includes the original and final project plan](https://docs.google.com/spreadsheets/d/1kz7bNuDeGY3deP0jfT86KPmY1-3nfg7pCFOZpwh7Z68/edit?usp=sharing)

## Architectural Diagrams

<img src="https://video.udacity-data.com/topher/2020/July/5f21ce4e_building-a-ci-cd-pipeline/building-a-ci-cd-pipeline.png">

<img src="https://video.udacity-data.com/topher/2020/August/5f3447ab_cd-diagram/cd-diagram.png">

## Instructions

We will use Azure Pipelines continuous integration and continuous delivery (CI/CD) to deploy a Python web app to Azure App Service on Linux. You begin by running app code from a GitHub repository locally. You then provision a target App Service through the Azure portal. Finally, you create an Azure Pipelines CI/CD pipeline that automatically builds the code and deploys it to the App Service whenever there's a commit to the repository.

1. Sign into https://portal.azure.com

2. Open Azure Cloud Shell
<img src="https://docs.microsoft.com/en-us/azure/devops/pipelines/media/python/azure-cloud-shell-button.png?view=azure-devops">

3. The cloud shell appears at the bottom
<img src="https://docs.microsoft.com/en-us/azure/devops/pipelines/media/python/azure-cloud-shell-interface.png?view=azure-devops">

4. In the cloud shell, clone the repo

  ```bash
  git clone https://github.com/elok/AzureND_CICD_Pipeline
  ```
  <img src="https://github.com/elok/AzureND_CICD_Pipeline/blob/main/screenshot_azure_cloud_shell_git.png?raw=true">5. Go into the folder

  ```bash
  cd AzureND_CICD_Pipeline
  ```

5. Setup virtual env
  ```bash
  python3 -m venv ~/.myrepo
  source ~/.myrepo/bin/activate
  ```
  
6. Run makefile to install all python requirements, lint, and test

  ```bash
  make all
  ```

  Passing tests that are displayed after running the `make all` command from the `Makefile`
  <img src="https://github.com/elok/AzureND_CICD_Pipeline/blob/main/screenshot_make_all.png?raw=true"> 

7. We will use az webapp up to create an App Service and initially deploy the app
  ```bash
  az webapp up -n <your-appservice>
  ```
  
  > Change <your-appservice> to a name for your app service that's unique across Azure.
  > Typically, you use a personal or company name along with an app identifier, such as 
  > <your-name>-flaskpipelines. The app URL becomes <your-appservice>.azurewebsites.net.
  > When the command completes, it shows JSON output in the Cloud Shell.
 
  <img src="screenshot_az_webapp_up.png" width="500px">
  
  <kbd>
  <img src="screenshot_app_service.png">
  </kbd>

7. When the command completes, it shows JSON output in the Cloud Shell.

To see the running app, open a browser and go to http://[your-appservice].azurewebsites.net. If you see a generic page, wait a few seconds for the App Service to start, and refresh the page.

8. Test run by running make prediction script

  ```bash
  ./make_prediction_on_azure.sh
  ```
  <img src="screenshot_prediction.png">

9. Azure Pipelines

<kbd>
  <img src="screenshot_azure_pipelines.png">
</kbd>
<kbd>
  <img src="screenshot_pipeline_details.png">
</kbd>
<kbd>
  <img src="screenshot_pipeline_deployed.png">
</kbd>  
<kbd>
  <img src="screenshot_make_prediction_azure.png">
</kbd>  

[Use CI/CD to deploy a Python web app to Azure App Service on Linux](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops)

10. Locust

<img src="screenshot_locust.png">

11. Streamed log files from deployed application

<img src="screenshot_web_tail_log.png">

## GitHub Actions

<kbd>
  <img src="screenshot_github_actions.png">
</kbd>  

## Enhancements

- Incorporate other forms of test
- Incorporate an option for manual deployment for sensitive applications

## Demo 

<TODO: Add link Screencast on YouTube>


