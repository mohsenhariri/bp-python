# Python Template

A [simple] [general-purpose] Python template 🐍🚀🎉🦕


## Run on HPC

1. Clone the repository
    ```bash
    git clone git@github.com:mohsenhariri/template-python.git
    chmod -R u=rwx,go= template-python
    cd template-python
    ```
    
2. Run the initialization script 
    ```bash
    chmod +x hpc.init
    source hpc.init
    ```

3. Modify or add commands to `hpc.make` file
   
4. Run the `hpc.make` file
    ```bash
    make newCommand
    ```