# Get asdf-vm  
_Quickly bootstrap the latest [asdf](https://github.com/asdf-vm/asdf)_  

---  

__Do it__:  
`curl -#L https://github.com/briskconfig/get-asdf/raw/refs/heads/with_profile.d/asdf.install | bash`  

__Explain__:  
  - Keeps home `~` directory clean by having shared `~/.local` tree between:  
    - `asdf` _# Language version management_  
    - Configs  
    - user-specific applications  
  - Bootstrap `asdf` version management for use in larger scripts/Dockerfiles  
    - eg. _# Bootstrap zig with asdf_  
    ```bash
    curl -#L https://github.com/briskconfig/get-asdf/raw/refs/heads/with_profile.d/asdf.install | bash ;\
    . ~/.bashrc ;\
    asdf-install-latest zig ;\
    zig version
    ```  
