# Hello_Actions_with_Terraform_Azure

This repository contains a sample project that demonstrates how to use GitHub Actions with Terraform to deploy resources in Azure.

## Prerequisites
Before you can use this project, make sure you have the following prerequisites:
- An Azure subscription
- az command istalled on your local machine (for local test)
- Terraform installed on your local machine (for local test)

## Getting Started
To get started with this project, follow these steps:  
Ref : https://learn.microsoft.com/ko-kr/azure/developer/github/connect-from-azure?tabs=azure-portal%2Cwindows

1. Clone the repository to your local machine and Push your Repository (or just fork this repository)

2. Create Azure app and Service Principal  

3. Add Federated credentials to Azure App

4. Set Actions Repository secrets :
    ```
    AZURE_CLIENT_ID         = Application(Client) ID
    AZURE_SUBSCRIPTION_ID   = Subscription ID
    AZURE_TENANT_ID         = Directory(Tenant) ID
    ```
5. Run Workflow with "create_tfstate_storage" input.

6. Run Execute workflow in order of "plan", "apply", "destroy".