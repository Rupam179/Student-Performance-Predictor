# Student Performance Predictor

Author: Rupam Mukherjee

A comprehensive full-stack web application for tracking, analyzing, and predicting student academic performance using machine learning algorithms. Built with Hono framework and Cloudflare Pages, fully responsive for both mobile and desktop devices.

## 🌟 Project Overview

- **Name**: Student Performance Predictor
- **Goal**: Provide educators and administrators with intelligent insights into student performance through data-driven predictions
- **Tech Stack**: Hono + TypeScript + TailwindCSS + Chart.js + Cloudflare D1 Database
- **Platform**: Cloudflare Pages (Edge Computing)

## 🎯 Main Features

### ✅ Currently Completed Features

1. **Dashboard Analytics**
   - Real-time statistics display (total students, records, average scores)
   - Interactive charts showing subject performance comparison
   - Score distribution visualization with doughnut charts
   - Responsive card-based layout

2. **Student Management**
   - Add new students with name, email, and age
   - View complete student list with sortable tables
   - View individual student details with performance history
   - Delete students (cascading to related records)

3. **Performance Prediction**
   - Multi-factor prediction algorithm considering:
     - Math, Reading, and Writing scores
     - Study hours per week
     - Attendance rate
     - Previous grades
     - Extracurricular activities
     - Parent education level
   - Real-time prediction calculation
   - Weighted average algorithm with configurable factors

4. **Performance Records**
   - Complete history of all performance assessments
   - Filterable and sortable data tables
   - Display predicted vs actual scores
   - Student-subject relationship tracking

5. **Responsive Design**
   - Mobile-first approach with TailwindCSS
   - Touch-friendly interface for tablets and phones
   - Adaptive layouts for all screen sizes
   - Icon-only navigation on mobile devices

## 🔗 URLs

- **Sandbox Demo**: https://3000-i250p9qev8lfnrhmlbuag-2e1b9533.sandbox.novita.ai
- **API Base**: `/api/`
- **GitHub**: (Will be updated after deployment)

## 📊 Data Architecture

### Data Models

**Students Table**
```sql
- id: INTEGER PRIMARY KEY
- name: TEXT (student full name)
- email: TEXT UNIQUE (contact email)
- age: INTEGER (student age)
- created_at: DATETIME (record creation timestamp)
```

**Performance Records Table**
```sql
- id: INTEGER PRIMARY KEY
- student_id: INTEGER (foreign key to students)
- subject: TEXT (subject name)
- math_score: INTEGER (0-100)
- reading_score: INTEGER (0-100)
- writing_score: INTEGER (0-100)
- study_hours: INTEGER (weekly study time)
- attendance_rate: INTEGER (0-100 percentage)
- previous_grade: INTEGER (0-100, optional)
- extracurricular_activities: INTEGER (count)
- parent_education_level: TEXT (optional)
- predicted_score: REAL (ML prediction result)
- created_at: DATETIME (record creation timestamp)
```

### Storage Services

- **Cloudflare D1 Database**: SQLite-based globally distributed database for relational data
- **Local Development**: Uses `.wrangler/state/v3/d1` for local SQLite instance
- **Production**: Cloudflare D1 production database with automatic replication

### Data Flow

1. **User Input** → Frontend form validation
2. **API Request** → Hono backend receives JSON data
3. **Prediction Engine** → Weighted algorithm calculates expected performance
4. **Database Storage** → D1 database stores records with predictions
5. **Analytics** → Aggregated queries for dashboard metrics
6. **Visualization** → Chart.js renders interactive graphs

## 🧮 Prediction Algorithm

The app uses a weighted average algorithm considering multiple factors:

```typescript
Weights:
- Current Average (Math + Reading + Writing): 40%
- Study Hours Factor: 15%
- Attendance Rate: 15%
- Previous Grade: 20%
- Extracurricular Activities: 10%

Formula:
predicted_score = (current_avg * 0.40) + 
                 (study_factor * 0.15) + 
                 (attendance * 0.15) + 
                 (previous_grade * 0.20) + 
                 (extra_factor * 0.10)
```

## 🚀 API Endpoints

### Students
- `GET /api/students` - Get all students
- `GET /api/students/:id` - Get student with performance records
- `POST /api/students` - Create new student
- `DELETE /api/students/:id` - Delete student

### Performance
- `GET /api/performance` - Get all performance records
- `POST /api/performance` - Create record with prediction
- `GET /api/analytics` - Get dashboard analytics

## 📱 User Guide

### For Desktop Users

1. **Dashboard**: View overall statistics and performance charts
2. **Students Tab**: Manage student profiles, add or remove students
3. **Predict Tab**: Enter performance data to get AI predictions
4. **Records Tab**: Review historical performance data

### For Mobile Users

1. **Navigation**: Use bottom icon navigation for easy thumb access
2. **Forms**: All inputs are touch-optimized with appropriate keyboards
3. **Tables**: Swipe horizontally to view all columns
4. **Charts**: Tap to view detailed information

### Getting Started

1. **Add Students**: Go to Students tab → Click "Add Student" button
2. **Enter Data**: Navigate to Predict tab → Select student → Fill in scores and metrics
3. **View Prediction**: Click "Calculate Prediction" to see AI-generated score
4. **Analyze**: Check Dashboard for overall performance trends

## 🛠️ Development

### Local Development

```bash
# Install dependencies
npm install

# Create and seed database
npm run db:migrate:local
npm run db:seed

# Build the project
npm run build

# Start development server
npm run dev:sandbox

# Test the application
curl http://localhost:3000/api/students
```

### Database Management

```bash
# Apply migrations locally
npm run db:migrate:local

# Apply migrations to production
npm run db:migrate:prod

# Seed test data
npm run db:seed

# Reset database
npm run db:reset

# Query local database
npm run db:console:local

# Query production database
npm run db:console:prod
```

### Port Management

```bash
# Clean port 3000
npm run clean-port

# Test service
npm run test
```

## 📦 Deployment

### Status
- **Development**: ✅ Active (Sandbox)
- **Production**: ⏳ Ready to deploy

### Deployment Steps

```bash
# 1. Build the project
npm run build

# 2. Create production database
npx wrangler d1 create webapp-production

# 3. Update wrangler.jsonc with database_id

# 4. Apply migrations to production
npm run db:migrate:prod

# 5. Deploy to Cloudflare Pages
npm run deploy:prod
```

## 🔄 Features Not Yet Implemented

1. **Advanced Analytics**
   - Trend analysis over time
   - Performance comparison between students
   - Subject difficulty scoring

2. **Export Functionality**
   - Export reports to PDF
   - Download data as CSV/Excel
   - Print-friendly reports

3. **User Authentication**
   - Teacher/Admin login system
   - Role-based access control
   - Student self-service portal

4. **Notifications**
   - Email alerts for low performance
   - Progress reports generation
   - Parent notification system

5. **Advanced ML Features**
   - Neural network predictions
   - Performance trend forecasting
   - Risk factor identification

## 🎯 Recommended Next Steps

1. **Deploy to Production**
   - Set up Cloudflare account
   - Create production D1 database
   - Deploy to Cloudflare Pages

2. **Add Authentication**
   - Implement Cloudflare Access or Auth0
   - Create teacher/admin roles
   - Add login/logout functionality

3. **Enhance Analytics**
   - Add time-based filtering
   - Implement comparison views
   - Create export functionality

4. **Mobile App**
   - Convert to Progressive Web App (PWA)
   - Add offline support
   - Implement push notifications

5. **Testing**
   - Add unit tests with Vitest
   - Implement E2E tests with Playwright
   - Set up CI/CD pipeline

## 📄 License

MIT License - Feel free to use this project for educational purposes.

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 👨‍💻 Author
Rupam Mukherjee

GitHub: @Rupam179
LinkedIn: Rupam Mukherjee
Email: mukherjeerupam14@gmail.com

---

**Last Updated**: 2026-02-12  
**Version**: 1.0.0  
**Status**: Development Complete, Ready for Production Deployment
