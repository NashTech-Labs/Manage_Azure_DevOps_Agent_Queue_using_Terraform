resource "azuredevops_project" "azure_devops_project" {
  name               = var.project_name_VV
}

data "azuredevops_agent_pool" "agent_pool" {
  name = var.agent_pool_name_VV
}

resource "azuredevops_agent_queue" "agent_queue" {
  project_id    = azuredevops_project.azure_devops_project.id
  agent_pool_id = data.azuredevops_agent_pool.agent_pool.id
}

# Grant access to queue to all pipelines in the project
resource "azuredevops_resource_authorization" "example" {
  project_id  = azuredevops_project.azure_devops_project.id
  resource_id = azuredevops_agent_queue.agent_queue.id
  type        = "queue"
  authorized  = true
}

