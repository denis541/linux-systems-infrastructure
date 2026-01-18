# Linux Paths & Navigation  

Linux organizes files in a **hierarchical directory tree**, starting from the **root `/`** directory. To work efficiently, you need to understand **paths** and how to navigate between them.  

---

## 🔹 Path Types  

### 1. **Absolute Path**  
- Starts from `/` (root).  
- Always points to the same place, no matter where you are.  
```bash
cd /home/denis/Documents
```
### 2. Relative Path
* Based on your current working directory.
* Does not start with /.

* `cd Documents      # go into Documents inside current directory`
* `cd ../Downloads   # go up one directory, then into Downloads`
  
### 🔹Special Path Symbols
* `.`  current directory
* `..` parent directory
* `~`  user's home directory
* `-`  previous directory
# Examples 
* `cd .           # stay in the same directory`
* `cd ..          # move up one level`
* `cd ~/Downloads # go to Downloads in home dir`
* `cd -           # switch back to last directory`
* `tree          # show directory tree(if installed)`



  
