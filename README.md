zproj is a simple project switcher tool. All of my work is just a directory of various git repositories. I've made some dumb tools in the paste to easily navigate to project directories in the past, but figured I'd formalize it and add some completion as well.

## Prerequisites

Zsh 5.2 or greater. I use zgen, but this should work with any Zsh plugin manager.

## Installing

### Zgen

```shell
  zgen load wilypomegranate/zproj
```

## Getting Started

All you need to do is

```shell
export ZPROJ_ROOT_DIR
```

before the plugin is loaded. For now, the plugin won't do anything if ZPROJ_ROOT_DIR isn't set.


## Usage

To navigate to any of your projects:

```shell
project_goto <your_proj_name>
```

Or if using the built-in aliases

```shell
goto <your_proj_name>
```

To remove a project, pass in the name of the project.

```shell
project_remove <your_proj_name>
```
