name: storage account

on:
    push:
        branches: [ main ]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v3
    - uses: azure/login@v1
      with:
          creds: ${{ secrets.AZURE_CREDENTIALS }}

    - name: Upload to blob storage
      uses: azure/CLI@v1
      with:
        inlineScript: |
            az group create --name exampleGroup --location westus
  # Azure logout
    - name: logout
      run: |
            az logout
      if: always()
