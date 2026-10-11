### VM Add new ssh key
    - open Cloud Shell
    - click little icon for "Upload/Download files"
    - Upload id_rsa.pub from your local PC/laptop
    - run this:
        ```
        az vm user update --resource-group linux-vm   --name ubuntu-vm   --username ef    --ssh-key-value ./id_rsa.pub
        ```
    - Thought of a better way: (6 months later)
      - copy "id_rsa.pub" keys from Digital Ocean
      - ssh-copy these keys to "az"
      - then copy the keys into ~/.ssh/authorized_keys
