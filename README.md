# greenelitepg.com

Official website for **Green Elite PG for Men** — premium paying guest accommodation inside Mahindra World City, Chengalpattu, Tamil Nadu.

## 📂 Project structure

```
.
├── index.html        # Main customer-facing website
├── admin.html        # Internal admin panel (opens from WhatsApp enquiry link)
├── vercel.json       # Vercel deployment & header config
├── robots.txt        # SEO
├── sitemap.xml       # SEO
├── .gitignore
└── images/           # All property photos
```

No build step. Pure static HTML/CSS/JS. Host anywhere.

## 🚀 Deploy to GitHub + Vercel (step-by-step)

### 1. Push to GitHub

Open Terminal in this folder (right-click the folder in Finder → **New Terminal at Folder**).

```bash
# One-time: configure git identity (skip if already set globally)
git config user.name  "Your Name"
git config user.email "your-email@example.com"

# The repo is already initialized. Push to your GitHub:
# Create an empty repo at https://github.com/new  (name it: greenelitepg)
# Then:

git remote add origin https://github.com/<YOUR_USERNAME>/greenelitepg.git
git branch -M main
git push -u origin main
```

### 2. Deploy on Vercel (takes ~1 minute)

1. Go to **https://vercel.com/new**
2. Sign in with GitHub.
3. Click **Import** next to your `greenelitepg` repo.
4. Framework Preset: **Other** (it's plain HTML — no build needed).
5. Root Directory: `./`  · Build Command: **leave empty**  · Output Directory: **leave empty**.
6. Click **Deploy**. You'll get a free URL like `https://greenelitepg-xyz.vercel.app`.

### 3. Attach your custom domain `greenelitepg.com`

On Vercel → Project → **Settings → Domains**:

1. Add `greenelitepg.com` and `www.greenelitepg.com`.
2. Vercel shows you DNS records.
3. Log in to your domain registrar (GoDaddy, Namecheap, Hostinger, etc.) and add the records it shows — typically:
   - `A` record for `@` pointing to `76.76.21.21`
   - `CNAME` for `www` pointing to `cname.vercel-dns.com`
4. Wait 5–30 minutes for DNS to propagate. Vercel issues a free SSL automatically.

Done — `https://greenelitepg.com` is live.

## ✏️ Making future updates

```bash
# Edit files, then:
git add .
git commit -m "Updated tariff"
git push
```

Vercel auto-rebuilds on every push.

## 📱 Enquiry / Admin flow

1. Customer fills the enquiry form on the site.
2. A WhatsApp message is pre-composed with all details + an admin-panel link.
3. Customer taps "Open WhatsApp" and the message is sent to **+91 74879 01390**.
4. Admin (you) tap the link inside WhatsApp → `admin.html` opens showing the full enquiry in a premium dashboard with Call / WhatsApp / Copy / Print buttons.

No backend required.

## 🔑 Key details baked in

| Field | Value |
|---|---|
| Address | No. 199, Near Holiday Inn Express, Nehru Street, Veerapuram, Mahindra World City, Chengalpattu — 603 004 |
| Phone  | +91 78715 57798 · +91 78715 57796 |
| WhatsApp (admin) | +91 74879 01390 |
| Email  | info@greenelitepg.com |
| GSTIN  | 33BPJPR3798R1ZQ |
