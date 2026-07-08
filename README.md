# Movie Review Sentiment Analyzer 🎬

This is my sentiment analysis app from Assignment 1, now packaged up with Docker so anyone can run it without dealing with Python versions or installing a bunch of packages by hand.

Basically: you paste in a movie review, hit the button, and the model (trained with scikit-learn) tells you if it thinks the review is positive or negative.

## What you'll need

- Docker Desktop installed and running (Mac/Windows/Linux — [get it here](https://docs.docker.com/get-docker/) if you don't have it)
- `make` — this comes pre-installed on Mac and Linux. On Windows you'll want WSL or Git Bash.

That's it. You don't need Python installed locally — Docker handles all of that inside the container.

## How to run it

1. Clone the repo:
   ```bash
   git clone https://github.com/vegamichelle/Assignment-2---Docker.git
   cd Assignment-2---Docker
   ```

2. Build the image:
   ```bash
   make build
   ```
   This grabs a lightweight Python image and installs everything from `requirements.txt` (streamlit, pandas, scikit-learn, joblib).

3. Run it:
   ```bash
   make run
   ```

4. Open your browser and go to:
   ```
   http://localhost:8501
   ```

5. When you're done, just hit `Ctrl+C` in the terminal to stop it.

## Other commands

- `make clean` — removes the built image if you want to start fresh

## What's in here

- `app.py` — the Streamlit app itself
- `sentiment_model.pkl` — the pre-trained model (already trained, so you don't need to retrain anything)
- `train_model.py` — the script I used to train the model in Assignment 1, kept here for reference (not used by Docker)
- `requirements.txt` — Python dependencies
- `Dockerfile` — instructions for building the container
- `Makefile` — shortcuts so you don't have to type long `docker` commands
