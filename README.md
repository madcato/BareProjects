# Lightweight Git-based Project Management System with Text Files

To create a lightweight and text-based solution that can replace services like GitLab or GitHub without the complexity of a full application, you can use a set of tools that combine version control, issue management, and kanban functionality in a simple way. Here is a proposed setup:

## 1. **Version Control with Bare Git Repositories**
You can use Git to create bare repositories that are accessible remotely. A bare repository is a Git repository without a working directory, which is ideal for a remote server. To create a bare repository, you can use the following command:

```bash
git init --bare /path/to/repo.git
```

Then, you can clone this repository on other systems and work with it normally:

```bash
git clone user@server:/path/to/repo.git
```

## 2. **Issue Management and Kanban with Markdown and Simple Kanban**

To manage issues and a kanban board, you can use Markdown files. A simple structure could be having an `issues` directory where each issue is a Markdown file:

```
issues/
├── issue_001.md
├── issue_002.md
└── issue_003.md
```

Each issue file can follow a format like this:

```markdown
# Issue 001: Problem Description

## Details
- **Status**: Open
- **Priority**: High
- **Assigned to**: User

## Description
Here is the detailed description of the problem.

## Tasks
- [ ] Task 1
- [ ] Task 2
```

For the kanban board, you could have a `kanban.md` file that simply lists the issues in different sections (To Do, In Progress, Done):

```markdown
# Kanban Board

## To Do
- [ ] [Issue 001: Problem Description](./issues/issue_001.md)
- [ ] [Issue 002: Problem Description](./issues/issue_002.md)

## In Progress
- [ ] [Issue 003: Problem Description](./issues/issue_003.md)

## Done
- [ ] [Issue 004: Problem Description](./issues/issue_004.md)
```

## 3. **Reviewing Changes and Pull Requests with Git**

Git has built-in functionalities for reviewing changes and performing merges. You can use branches to work on new features or fixes and then review them before merging into the main branch. For reviews and pull requests:

1. Create a new branch for your change:
    ```bash
    git checkout -b feature/new-feature
    ```

2. Make your changes and commit:
    ```bash
    git add .
    git commit -m "Added new feature"
    ```

3. Push your branch to the remote repository:
    ```bash
    git push origin feature/new-feature
    ```

4. To perform a review, you can use a diff:
    ```bash
    git diff main feature/new-feature
    ```

5. Finally, to merge the changes after review:
    ```bash
    git checkout main
    git merge feature/new-feature
    ```

## 4. **Automation with Scripts**

To simplify the workflow, you can create bash scripts to automate common tasks such as creating new issues, updating the kanban board, or generating diffs for reviews.

### Example script to create a new issue:
```bash
#!/bin/bash
read -p "Enter issue title: " title
id=$(date +%s)
filename="issues/issue_$id.md"

echo "# $title

## Details
- **Status**: Open
- **Priority**: 
- **Assigned to**: 

## Description

## Tasks
- [ ] " > $filename

echo "Issue created: $filename"
```

# Additional Tools

For viewing the Kanban board and managing issues in Markdown, you can use tools like:

- **Dillinger**: An online Markdown editor that can connect to Git repositories.
- **Typora**: A desktop Markdown editor.
- **MkDocs**: To generate static documentation based on Markdown.

## Conclusion

This solution allows you to manage projects and collaborate using only text files and Git, without needing to install complex software or handle databases. It is ideal for small projects or for those who prefer a minimalist approach and total control over their tools.

# VS Code Extensions to Support this Workflow

There are several VS Code extensions that can help you implement and manage this text-based system and Git. Here are some recommendations:

## 1. **Git Graph**
This extension allows you to visualize and manage your Git history in a graphical way, which is useful for reviewing changes and performing merges.

**Installation:**
1. Go to the Extensions tab in VS Code (`Ctrl+Shift+X`).
2. Search for `Git Graph`.
3. Click `Install`.

## 2. **Markdown All in One**
A powerful extension for working with Markdown files, providing features like preview, auto-formatting, and keyboard shortcuts.

**Installation:**
1. Go to the Extensions tab in VS Code.
2. Search for `Markdown All in One`.
3. Click `Install`.

## 3. **Todo Tree**
This extension allows you to search and view TODOs and other tagged comments in your code, which can be useful for managing tasks within issues.

**Installation:**
1. Go to the Extensions tab in VS Code.
2. Search for `Todo Tree`.
3. Click `Install`.

## 4. **Project Manager**
This extension helps you manage multiple projects in VS Code, which is useful if you are working with several repositories.

**Installation:**
1. Go to the Extensions tab in VS Code.
2. Search for `Project Manager`.
3. Click `Install`.

## 5. **GitLens**
An extension that enhances Git capabilities in VS Code, providing rich details about Git history, authors of specific lines of code, and more.

**Installation:**
1. Go to the Extensions tab in VS Code.
2. Search for `GitLens`.
3. Click `Install`.

## 6. **Markdown Preview Enhanced**
Provides an advanced preview of Markdown files with support for diagrams and other visual elements.

**Installation:**
1. Go to the Extensions tab in VS Code.
2. Search for `Markdown Preview Enhanced`.
3. Click `Install`.

## Configuring VS Code for Your Workflow

Once the extensions are installed, you can configure them to fit your workflow:

1. **Configuring `Markdown All in One`**:
    - Open VS Code settings (`Ctrl+,`).
    - Search for `markdown-all-in-one`.
    - Adjust the settings according to your needs, such as keyboard shortcuts and auto-formatting.

2. **Configuring `Git Graph` and `GitLens`**:
    - Open VS Code settings.
    - Search for `git-graph` and `gitlens`.
    - Adjust the settings to enable additional views and functionalities.

3. **Creating and Managing Kanban Boards**:
    - Use the `Kanban` extension to create a board in a Markdown file. The structure of the file can be similar to the following:

```markdown
# Kanban Board

## To Do
- [ ] [Issue 001: Problem Description](./issues/issue_001.md)
- [ ] [Issue 002: Problem Description](./issues/issue_002.md)

## In Progress
- [ ] [Issue 003: Problem Description](./issues/issue_003.md)

## Done
- [ ] [Issue 004: Problem Description](./issues/issue_004.md)
```

## Suggested Workflow

1. **Creating Issues**:
    - Use `Markdown All in One` to create new issues in Markdown format.
    - Use `Todo Tree` to list and manage tasks within the issues.

2. **Viewing the Kanban Board**:
    - Use `Kanban` to view and update your Kanban board.

3. **Managing Git**:
    - Use `Git Graph` and `GitLens` to manage branches, commits, and merges.

4. **Previewing Markdown**:
    - Use `Markdown Preview Enhanced` to preview your Markdown files.

With these extensions and configurations, you will have a working environment in VS Code that allows you to manage your project efficiently using text files and Git, without needing additional complex software.
