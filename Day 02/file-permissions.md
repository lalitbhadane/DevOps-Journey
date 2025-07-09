# Linux File Permissions and Ownership

This document provides a clear, practical understanding of Linux file permissions, ownership, and how to manage them effectively using commands like `chmod` and `chown`.

---

## 🔐 Default Permissions and Why They Matter

- Linux is multi-user; each file has an **owner** and a **group**.
- Default permissions prevent other users from modifying or deleting your files.
- Permissions include:
  - `r`: Read
  - `w`: Write
  - `x`: Execute

---

## 🧾 File Permission Structure

Use `ls -l` to see file permissions.

Example output:
```bash
-rw-rw-r-- 1 developer dev 0 Jul 9 10:00 hello-world.sh
```

Breakdown:
- `-`: Regular file
- `rw-`: Owner (read/write)
- `rw-`: Group (read/write)
- `r--`: Others (read-only)

---

## 🛠️ Modifying Permissions with `chmod`

### Symbolic Notation
```bash
chmod u=rwx file.txt       # Set user permissions
chmod g=rw,o= file.txt     # Set group and others
chmod u+x script.sh        # Add execute for user
```

### Numeric (Octal) Notation
| Permission | Value |
|------------|-------|
| r (read)   | 4     |
| w (write)  | 2     |
| x (exec)   | 1     |

Example:
```bash
chmod 700 file.txt   # rwx------
chmod 755 file.txt   # rwxr-xr-x
chmod -R 755 dir/    # recursively set permissions
```

---

## 👑 Changing Ownership with `chown`

Change file ownership:
```bash
sudo chown user:group file.txt
```

Recursively change directory ownership:
```bash
sudo chown -R user:group dir/
```

---

## 📁 File vs Folder Permissions

- Folder permissions **override** file permissions inside it.
- You need `x` on a folder to access files inside.
- Example: Locking a folder will block access even if files are readable.

---

## 🧠 Key Tips

- `chmod` = change access
- `chown` = change ownership
- Use `-R` with caution – it affects all subfiles/folders
- Use `chmod +x` to run scripts