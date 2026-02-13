## 🎓 Student Performance Predictor

**Author:** Rupam Mukherjee  

A full-stack web application that analyzes and predicts student academic performance using a multi-factor machine learning–inspired algorithm.  
Built using **Hono (Edge runtime) + TypeScript + Cloudflare D1 + Chart.js**, optimized for both desktop and mobile devices.

> Designed for educators to make data-driven academic decisions.

---

## 🚀 Live Demo
🔗 Sandbox Demo: https://3000-i250p9qev8lfnrhmlbuag-2e1b9533.sandbox.novita.ai  
🔗 API Base: `/api/`  
🔗 GitHub Repo: *(Add after deployment)*

---

## 📌 Key Highlights
- Edge-deployed full-stack app (Cloudflare Pages)
- Real-time academic performance prediction
- Interactive analytics dashboard
- Fully responsive (mobile-first UI)
- Structured relational database (D1 / SQLite)
- Modular REST API architecture

---

## 🛠 Tech Stack

| Layer | Technology |
|------|------|
| Frontend | TypeScript, TailwindCSS, Chart.js |
| Backend | Hono (Edge framework) |
| Database | Cloudflare D1 (SQLite Distributed DB) |
| Hosting | Cloudflare Pages |
| Runtime | Edge Computing |

---

## 🎯 Features

### 📊 Dashboard Analytics
- Total students & records statistics
- Average score calculation
- Subject comparison charts
- Score distribution (doughnut chart)
- Responsive card-based UI

---

### 👨‍🎓 Student Management
- Add students (Name, Email, Age)
- Sortable student list
- Individual performance history
- Cascading delete (removes related records)

---

### 🤖 Performance Prediction
Prediction uses multiple academic factors:

- Math, Reading, Writing scores
- Study hours per week
- Attendance rate
- Previous grade
- Extracurricular activities
- Parent education level

Real-time prediction calculation using weighted scoring algorithm.

---

### 📁 Performance Records
- Historical assessments storage
- Predicted vs actual comparison
- Filterable & sortable tables
- Student-subject relationship tracking

---

### 📱 Responsive UI
- Mobile-first Tailwind design
- Touch-friendly inputs
- Tablet & desktop adaptive layouts
- Icon-only mobile navigation

---

## 🧮 Prediction Algorithm

Weighted multi-factor scoring model:

| Factor | Weight |
|------|------|
Current average (Math + Reading + Writing) | 40%
Study hours | 15%
Attendance | 15%
Previous grade | 20%
Extracurricular activities | 10%

```

predicted_score =
(current_avg × 0.40) +
(study_factor × 0.15) +
(attendance × 0.15) +
(previous_grade × 0.20) +
(extra_factor × 0.10)

```

---

## 🗄 Database Schema

### Students
| Field | Type |
|------|------|
id | INTEGER (PK)
name | TEXT
email | TEXT (Unique)
age | INTEGER
created_at | DATETIME

### Performance Records
| Field | Type |
|------|------|
student_id | INTEGER (FK)
subject | TEXT
math_score | INTEGER
reading_score | INTEGER
writing_score | INTEGER
study_hours | INTEGER
attendance_rate | INTEGER
previous_grade | INTEGER
extracurricular_activities | INTEGER
parent_education_level | TEXT
predicted_score | REAL
created_at | DATETIME

---

## 🔌 API Endpoints

### Students
```

GET    /api/students
GET    /api/students/:id
POST   /api/students
DELETE /api/students/:id

```

### Performance
```

GET  /api/performance
POST /api/performance
GET  /api/analytics

````

---

## 💻 Local Development

### Install
```bash
npm install
````

### Setup Database

```bash
npm run db:migrate:local
npm run db:seed
```

### Run Development Server

```bash
npm run dev:sandbox
```

Test API:

```bash
curl http://localhost:3000/api/students
```

---

## 🧾 Database Commands

```bash
npm run db:migrate:local
npm run db:migrate:prod
npm run db:seed
npm run db:reset
npm run db:console:local
npm run db:console:prod
```

---

## 🚀 Deployment (Cloudflare Pages)

```bash
npm run build
npx wrangler d1 create webapp-production
npm run db:migrate:prod
npm run deploy:prod
```

---

## 🔮 Future Improvements

* Authentication (Teacher/Admin login)
* Export reports (PDF/Excel)
* Email alerts for low performance
* Neural network prediction model
* Student performance trend forecasting
* PWA mobile app with offline support

---

## 🧪 Testing (Planned)

* Unit tests (Vitest)
* End-to-End tests (Playwright)
* CI/CD pipeline

---

## 📄 License

MIT License — Free for educational use.

---

## 👨‍💻 Author

**Rupam Mukherjee**

GitHub: [https://github.com/Rupam179](https://github.com/Rupam179)
LinkedIn: [https:www.linkedin.com/in/rupam-mukherjee-647a092b0](https:www.linkedin.com/in/rupam-mukherjee-647a092b0)
Email: [mukherjeerupam14@gmail.com](mailto:mukherjeerupam14@gmail.com)

---

## ⭐ If you like this project

Give the repository a **star** and share feedback!

```

---

If you want next level ⭐: I can add **GitHub badges (Stars, Tech stack icons, License, Deploy status)** — recruiters instantly notice those.
```
