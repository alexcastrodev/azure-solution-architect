# Login to Azure
az login
 
# Set the subscription
az account set --subscription "<your-subscription-id>"
 
# Variables
LOCATION="westeurope"
RG_INFRA="rg-az305-infra-lab-weu-001"
RG_DATA="rg-az305-data-lab-weu-001"
 
VNET_NAME="vnet-az305-lab-weu-001"
SUBNET_DATA="snet-az305-data-lab-weu-001"
SUBNET_LOG="snet-az305-log-lab-weu-001"
SUBNET_APP="snet-az305-app-lab-weu-001"
 
NSG_DATA="nsg-az305-data-lab-weu-001"
NSG_LOG="nsg-az305-log-lab-weu-001"
NSG_APP="nsg-az305-app-lab-weu-001"
 
STORAGE_BLOB="staz305labweu099"
STORAGE_FILE="staz305labweu002"
SQL_SERVER_NAME="sqlaz305labweu001"
SQL_DB_NAME="sqldb-az305-lab-weu-001"
SQL_ADMIN="sqladminuser"
SQL_PASSWORD="5tr0ngP@ssword123!"
 
# Create resource groups
az group create --name $RG_INFRA --location $LOCATION
az group create --name $RG_DATA --location $LOCATION
 
# Create NSGs
az network nsg create --resource-group $RG_INFRA --name $NSG_DATA --location $LOCATION
az network nsg create --resource-group $RG_INFRA --name $NSG_LOG --location $LOCATION
az network nsg create --resource-group $RG_INFRA --name $NSG_APP --location $LOCATION
 
# Create VNET with subnets (associate NSGs)
az network vnet create \
  --resource-group $RG_INFRA \
  --name $VNET_NAME \
  --location $LOCATION \
  --address-prefix 10.10.0.0/16 \
  --subnet-name $SUBNET_DATA \
  --subnet-prefix 10.10.1.0/24 \
  --network-security-group $NSG_DATA
 
# Add the remaining subnets
az network vnet subnet create \
  --resource-group $RG_INFRA \
  --vnet-name $VNET_NAME \
  --name $SUBNET_LOG \
  --address-prefix 10.10.2.0/24 \
  --network-security-group $NSG_LOG
 
az network vnet subnet create \
  --resource-group $RG_INFRA \
  --vnet-name $VNET_NAME \
  --name $SUBNET_APP \
  --address-prefix 10.10.3.0/24 \
  --network-security-group $NSG_APP
 
# Create Storage Account for Blob (Standard V2)
az storage account create \
  --name $STORAGE_BLOB \
  --resource-group $RG_DATA \
  --location $LOCATION \
  --sku Standard_LRS \
  --kind StorageV2
 
# Create Storage Account for File Share (Standard V2)
az storage account create \
  --name $STORAGE_FILE \
  --resource-group $RG_DATA \
  --location $LOCATION \
  --sku Standard_LRS \
  --kind StorageV2
 
# Create SQL Server
az sql server create \
  --name $SQL_SERVER_NAME \
  --resource-group $RG_DATA \
  --location $LOCATION \
  --admin-user $SQL_ADMIN \
  --admin-password $SQL_PASSWORD
 
# Create SQL DB
az sql db create \
  --resource-group $RG_DATA \
  --server $SQL_SERVER_NAME \
  --name $SQL_DB_NAME \
  --service-objective Basic