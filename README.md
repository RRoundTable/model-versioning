# Model Versioning with DVC


## Prerequisite

- Anaconda3


## Setup

Create conda env

```
$ make env
```

Activate conda env

```
$ source init.sh
```

Install `requirementx-pip.txt`

```
$ make setup
```

## Model Versioning with DVC

Initialize dvc.

```
$ dvc init


Initialized DVC repository.

You can now commit the changes to git.

+---------------------------------------------------------------------+
|                                                                     |
|        DVC has enabled anonymous aggregate usage analytics.         |
|     Read the analytics documentation (and how to opt-out) here:     |
|             <https://dvc.org/doc/user-guide/analytics>              |
|                                                                     |
+---------------------------------------------------------------------+

What's next?
------------
- Check out the documentation: <https://dvc.org/doc>
- Get help and share ideas: <https://dvc.org/chat>
- Star us on GitHub: <https://github.com/iterative/dvc>

```

A few files are created.
```
$ tree .dvc

.dvc
├── config
└── tmp
    ├── hashes
    │   └── local
    │       └── cache.db
    └── links
        └── cache.db
```

Add remote(e.g. localstorage)

```
$ dvc remote add localstorage -d ~/remote/data

Setting 'localstroage' as a default remote.
```

Check remote list

```
$ dvc remote list

localstorage   ~/remote/data
```

Add `.dvc/config` on git

```
$ git add .dvc/config
```

