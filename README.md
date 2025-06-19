Thank you! Here's the revised **professional README text** with your clarification included:

---

# Used Car Price Analysis and Prediction

This project presents a comprehensive end-to-end workflow for analyzing and predicting used car prices. It includes data preprocessing, exploratory data analysis, model evaluation, and an interactive browser-based prediction tool. The entire application is structured as a multi-page web interface and is hosted using GitHub Pages.

Live Demo:
[https://karanpr-18.github.io/Used\_car\_project/](https://karanpr-18.github.io/Used_car_project/)

---

## Overview

The primary objective of this project is to explore historical used car data and develop a system that can estimate car prices based on user-defined input parameters. The solution is implemented using HTML, CSS, JavaScript, and SQL for backend data preparation. Python was used to convert the cleaned CSV data into a JSON format suitable for browser-based prediction. The prediction logic runs entirely on the client side, making the application fast, accessible, and deployable without the need for a backend server.

---

## Features

* Multi-page responsive web application
* Clean and intuitive user interface
* Data cleaning and transformation using SQL
* Exploratory data analysis (EDA) with visualizations
* Lightweight, client-side prediction algorithm
* Filter-based dynamic price estimation
* Fully deployable on static hosting platforms like GitHub Pages

---

## Technologies Used

Frontend:

* HTML
* CSS
* JavaScript

Data Processing:

* SQL (for data cleaning and filtering)
* Python (to convert CSV to JSON)

Visualization and Modeling (offline):

* Python
* Pandas

Deployment:

* GitHub Pages

Data Format:

* JSON (filtered dataset used for prediction)
* CSV (Raw dataset)

---

## Application Pages

1. **index.html** – Introduction and project overview
2. **page-2.html** – Data preprocessing and cleaning steps
3. **page-3.html** – Exploratory Data Analysis with visual summaries
4. **page-4.html** – Model building, training, and performance metrics
5. **page-5.html** – Interactive car price prediction tool and final remarks

---

## Price Prediction Logic

The prediction tool on the final page uses a filtered dataset (`filtered_data.json`) to estimate car prices. The logic is implemented in JavaScript and executes entirely in the browser.

**Input Parameters:**

* Brand
* Model
* Fuel Type
* Gearbox Type
* Age of the car
* Distance driven (in kilometers)

**Prediction Process:**

1. The dataset is filtered to match the selected brand, model, fuel type, gearbox, and values within a ±2-year age range and ±15,000 km distance range.
2. If no results are found, the filter is relaxed progressively to avoid returning null results.
3. The predicted price is calculated as the average of the `askprice` values from the matching records.
4. If no sufficient data is found, the tool displays an appropriate message.

This method provides quick and interpretable predictions while maintaining a lightweight frontend experience.

---

## Project Structure

* `bi` – stores Power BI templates
* `docs` – stores frontend files
* `json converter` – stores python file
* `filtered_data.json` – Preprocessed dataset used for prediction
* `overview.xlsx` – Stor temporary data
* `Used_car_project.db` – data stored for cleaning
* `Used_car_project.sql` – codes stored for cleaning and analysing
* `Used_car_project.csv` – raw dataset 
* `README.txt` – Project documentation

---

## Running the Project Locally

To run the project locally:

1. Clone the repository:
   `git clone https://github.com/karanpr-18/Used_car_project.git`

2. Navigate to the project directory:
   `cd Used_car_project`

3. Open `index.html` in any modern web browser. You can also use a local web server (such as the Live Server extension in VS Code) for better performance.

---

## Credits

* Dataset Source: https://www.kaggle.com/datasets/mohitkumar282/used-car-dataset?utm_source=chatgpt.com&select=used_cars_dataset_v2.csv
* Tools Used: SQL, Python, Html, Css, JavaScript
* Hosted via: GitHub Pages

---

## License

This project is open-source and available under the MIT License. You are free to use, modify, and distribute the project with proper attribution.

---

Developed by: Karan
GitHub: [https://github.com/karanpr-18](https://github.com/karanpr-18)

---

Let me know if you want this saved as a `.txt`, `.pdf`, or `.docx` file.
