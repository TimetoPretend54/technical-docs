# Setting Up SSH Tips

## Set UP SSH Keys - Virtual Machine
1. 
    ```
    ssh-keygen -t rsa -C {user_name}
    ```
2. When asked `Enter file in which to save the key` for SSH Keys generated, enter:
   ```
   /Users/{userDirectory}/.ssh/{vm_name}/{vm_name}_rsa
   ```
3. 
    ```
    cd ~/.ssh/{vm_name}
    ```
4. 
    ```
    cat {vm_name}_rsa.pub
    ```
5. Share pub key w/ person giving access
    - If that doesn't work, provide them the .pub file, since ssh is private, copy pub file to a public folder to upload

### Log Into SSH VM
1. 
    ```
    cd ~/.ssh/{vm_name}
    ```
2. 
    ```
    ssh -i {vm_name}_rsa {user_name}@{vm_ip_address}
    ```
