# 📚 PDF Genius - Offline Document Intelligence (Challenge 1B)

> An offline AI-based tool to analyze PDF documents and extract the most relevant sections based on a given persona and task.

---

## 🚀 Project Structure

```bash
pdf-genius-offline/
├── Challenge_1b/
│   ├── input/
│   │   ├── pdfs/               # PDF documents 
│   │   └── input.json          # Metadata with persona, job, outlines
│   ├── output/
│   │   └── output.json         # ✅ Final result (auto-generated)
│   ├── main.py                 # Main script (entry point)
│   ├── run.bat                 # Windows batch script to run the app
│   └── Dockerfile              # Docker setup file
```

## 🔍 Quick Start: How to Use the Tool


1. Place your PDFs in input/pdfs/

2. Update input/input.json with the required structure

3. Run the app using run.bat (Windows) or the appropriate Docker command

4. Check the results in output/output.json


---


## 🧠 What It Does

Given a set of PDFs and a structured `input.json`, the app:

1. Identifies the most relevant sections using TF-IDF ranking.
2. Extracts the content from those pages.
3. Summarizes them using TextRank.
4. Outputs everything to `output/output.json`.

---

## ⚙️ Requirements

This project is designed to be run entirely within a Docker container. You don’t need to install Python or any dependencies locally. However, if you still wish to run it without Docker, the following tools and libraries are required:

### System Requirements

* OS: Windows / Linux / macOS
* Python: 3.10+

### Python Dependencies

Install via:

```bash
pip install pymupdf scikit-learn
```

Or use a `requirements.txt`:

```
pymupdf
scikit-learn
```

> 💡 Tip: Use Docker to avoid manual setup and dependency issues.

---

## 🐳 How to Run (Using Docker) 

### Step 1: Build the Docker Image

```bash
docker build -t challenge-1b .
```

✅ This step is **required only once**.

### Step 2: Run the Project

**Option 1:** Double-click `run.bat` (for Windows users)

> 📌 Make sure to **double-click `run.bat` from the Windows File Explorer**, not from inside VS Code. Otherwise, it may just open as a text file.

**Option 2:** 🪟 Run this manually from terminal (CMD) :

```bash
docker run --rm ^
  -v "%cd%/input:/Challenge_1b/input" ^
  -v "%cd%/output:/Challenge_1b/output" ^
  challenge-1b
```

🪟 PowerShell (Windows):
```powershell
docker run --rm `
  -v "${PWD}/input:/Challenge_1b/input" `
  -v "${PWD}/output:/Challenge_1b/output" `
  challenge-1b
```
🐧 macOS / Linux (bash):
```bash
docker run --rm \
  -v "$PWD/input:/Challenge_1b/input" \
  -v "$PWD/output:/Challenge_1b/output" \
  challenge-1b
```



### Step 4: Check the Output

```bash
output/output.json
```

---

## ✅ Sample 📥 Input/Output Format

### input.json Structure

```json
{
  "challenge_info": {
    "challenge_id": "round_1b_XXX",
    "test_case_name": "specific_test_case"
  },
  "documents": [
    {
      "filename": "doc.pdf",
      "title": "Title"
    }
  ],
  "persona": {
    "role": "User Persona"
  },
  "job_to_be_done": {
    "task": "Use case description"
  }
}

```

### output.json Structure

```json
{
  "metadata": {
    "input_documents": ["list"],
    "persona": "User Persona",
    "job_to_be_done": "Task description"
  },
  "extracted_sections": [
    {
      "document": "source.pdf",
      "section_title": "Title",
      "importance_rank": 1,
      "page_number": 1
    }
  ],
  "subsection_analysis": [
    {
      "document": "source.pdf",
      "refined_text": "Content",
      "page_number": 1
    }
  ]
}
```


## 👤 Author & Credits

Created by **Team  debuggers** for Adobe Hackathon Challenge 1B ✨

---

## 💬 Need Help?

Feel free to open an issue or ask in the repo discussion!

