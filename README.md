# SqueakMastodon

> A native Mastodon client for Squeak.

Originally created in **2017** as part of the *Software Engineering (SWE)* course at the **[Hasso Plattner Institute](https://hpi.de)**, this project was revisited, modernized, and extended by a new student team in **2026**.

## Overview

SqueakMastodon is a graphical Mastodon client implemented entirely in Squeak. It provides a native Morphic interface for interacting with Mastodon instances through the official API.

## Features
- Login to any Mastodon instance
- Browse home, trending and live timelines
- Compose and publish toots with images
- View user profiles and individual toots
- Search for users
- Interact with other users and toots

## Screenshots


## Installation

### Prerequisites

- Squeak 6.x (or newer)
- Squeak Git Browser
- A Mastodon account

### 1. Clone the repository

Clone this repository using the Git Browser or with Git:

```bash
git clone https://github.com/hpi-swa-teaching/Squeak-Mastodon.git
```

### 2. Load the Widgets dependency

Evaluate the following expression in a Workspace:

```smalltalk
(Smalltalk at: #Metacello) new
    repository: 'github://hpi-swa/widgets:master/repository';
    baseline: 'Widgets';
    load.
```

### 3. Load the project

Open the cloned repository with the **Git Browser** and load all packages into your image.

### 4. Start the application

Evaluate:

```smalltalk
MTUIWindow open
```

Login into your favorite Mastodon instance and start tooting!

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
