# 🕸️ Wednesday Quiz Web Application

<div align="center">


**Aplikasi kuis interaktif bertema Wednesday dengan pengalaman pengguna yang imersif dan sistem manajemen konten yang powerful.**

[🚀 Demo](#-akses-akun-demo) • [✨ Fitur](#-fitur-unggulan) • [📖 Dokumentasi](#-dokumentasi-lengkap) • [🛠️ Teknologi](#-teknologi)

## 👥 Development Team

<table>
  <tr>
    <td align="center" width="33%">
      <b>🎨 UI/UX Design</b><br>
      <sub>Crafting Immersive Gothic Experience</sub><br><br>
      <kbd>Adjeng Mutiara Dewi</kbd><br>
    </td>
    <td align="center" width="33%">
      <b>💻 Frontend Development</b><br>
      <sub>Building Interactive Interfaces</sub><br><br>
      <kbd>Aditya Alfandy</kbd><br>
    </td>
    <td align="center" width="34%">
      <b>⚙️ Backend Development</b><br>
      <sub>Architecting Robust Systems</sub><br><br>
      <kbd>Zahwa Nafiza Azzahra</kbd><br>
    </td>
  </tr>
</table>


</div>

---

## 📋 Daftar Isi

- [Tentang Proyek](#-tentang-proyek)
- [Akses Akun Demo](#-akses-akun-demo)
- [Fitur Unggulan](#-fitur-unggulan)
- [Dokumentasi Lengkap](#-dokumentasi-lengkap)
- [Alur Demo](#-alur-demo-walkthrough)
- [Struktur Database](#-struktur-database)
- [Teknologi](#-teknologi)
- [Keamanan](#-keamanan)
- [FAQ](#-faq)

---

## 🎯 Tentang Proyek

**Wednesday Quiz** adalah aplikasi kuis interaktif berbasis web yang dibangun menggunakan **PHP Native**. Aplikasi ini mengusung tema visual dari serial TV populer "Wednesday", menghadirkan pengalaman pengguna (UX) yang imersif dengan nuansa *gothic*, musik latar, dan desain antarmuka yang responsif.

### 🎨 Filosofi Desain

Aplikasi ini dirancang dengan fokus pada tiga aspek utama:

1. **🖤 Atmosphere** - Menciptakan suasana gothic yang khas melalui pemilihan warna, font, dan visual
2. **🎮 Engagement** - Menghadirkan gameplay yang menarik dengan sistem poin dinamis dan feedback real-time
3. **⚙️ Simplicity** - Interface admin yang intuitif untuk kemudahan pengelolaan konten

### 🎯 Tujuan Proyek

- 📚 Demonstrasi implementasi CRUD dengan PHP Native
- 🔐 Showcase sistem autentikasi multi-role (Admin/User)
- 🎨 Contoh UI/UX design yang menarik tanpa framework CSS
- ⚡ Performance optimization dengan native PHP

---

## 🔑 Akses Akun Demo

Untuk mencoba fitur pengelolaan sistem secara penuh, gunakan kredensial berikut:

<table>
<thead>
<tr>
<th align="center">Role</th>
<th align="center">Username</th>
<th align="center">Password</th>
<th>Deskripsi Akses</th>
</tr>
</thead>
<tbody>
<tr>
<td align="center">👑 <strong>Admin</strong></td>
<td align="center"><code>admin</code></td>
<td align="center"><code>admin123</code></td>
<td>
  <ul>
    <li>✅ Manajemen Bank Soal (CRUD)</li>
    <li>✅ Monitoring User & Scores</li>
    <li>✅ Dashboard Analytics</li>
    <li>✅ Ubah Password Admin</li>
  </ul>
</td>
</tr>
<tr>
<td align="center">👤 <strong>User</strong></td>
<td align="center"><em>(Register)</em></td>
<td align="center"><em>(Register)</em></td>
<td>
  <ul>
    <li>✅ Main Kuis Interaktif</li>
    <li>✅ Lihat Leaderboard</li>
    <li>✅ Manajemen Profil</li>
    <li>✅ Upload Avatar</li>
  </ul>
</td>
</tr>
</tbody>
</table>

> **💡 Tips Demo:** Mulai dengan login sebagai Admin untuk melihat backend management, kemudian logout dan register sebagai User untuk experience gameplay.

---

## 🌟 Fitur Unggulan

### 🎮 Sisi Pemain (User Experience)

<details open>
<summary><b>📱 Interface & Atmosphere</b></summary>

- **🎨 Custom Theming**
  - Font eksklusif: *MetalMania* (Headers) & *Risque* (Body)
  - Background tematik dengan overlay effect
  - Animasi smooth dan transisi halus
  - Responsive design untuk berbagai device

- **🎵 Audio System**
  - Background music dengan toggle On/Off
  - Status musik tersimpan di LocalStorage
  - Auto-play dengan browser policy compliance
  - Smooth fade in/out effect

</details>

<details open>
<summary><b>🎯 Gameplay Mechanics</b></summary>

- **⏱️ Timer System**
  - Countdown timer untuk setiap pertanyaan
  - Visual progress bar yang dinamis
  - Auto-submit saat waktu habis
  - Time-based bonus points

- **💯 Smart Scoring**
  ```
  Score Formula:
  - Base Points: 10 per jawaban benar
  - Time Bonus: Waktu tersisa × 0.1
  - Final Score = (Base Points + Time Bonus) × Jumlah Benar
  ```

- **✨ Visual Feedback**
  - Highlight jawaban benar (hijau)
  - Indikasi jawaban salah (merah)
  - Animasi transisi antar soal
  - Konfetti effect untuk score tinggi

</details>

<details open>
<summary><b>🏆 Leaderboard & Profile</b></summary>

- **📊 Ranking System**
  - Top 3 podium dengan badge khusus (🥇🥈🥉)
  - Daftar peringkat lengkap dengan pagination
  - Real-time score update
  - Filter berdasarkan periode waktu

- **👤 Profile Management**
  - Upload & crop avatar (Max 2MB)
  - Edit informasi pribadi (Nama, Birthday, Location)
  - Lihat statistik permainan
  - Riwayat skor terakhir

</details>

---

### 👑 Sisi Administrator (Back-Office)

<details open>
<summary><b>📊 Dashboard & Analytics</b></summary>

- **📈 Statistics Overview**
  - Total Quiz terdaftar
  - Total Pertanyaan aktif
  - Jumlah User registered
  - Activity timeline

- **🎨 Data Visualization**
  - Card-based metrics
  - Color-coded status indicators
  - Quick action buttons
  - Real-time data refresh

</details>

<details open>
<summary><b>📝 Bank Soal Management (CRUD)</b></summary>

- **➕ Create Questions**
  - Tambah pertanyaan baru
  - Upload gambar pendukung (JPEG, PNG, GIF)
  - Input 4 opsi jawaban (A, B, C, D)
  - Set kunci jawaban yang benar
  - Validasi form comprehensive

- **✏️ Edit Questions**
  - Update teks pertanyaan
  - Ganti gambar atau hapus gambar existing
  - Modifikasi opsi jawaban
  - Ubah kunci jawaban
  - Preview changes sebelum save

- **🗑️ Delete Questions**
  - Soft delete dengan konfirmasi
  - Cascade delete untuk jawaban terkait
  - Backup otomatis sebelum hapus
  - Restore option (jika diimplementasikan)

- **🔍 Search & Filter**
  - Pencarian berdasarkan kata kunci
  - Filter berdasarkan quiz category
  - Sort by date created/modified
  - Pagination untuk data besar

</details>

<details open>
<summary><b>👥 User Management</b></summary>

- **📋 User List**
  - Daftar lengkap registered users
  - Sorting by name, score, join date
  - Display entries: 25/50/100 rows
  - Export to CSV/Excel

- **📊 User Details**
  - Total games played
  - Highest score achieved
  - Last login timestamp
  - Profile completion status

</details>

<details open>
<summary><b>🔐 Security Management</b></summary>

- **🔑 Change Admin Password**
  - Current password verification
  - New password dengan strength indicator
  - Password confirmation matching
  - Bcrypt encryption untuk security

- **🛡️ Access Control**
  - Role-based authentication
  - Session management
  - Auto-logout pada inactivity
  - CSRF protection

</details>

---

## 📖 Dokumentasi Lengkap

### 🗂️ Struktur Folder

```
wednesday-quiz/
├── 📂 admin/              # Backend admin panel
│   ├── dashboard.php      # Admin dashboard
│   ├── manage_questions.php
│   ├── manage_users.php
│   └── settings.php
│
├── 📂 user/               # Frontend user pages
│   ├── dashboard.php      # User homepage
│   ├── quiz.php           # Quiz gameplay
│   ├── leaderboard.php    # Rankings
│   ├── profil.php         # User profile
│   └── edit_profile.php   # Profile editor
│
├── 📂 asset/              # Static resources
│   ├── 🖼️ background.jpg
│   ├── 🖼️ fontwesnesday.png
│   ├── 🎵 music.mp3
│   ├── 🔤 MetalMania-Regular.ttf
│   ├── 🔤 Risque-Regular.ttf
│   └── 📂 uploads/        # User avatars & question images
│
├── 📂 config/             # Configuration files
│   └── db.php             # Database connection
│
├── 📄 index.php           # Landing page
├── 📄 login.php           # Authentication
├── 📄 register.php        # User registration
├── 📄 logout.php          # Session destroy
├── 📄 confirmation.php    # Quiz confirmation
└── 📄 result.php          # Score display
```

### 🗄️ File Utama

| File | Fungsi | Role Access |
|------|--------|-------------|
| `index.php` | Landing page dengan logo Wednesday | 🌐 Public |
| `login.php` | Halaman autentikasi multi-role | 🌐 Public |
| `register.php` | Form pendaftaran user baru | 🌐 Public |
| `user/dashboard.php` | Homepage user dengan tombol START | 👤 User |
| `user/quiz.php` | Gameplay kuis interaktif | 👤 User |
| `user/leaderboard.php` | Ranking & podium system | 👤 User |
| `user/profil.php` | Profile view & statistics | 👤 User |
| `admin/dashboard.php` | Admin control panel | 👑 Admin |
| `admin/manage_questions.php` | CRUD bank soal | 👑 Admin |

---

## 📸 Alur Demo (Walkthrough)

Berikut adalah **step-by-step guide** untuk demo yang optimal:

### 🎬 Scenario 1: Admin Journey (8-10 menit)

```
1. 🏠 Landing Page (index.php)
   └─> Tampilkan logo Wednesday yang menarik
   
2. 🔐 Login sebagai Admin
   └─> Username: admin | Password: admin123
   
3. 📊 Dashboard Admin
   ├─> Lihat statistik ringkas
   ├─> Total Quiz, Questions, Users
   └─> Quick action buttons
   
4. 📝 Manage Questions
   ├─> 🔍 Lihat daftar soal existing
   ├─> ➕ Klik "Add New Question"
   ├─> 📝 Isi form pertanyaan baru
   │   ├─ Question Text: "Apa warna favorit Wednesday?"
   │   ├─ Option A: "Pink"
   │   ├─ Option B: "Black"
   │   ├─ Option C: "Yellow"
   │   ├─ Option D: "Rainbow"
   │   └─ Correct Answer: B
   ├─> 🖼️ Upload gambar (optional)
   ├─> 💾 Save question
   ├─> ✏️ Edit soal yang baru dibuat
   └─> ✅ Demo complete CRUD operation
   
5. 👥 Manage Users
   ├─> Lihat daftar user registered
   ├─> Check top scorers
   └─> Sort & filter demo
   
6. 🔐 Settings (Optional)
   └─> Demo change password feature
   
7. 🚪 Logout
```

### 🎮 Scenario 2: Player Journey (5-7 menit)

```
1. 🏠 Landing Page
   └─> Click logo untuk ke login
   
2. 📝 Register New Account
   ├─> Isi form registrasi
   │   ├─ Nickname: "Wednesday Addams"
   │   ├─ Username: "wednesday_demo"
   │   ├─ Email: "wednesday@demo.com"
   │   └─ Password: "demo123"
   └─> Submit & auto-redirect to login
   
3. 🔐 Login sebagai User
   └─> Gunakan kredensial yang baru dibuat
   
4. 🎮 User Dashboard
   ├─> 🎵 Toggle background music (ON)
   │   └─ Dengarkan musik Wednesday theme
   ├─> Demo persistent music state
   │   └─ Refresh page, musik tetap ON
   └─> Click "START" button
   
5. ✅ Confirmation Page
   ├─> "ARE YOU READY?" screen
   ├─> Musik tetap playing
   └─> Click "YES" untuk mulai
   
6. 🎯 Quiz Gameplay (HIGHLIGHT)
   ├─> ⏱️ Perhatikan countdown timer (15 detik per soal)
   ├─> 🖼️ Lihat pertanyaan dengan gambar (jika ada)
   ├─> 🎨 Demo visual feedback:
   │   ├─ Klik jawaban benar → Hijau
   │   └─ Klik jawaban salah → Merah
   ├─> ⚡ Jawab beberapa soal dengan cepat (bonus poin)
   ├─> ⏰ Biarkan 1 soal timeout (auto-submit)
   ├─> 💡 Tunjukkan bonus waktu dalam scoring
   └─> 🏁 Selesaikan quiz (15 soal)
   
7. 💯 Result Page
   ├─> Lihat final score dengan format emas
   │   └─ Contoh: "120 pts"
   ├─> Animasi smooth score reveal
   └─> Click "FINISH"
   
8. 🏆 Leaderboard
   ├─> User baru muncul di ranking
   ├─> Demo podium untuk top 3 (🥇🥈🥉)
   ├─> Scroll untuk lihat full list
   └─> Cari nama "wednesday_demo" di list
   
9. 👤 Profile Page
   ├─> Lihat statistik skor terakhir
   ├─> Click edit icon (✏️)
   ├─> Upload avatar baru
   │   └─ Browse file → Choose image → Upload
   └─> Update profile info
       ├─ Birthday: "November 13"
       └─ Location: "Nevermore Academy"
   
10. 🚪 Logout
```
---

## 🗄️ Struktur Database

### 📊 Entity Relationship Diagram (ERD)

```
┌─────────────────┐         ┌─────────────────┐         ┌─────────────────┐
│     USERS       │         │    QUIZZES      │         │   QUESTIONS     │
├─────────────────┤         ├─────────────────┤         ├─────────────────┤
│ • id (PK)       │         │ • id (PK)       │         │ • id (PK)       │
│ • username      │         │ • title         │         │ • quiz_id (FK)  │
│ • email         │◄───┐    │ • max_score     │◄────────│ • question_text │
│ • password      │    │    │ • is_active     │         │ • image_url     │
│ • full_name     │    │    │ • created_at    │         │ • created_at    │
│ • profile_pic   │    │    └─────────────────┘         └─────────────────┘
│ • total_score   │    │                                         │
│ • created_at    │    │                                         │
└─────────────────┘    │                                         ▼
         │             │                              ┌─────────────────┐
         │             │                              │     ANSWERS     │
         │             │                              ├─────────────────┤
         ▼             │                              │ • id (PK)       │
┌─────────────────┐   │                              │ • question_id(FK)│
│  QUIZ_RESULTS   │   │                              │ • answer_text   │
├─────────────────┤   │                              │ • is_correct    │
│ • id (PK)       │   │                              │ • answer_label  │
│ • user_id (FK)  │───┘                              └─────────────────┘
│ • quiz_id (FK)  │
│ • total_score   │
│ • correct_ans   │
│ • completed_at  │
└─────────────────┘
```

### 📋 Tabel Details

<details>
<summary><b>🗂️ Table: users</b></summary>

```sql
CREATE TABLE users (
    id INT(11) PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    full_name VARCHAR(100),
    profile_picture VARCHAR(255) DEFAULT 'profildefault.jpg',
    total_score INT(11) DEFAULT 0,
    quiz_completed INT(11) DEFAULT 0,
    last_played DATETIME,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    INDEX idx_username (username),
    INDEX idx_total_score (total_score DESC)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
```

**Fungsi:** Menyimpan data user, kredensial, dan skor akumulatif

</details>

<details>
<summary><b>🎯 Table: quizzes</b></summary>

```sql
CREATE TABLE quizzes (
    id INT(11) PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(200) NOT NULL,
    description TEXT,
    max_score INT(11) DEFAULT 150,
    total_questions INT(11) DEFAULT 15,
    time_limit INT(11) DEFAULT 15, -- in seconds per question
    is_active TINYINT(1) DEFAULT 1,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
```

**Fungsi:** Konfigurasi quiz (judul, max score, time limit)

</details>

<details>
<summary><b>❓ Table: questions</b></summary>

```sql
CREATE TABLE questions (
    id INT(11) PRIMARY KEY AUTO_INCREMENT,
    quiz_id INT(11) NOT NULL,
    question_text TEXT NOT NULL,
    image_url VARCHAR(255),
    question_order INT(11) DEFAULT 0,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (quiz_id) REFERENCES quizzes(id) ON DELETE CASCADE,
    INDEX idx_quiz_order (quiz_id, question_order)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
```

**Fungsi:** Bank soal dengan support gambar

</details>

<details>
<summary><b>✅ Table: answers</b></summary>

```sql
CREATE TABLE answers (
    id INT(11) PRIMARY KEY AUTO_INCREMENT,
    question_id INT(11) NOT NULL,
    answer_text VARCHAR(500) NOT NULL,
    answer_label ENUM('A', 'B', 'C', 'D') NOT NULL,
    is_correct TINYINT(1) DEFAULT 0,
    FOREIGN KEY (question_id) REFERENCES questions(id) ON DELETE CASCADE,
    INDEX idx_question (question_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
```

**Fungsi:** Opsi jawaban untuk setiap pertanyaan

</details>

<details>
<summary><b>📊 Table: quiz_results</b></summary>

```sql
CREATE TABLE quiz_results (
    id INT(11) PRIMARY KEY AUTO_INCREMENT,
    user_id INT(11) NOT NULL,
    quiz_id INT(11) NOT NULL,
    total_score INT(11) NOT NULL,
    max_score INT(11) NOT NULL,
    correct_answers INT(11) NOT NULL,
    total_questions INT(11) NOT NULL,
    time_taken INT(11), -- in seconds
    completed_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (quiz_id) REFERENCES quizzes(id) ON DELETE CASCADE,
    INDEX idx_user_score (user_id, total_score DESC),
    INDEX idx_completed (completed_at DESC)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
```

**Fungsi:** History hasil kuis setiap user

</details>

---

## 🛠️ Teknologi

### 💻 Tech Stack

<div align="center">

| Layer | Technology | Version | Purpose |
|-------|-----------|---------|---------|
| **Backend** | ![PHP] | 7.4+ | Server-side logic |
| **Database** | ![MySQL] | 5.7+ | Data persistence |
| **Frontend** | ![HTML5] | 5 | Structure |
| **Styling** | ![CSS3] | 3 | Custom design |
| **Scripting** | ![JavaScript]| ES6+ | Interactivity |

</div>

### 🔧 Dependencies & Libraries

**Backend:**
- `mysqli` - Database connection
- `session` - User authentication
- `password_hash` - Security encryption

**Frontend:**
- Vanilla JavaScript (No frameworks)
- Custom CSS (No Bootstrap/Tailwind)
- LocalStorage API untuk music state
- FileReader API untuk avatar upload

### 📦 External Resources

- **Fonts:** 
  - MetalMania (Google Fonts)
  - Risque (Custom font)
- **Icons:** Inline SVG (No icon library)
- **Images:** Custom Wednesday-themed assets

---

## 🔐 Keamanan

### 🛡️ Security Features

- **Password Hashing:** `password_hash()` dengan bcrypt
- **SQL Injection Prevention:** Prepared statements dengan mysqli
- **XSS Protection:** `htmlspecialchars()` pada output
- **CSRF Protection:** Token validation (jika diimplementasikan)
- **Session Security:** 
  - Regenerate session ID on login
  - HTTP-only cookies
  - Secure session storage
- **File Upload Security:**
  - MIME type validation
  - File size limit (2MB)
  - Whitelist extension (.jpg, .png, .gif)
  - Rename uploaded files

### 🔒 Best Practices Implemented

```php
// ✅ GOOD: Prepared Statement
$stmt = $conn->prepare("SELECT * FROM users WHERE username = ?");
$stmt->bind_param('s', $username);

// ❌ BAD: Direct Query (Vulnerable)
$query = "SELECT * FROM users WHERE username = '$username'";

// ✅ GOOD: Password Hashing
$hashed = password_hash($password, PASSWORD_DEFAULT);

// ❌ BAD: Plain Text Password
$password = $_POST['password']; // Stored as-is

// ✅ GOOD: XSS Prevention
echo htmlspecialchars($user_input, ENT_QUOTES, 'UTF-8');

// ❌ BAD: Direct Output
echo $_POST['comment']; // Vulnerable to XSS
```

### 🚨 Security Recommendations

1. **Change Default Credentials** - Ubah password admin default
2. **Enable HTTPS** - Gunakan SSL certificate untuk production
3. **Regular Updates** - Keep PHP dan MySQL up-to-date
4. **Backup Database** - Automated daily backups
5. **Rate Limiting** - Implement untuk prevent brute force
6. **Error Logging** - Log security events tanpa expose ke user
7. **Input Validation** - Server-side validation untuk semua input

---

## ❓ FAQ

<details>
<summary><b>🤔 Bagaimana cara reset password admin jika lupa?</b></summary>

Jalankan query SQL berikut di phpMyAdmin:

```sql
UPDATE users 
SET password = '$2y$10$e0MYzXyjpJS7Pd0RVvHwHu9rnGwHjFIKg4pDv.Wvg.xvPMH5hTDyq'
WHERE username = 'admin';
```

Password akan direset ke: `admin123`

</details>

<details>
<summary><b>📁 Dimana file upload (avatar & gambar soal) disimpan?</b></summary>

Semua file upload disimpan di folder:
- Avatar user: `asset/uploads/profiles/`
- Gambar soal: `asset/uploads/questions/`

Pastikan folder ini memiliki permission `755` atau `777` (development only).

</details>

<details>
<summary><b>🎵 Musik tidak bisa autoplay di browser?</b></summary>

Browser modern memblokir autoplay audio. User harus:
1. Interact dengan page terlebih dahulu (click anywhere)
2. Atau manually toggle music button ON

Ini adalah browser policy, bukan bug aplikasi.

</details>


<details>
<summary><b>📊 Berapa banyak soal yang direkomendasikan untuk satu quiz?</b></summary>

**Recommended:** 10-20 soal per quiz

- **Terlalu sedikit** (<5): Kurang menantang
- **Optimal** (10-20): Balanced gameplay
- **Terlalu banyak** (>30): User fatigue

Durasi ideal: 5-10 menit per session

</details>

<details>
<summary><b>🌐 Apakah aplikasi ini responsive?</b></summary>

Ya! Aplikasi ini sudah responsive dan tested di:
- ✅ Desktop (1920x1080, 1366x768)
- ✅ Tablet (iPad, 768x1024)
- ✅ Mobile (iPhone, 375x667)

Namun untuk quiz gameplay, direkomendasikan gunakan device dengan layar ≥7 inch untuk experience optimal.

</details>

---